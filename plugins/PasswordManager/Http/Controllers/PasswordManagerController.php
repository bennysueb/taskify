<?php

namespace Plugins\PasswordManager\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Session;
use Plugins\PasswordManager\Models\PasswordManager;

class PasswordManagerController extends Controller
{
    public function index()
    {
        $passwordManagers = PasswordManager::where('workspace_id', session('workspace_id'))
            ->get(); // Don't expose passwords in the list view, or decrypt them there.
                     // Better security: don't decrypt until requested. 
                     // But for this MVP, we might display them hidden or something.
                     // I'll leave them encrypted in the collection and only decrypt in 'get' or separate call.

        return view('password-manager::index', ['passwordManagers' => $passwordManagers]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string|max:255',
            'username' => 'nullable|string|max:255',
            'password' => 'required|string',
            'url' => 'nullable|url',
        ]);

        $passwordManager = new PasswordManager();
        $passwordManager->workspace_id = session('workspace_id');
        $passwordManager->user_id = auth()->id();
        $passwordManager->title = $request->title;
        $passwordManager->username = $request->username;
        $passwordManager->password = Crypt::encryptString($request->password);
        $passwordManager->url = $request->url;
        $passwordManager->description = $request->description;
        $passwordManager->save();

        return response()->json([
            'error' => false,
            'message' => 'Password stored successfully.',
        ]);
    }

    public function get($id)
    {
        $passwordManager = PasswordManager::findOrFail($id);
        
        // Decrypt password for the edit form
        $passwordManager->password = Crypt::decryptString($passwordManager->password);

        return response()->json([
            'error' => false,
            'data' => $passwordManager,
        ]);
    }

    public function update(Request $request)
    {
        $request->validate([
            'id' => 'required|exists:password_managers,id',
            'title' => 'required|string|max:255',
            'username' => 'nullable|string|max:255',
            'password' => 'required|string',
            'url' => 'nullable|url',
        ]);

        $passwordManager = PasswordManager::findOrFail($request->id);
        $passwordManager->title = $request->title;
        $passwordManager->username = $request->username;
        $passwordManager->password = Crypt::encryptString($request->password); // Re-encrypt
        $passwordManager->url = $request->url;
        $passwordManager->description = $request->description;
        $passwordManager->save();

        return response()->json([
            'error' => false,
            'message' => 'Password updated successfully.',
        ]);
    }

    public function destroy($id)
    {
        $passwordManager = PasswordManager::findOrFail($id);
        $passwordManager->delete();

        return response()->json([
            'error' => false,
            'message' => 'Password deleted successfully.',
        ]);
    }
}
