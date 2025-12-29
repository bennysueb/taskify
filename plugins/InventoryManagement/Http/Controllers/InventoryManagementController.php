<?php

namespace Plugins\InventoryManagement\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Plugins\InventoryManagement\Models\InventoryItem;
use Plugins\InventoryManagement\Models\InventoryCategory;
use Plugins\InventoryManagement\Models\InventoryTransaction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Exception;

class InventoryManagementController extends Controller
{
    public function index(Request $request)
    {
        $workspace_id = session('workspace_id');
        $ownership = $request->query('ownership', 'all'); // Default to 'all'

        $query = InventoryItem::where('workspace_id', $workspace_id)
            ->with(['category', 'owner']);

        if ($ownership !== 'all') {
            $query->where('ownership_type', $ownership);
        }

        $items = $query->get();
        $categories = InventoryCategory::where('workspace_id', $workspace_id)->get();
        $users = \App\Models\User::all(); 
        
        return view('inventory-management::index', compact('items', 'categories', 'users', 'ownership'));
    }

    // --- ITEM MANAGEMENT ---


    // --- ITEM MANAGEMENT ---

    public function storeItem(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'sku' => 'nullable|string|max:100', 
            'price_purchase' => 'numeric|min:0',
            'price_sale' => 'numeric|min:0',
            'quantity' => 'numeric|min:0',
            'category_id' => 'nullable|exists:inventory_categories,id',
            'ownership_type' => 'required|in:office,user',
            'owner_user_id' => 'nullable|required_if:ownership_type,user|exists:users,id',
            'condition' => 'required|string'
        ]);

        try {
            DB::beginTransaction();

            $item = InventoryItem::create([
                'workspace_id' => session('workspace_id'),
                'name' => $request->name,
                'sku' => $request->sku,
                'description' => $request->description,
                'category_id' => $request->category_id,
                'unit' => $request->unit ?? 'pcs',
                'price_purchase' => $request->price_purchase ?? 0,
                'price_sale' => $request->price_sale ?? 0,
                'quantity' => $request->quantity ?? 0,
                'ownership_type' => $request->ownership_type,
                'owner_user_id' => $request->ownership_type === 'user' ? $request->owner_user_id : null,
                'condition' => $request->condition
            ]);

            // Initial transaction if quantity > 0
            if ($request->quantity > 0) {
                InventoryTransaction::create([
                    'workspace_id' => session('workspace_id'),
                    'item_id' => $item->id,
                    'user_id' => Auth::id(),
                    'type' => 'IN',
                    'quantity' => $request->quantity,
                    'notes' => 'Initial stock on creation',
                ]);
            }

            DB::commit();

            return response()->json([
                'error' => false,
                'message' => 'Item created successfully.',
                'item' => $item
            ]);

        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['error' => true, 'message' => $e->getMessage()]);
        }
    }

    public function getItem($id)
    {
        $item = InventoryItem::with('category', 'transactions.user', 'owner')->findOrFail($id);
        return response()->json($item);
    }

    public function updateItem(Request $request, $id)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'sku' => 'nullable|string|max:100',
            'ownership_type' => 'required|in:office,user',
            'owner_user_id' => 'nullable|required_if:ownership_type,user|exists:users,id',
            'condition' => 'required|string'
        ]);

        $item = InventoryItem::findOrFail($id);

        $item->update([
            'name' => $request->name,
            'sku' => $request->sku,
            'description' => $request->description,
            'category_id' => $request->category_id,
            'unit' => $request->unit,
            'price_purchase' => $request->price_purchase,
            'price_sale' => $request->price_sale,
            'ownership_type' => $request->ownership_type,
            'owner_user_id' => $request->ownership_type === 'user' ? $request->owner_user_id : null,
            'condition' => $request->condition
        ]);

        return response()->json([
            'error' => false,
            'message' => 'Item updated successfully.'
        ]);
    }

    public function destroyItem($id)
    {
        InventoryItem::findOrFail($id)->delete();
        return response()->json(['error' => false, 'message' => 'Item deleted successfully.']);
    }

    // --- CATEGORY MANAGEMENT ---

    public function storeCategory(Request $request)
    {
        $request->validate(['name' => 'required|string|max:255']);
        
        $category = InventoryCategory::create([
            'workspace_id' => session('workspace_id'),
            'name' => $request->name,
            'description' => $request->description,
            'color' => $request->color ?? 'primary',
        ]);

        return response()->json(['error' => false, 'message' => 'Category created successfully.', 'category' => $category]);
    }

    public function updateCategory(Request $request, $id)
    {
        $request->validate(['name' => 'required|string|max:255']);
        $cat = InventoryCategory::findOrFail($id);
        $cat->update($request->all());
        return response()->json(['error' => false, 'message' => 'Category updated.']);
    }

    public function destroyCategory($id)
    {
        InventoryCategory::findOrFail($id)->delete();
        return response()->json(['error' => false, 'message' => 'Category deleted.']);
    }

    public function getCategory($id)
    {
        return response()->json(InventoryCategory::findOrFail($id));
    }

    // --- STOCK TRANSACTION ---

    public function adjustStock(Request $request, $id)
    {
        $request->validate([
            'quantity' => 'required|numeric|min:0.01',
            'type' => 'required|in:IN,OUT',
        ]);

        try {
            DB::beginTransaction();

            $item = InventoryItem::findOrFail($id);
            $qty = $request->quantity;
            $type = $request->type;

            if ($type === 'OUT' && $item->quantity < $qty) {
                // Determine if we allow negative stock. Usually no.
                throw new Exception("Insufficient stock. Current: {$item->quantity}");
            }

            if ($type === 'IN') {
                $item->increment('quantity', $qty);
            } else {
                $item->decrement('quantity', $qty);
            }

            InventoryTransaction::create([
                'workspace_id' => session('workspace_id'),
                'item_id' => $item->id,
                'user_id' => Auth::id(),
                'type' => $type,
                'quantity' => $qty,
                'notes' => $request->notes ?? 'Manual Adjustment',
            ]);

            DB::commit();

            return response()->json(['error' => false, 'message' => 'Stock updated successfully.']);

        } catch (Exception $e) {
            DB::rollBack();
            return response()->json(['error' => true, 'message' => $e->getMessage()]);
        }
    }

    public function exportPdf(Request $request) 
    {
        $workspace_id = session('workspace_id');
        $ownership = $request->query('ownership', 'all');

        $query = InventoryItem::where('workspace_id', $workspace_id)
            ->with(['category', 'owner']);

        if ($ownership !== 'all') {
            $query->where('ownership_type', $ownership);
        }

        $items = $query->get();
            
        $data = [
            'items' => $items,
            'ownership' => $ownership,
            'title' => 'Inventory Report - ' . ucfirst($ownership)
        ];

        // Assuming Barryvdh\DomPDF is installed. If not, this might error. 
        // We will try standard view loading.
        $pdf = app('dompdf.wrapper');
        $pdf->loadView('inventory-management::pdf_export', $data);
        return $pdf->download('inventory-report-'.date('Y-m-d').'.pdf');
    }
}
