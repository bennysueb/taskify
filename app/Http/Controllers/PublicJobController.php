<?php

namespace App\Http\Controllers;

use App\Models\JobVacancy;
use App\Models\Candidate;
use App\Models\CustomField;
use App\Models\CustomFieldable;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class PublicJobController extends Controller
{
    public function index()
    {
        $jobs = JobVacancy::where('status', 'active')
            ->where(function ($q) {
                $q->whereNull('end_date')
                    ->orWhere('end_date', '>=', now());
            })
            ->with(['division', 'workspace'])
            ->orderBy('created_at', 'desc')
            ->get();

        return view('job_vacancies.public.index', compact('jobs'));
    }

    public function show($slug)
    {
        $job = JobVacancy::where('slug', $slug)
            ->where('status', 'active')
            ->firstOrFail();

        return view('job_vacancies.public.show', compact('job'));
    }

    public function apply($slug)
    {
        $job = JobVacancy::where('slug', $slug)
            ->where('status', 'active')
            ->firstOrFail();

        $customFields = CustomField::where('module', 'candidate')->where('visibility', '1')->get();

        return view('job_vacancies.public.apply', compact('job', 'customFields'));
    }

    public function storeApplication(Request $request, $slug)
    {
        $job = JobVacancy::where('slug', $slug)->firstOrFail();

        // Basic Validation
        $rules = [
            'first_name' => 'required|string|max:100',
            'last_name' => 'required|string|max:100',
            'email' => 'required|email|max:255',
            'phone' => 'required|string|max:20',
            'resume' => 'required|file|mimes:pdf,doc,docx|max:25120', // 25MB
        ];

        // Custom Fields Validation logic could be complex, skipping rigid validation for dynamic fields for now 
        // or iterate and add rules based on $customField->required

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json(['error' => true, 'message' => $validator->errors()->first(), 'errors' => $validator->errors()]);
        }

        DB::beginTransaction();
        try {
            // Check if candidate exists? Maybe not, allow duplicates for different jobs?
            // "Taskify" usually implies internal workspace usage, but for public application, we create a candidate.

            $candidate = new Candidate();
            $candidate->name = $request->first_name . ' ' . $request->last_name;
            $candidate->email = $request->email;
            $candidate->phone = $request->phone;
            $candidate->job_vacancy_id = $job->id;
            $candidate->division_id = $job->division_id;
            $candidate->source = 'Job Board';
            // Set default status? Need to find a default status.
            $defaultStatus = \App\Models\CandidateStatus::orderBy('order')->first();
            $candidate->status_id = $defaultStatus ? $defaultStatus->id : null;
            $candidate->position = $job->title;
            $candidate->save();

            // Handle Resume Upload
            if ($request->hasFile('resume')) {
                $candidate->addMedia($request->file('resume'))
                    ->toMediaCollection('candidate-media');
            }

            // Handle Custom Fields
            $customFields = CustomField::where('module', 'candidate')->get();
            foreach ($customFields as $field) {
                $fieldName = 'custom_field_' . $field->id;
                if ($request->has($fieldName)) {
                    $val = $request->input($fieldName);
                    if (is_array($val)) {
                        $val = json_encode($val);
                    }

                    CustomFieldable::create([
                        'custom_field_id' => $field->id,
                        'custom_fieldable_id' => $candidate->id,
                        'custom_fieldable_type' => Candidate::class,
                        'value' => $val
                    ]);
                }
            }

            // Send notification to candidate
            $candidate->notify(new \App\Notifications\JobApplicationReceived($job, $candidate));

            DB::commit();
            return response()->json(['error' => false, 'message' => 'Application submitted successfully!']);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['error' => true, 'message' => 'Something went wrong: ' . $e->getMessage()]);
        }
    }
}
