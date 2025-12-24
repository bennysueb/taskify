<?php

namespace App\Http\Controllers;

use App\Models\Workspace;
use App\Models\Division;
use Illuminate\Http\Request;
use App\Services\DeletionService;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\ValidationException;

class DivisionsController extends Controller
{
    protected $workspace;
    protected $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {
            $this->workspace = Workspace::find(getWorkspaceId());
            $this->user = getAuthenticatedUser();
            return $next($request);
        });
    }

    public function index(Request $request)
    {
        if (!checkPermission('manage_divisions')) {
            return redirect()->route('home')->with('error', 'You do not have permission to access this page.');
        }
        $divisions = Division::where('workspace_id', $this->workspace->id)->count();
        return view('divisions.list', ['divisions' => $divisions]);
    }

    public function store(Request $request)
    {
        if (!checkPermission('create_divisions')) {
            return response()->json(['error' => true, 'message' => 'You do not have permission to create divisions.']);
        }
        try {
            $formFields = $request->validate([
                'title' => 'required|string|max:255',
            ]);
            $formFields['workspace_id'] = $this->workspace->id;

            $division = Division::create($formFields);

            return response()->json(['error' => false, 'message' => 'Division created successfully.', 'id' => $division->id]);
        } catch (ValidationException $e) {
            return response()->json(['error' => true, 'message' => $e->errors()]);
        } catch (Exception $e) {
            return response()->json(['error' => true, 'message' => 'An error occurred while creating the division.']);
        }
    }

    public function list()
    {
        if (!checkPermission('manage_divisions')) {
             return response()->json(['error' => true, 'message' => 'You do not have permission to access this page.']);
        }
        $search = request('search');
        $sort = (request('sort')) ? request('sort') : "id";
        $order = (request('order')) ? request('order') : "DESC";

        $divisions = Division::where('workspace_id', $this->workspace->id);

        if ($search) {
            $divisions = $divisions->where('title', 'like', '%' . $search . '%');
        }

        $total = $divisions->count();
        $divisions = $divisions->orderBy($sort, $order)
            ->paginate(request("limit"))
            ->through(function ($division) {
                $actions = '';
                
                if (checkPermission('edit_divisions')) {
                    $actions .= '<a href="javascript:void(0);" class="edit-division" data-id="' . $division->id . '" title="' . get_label('update', 'Update') . '">' .
                        '<i class="bx bx-edit mx-1"></i>' .
                        '</a>';
                }
                
                if (checkPermission('delete_divisions')) {
                    $actions .= '<button title="' . get_label('delete', 'Delete') . '" type="button" class="btn delete" data-id="' . $division->id . '" data-type="divisions">' .
                        '<i class="bx bx-trash text-danger mx-1"></i>' .
                        '</button>';
                }

                return [
                    'id' => $division->id,
                    'title' => $division->title,
                    'created_at' => format_date($division->created_at, true),
                    'updated_at' => format_date($division->updated_at, true),
                    'actions' => $actions,
                ];
            });

        return response()->json([
            "rows" => $divisions->items(),
            "total" => $total,
        ]);
    }

    public function get($id)
    {
        $division = Division::findOrFail($id);
        return response()->json(['division' => $division]);
    }

    public function update(Request $request)
    {
        if (!checkPermission('edit_divisions')) {
            return response()->json(['error' => true, 'message' => 'You do not have permission to edit divisions.']);
        }
        try {
            $formFields = $request->validate([
                'title' => 'required|string|max:255',
            ]);
            $division = Division::findOrFail($request->id);
            $division->update($formFields);

            return response()->json(['error' => false, 'message' => 'Division updated successfully.', 'id' => $division->id]);
        } catch (Exception $e) {
            return response()->json(['error' => true, 'message' => 'An error occurred while updating the division.']);
        }
    }

    public function destroy($id)
    {
        if (!checkPermission('delete_divisions')) {
            return response()->json(['error' => true, 'message' => 'You do not have permission to delete divisions.']);
        }
        // Handle dependencies if any (e.g., set user's division_id to null)
        // The foreign key constraint 'set null' handles this for users, contracts, etc.
        return DeletionService::delete(Division::class, $id, 'Division');
    }

    public function destroy_multiple(Request $request)
    {
        if (!checkPermission('delete_divisions')) {
            return response()->json(['error' => true, 'message' => 'You do not have permission to delete divisions.']);
        }
        $validatedData = $request->validate([
            'ids' => 'required|array',
            'ids.*' => 'integer|exists:divisions,id'
        ]);
        $ids = $validatedData['ids'];
        $deletedIds = [];
        foreach ($ids as $id) {
            $division = Division::findOrFail($id);
            $deletedIds[] = $id;
            DeletionService::delete(Division::class, $id, 'Division');
        }
        return response()->json(['error' => false, 'message' => 'Division(s) deleted successfully.', 'id' => $deletedIds]);
    }
}
