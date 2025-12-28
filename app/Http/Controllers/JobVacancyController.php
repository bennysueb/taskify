<?php

namespace App\Http\Controllers;

use App\Models\JobVacancy;
use App\Models\Division;
use App\Models\Workspace;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Session;

class JobVacancyController extends Controller
{
    public function index()
    {
        $jobVacancies = JobVacancy::where('workspace_id', getWorkspaceId())->with('division')->get();
        return view('job_vacancies.index', compact('jobVacancies'));
    }

    public function create()
    {
        $divisions = Division::where('workspace_id', getWorkspaceId())->get();
        return view('job_vacancies.create', compact('divisions'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'division_id' => 'nullable|exists:divisions,id',
            'type' => 'required|string',
            'location' => 'nullable|string',
            'start_date' => 'nullable|date',
            'end_date' => 'nullable|date|after_or_equal:start_date',
            'status' => 'required|in:active,inactive,draft',
            'description' => 'required|string',
            'short_description' => 'nullable|string',
            'requirements' => 'nullable|string',
            'apply_link' => 'nullable|url'
        ]);

        $input = $request->all();
        $input['workspace_id'] = getWorkspaceId();
        
        // Generate Slug
        $slug = Str::slug($input['title']);
        $count = JobVacancy::where('slug', $slug)->count();
        if ($count > 0) {
            $slug .= '-' . time();
        }
        $input['slug'] = $slug;

        JobVacancy::create($input);

        Session::flash('message', 'Job Vacancy created successfully.');
        return response()->json(['error' => false, 'message' => 'Job Vacancy created successfully.']);
    }

    public function edit($id)
    {
        $jobVacancy = JobVacancy::findOrFail($id);
        $divisions = Division::where('workspace_id', getWorkspaceId())->get();
        return view('job_vacancies.edit', compact('jobVacancy', 'divisions'));
    }

    public function update(Request $request, $id)
    {
         $request->validate([
            'title' => 'required|string|max:255',
            'division_id' => 'nullable|exists:divisions,id',
            'type' => 'required|string',
            'location' => 'nullable|string',
            'start_date' => 'nullable|date',
            'end_date' => 'nullable|date|after_or_equal:start_date',
            'status' => 'required|in:active,inactive,draft',
            'description' => 'required|string',
            'short_description' => 'nullable|string',
            'requirements' => 'nullable|string',
            'apply_link' => 'nullable|url'
        ]);

        $jobVacancy = JobVacancy::findOrFail($id);
        $jobVacancy->update($request->all());

        Session::flash('message', 'Job Vacancy updated successfully.');
        return response()->json(['error' => false, 'message' => 'Job Vacancy updated successfully.']);
    }

    public function destroy($id)
    {
        $jobVacancy = JobVacancy::findOrFail($id);
        $jobVacancy->delete();
        return response()->json(['error' => false, 'message' => 'Job Vacancy deleted successfully.']);
    }
}
