<?php

use Illuminate\Support\Facades\Route;
use Plugins\InventoryManagement\Http\Controllers\InventoryManagementController;

Route::middleware(['web', 'auth', 'has_workspace'])->group(function () {
    
    // Main View
    Route::get('inventory-management', [InventoryManagementController::class, 'index'])
        ->name('inventory.index')
        ->middleware('customcan:manage_inventory');

    // Items
    Route::post('inventory-management/store', [InventoryManagementController::class, 'storeItem'])
        ->middleware('customcan:create_inventory');
        
    Route::get('inventory-management/get/{id}', [InventoryManagementController::class, 'getItem'])
        ->middleware('customcan:manage_inventory');
        
    Route::put('inventory-management/update/{id}', [InventoryManagementController::class, 'updateItem'])
        ->middleware('customcan:edit_inventory');
        
    Route::delete('inventory-management/delete/{id}', [InventoryManagementController::class, 'destroyItem'])
        ->middleware('customcan:delete_inventory');

    Route::get('inventory-management/export/pdf', [InventoryManagementController::class, 'exportPdf'])
        ->middleware('customcan:manage_inventory');

    // Stock Adjustment
    Route::post('inventory-management/stock/{id}', [InventoryManagementController::class, 'adjustStock'])
        ->middleware('customcan:edit_inventory');

    // Categories
    Route::post('inventory-management/categories/store', [InventoryManagementController::class, 'storeCategory'])
        ->middleware('customcan:create_inventory');
        
    Route::get('inventory-management/categories/get/{id}', [InventoryManagementController::class, 'getCategory'])
        ->middleware('customcan:manage_inventory');

    Route::put('inventory-management/categories/update/{id}', [InventoryManagementController::class, 'updateCategory'])
        ->middleware('customcan:edit_inventory');
        
    Route::delete('inventory-management/categories/delete/{id}', [InventoryManagementController::class, 'destroyCategory'])
        ->middleware('customcan:delete_inventory');

});
