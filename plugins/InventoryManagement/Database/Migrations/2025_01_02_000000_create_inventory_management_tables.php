<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class CreateInventoryManagementTables extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // 1. Categories Table
        Schema::create('inventory_categories', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('workspace_id');
            $table->string('name');
            $table->text('description')->nullable();
            $table->string('color')->default('primary');
            $table->timestamps();
        });

        // 2. Items Table
        Schema::create('inventory_items', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('workspace_id');
            $table->unsignedBigInteger('category_id')->nullable();
            $table->string('name');
            $table->string('sku')->nullable();
            $table->text('description')->nullable();
            $table->decimal('quantity', 10, 2)->default(0);
            $table->string('unit')->default('pcs'); // e.g., pcs, kg, liters
            $table->decimal('price_purchase', 15, 2)->default(0);
            $table->decimal('price_sale', 15, 2)->default(0);
            $table->integer('low_stock_threshold')->default(5);
            $table->string('image')->nullable();
            $table->timestamps();

            $table->foreign('category_id')->references('id')->on('inventory_categories')->onDelete('set null');
        });

        // 3. Transactions/History Table
        Schema::create('inventory_transactions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('workspace_id');
            $table->unsignedBigInteger('item_id');
            $table->unsignedBigInteger('user_id');
            $table->enum('type', ['IN', 'OUT', 'ADJUSTMENT'])->default('IN');
            $table->decimal('quantity', 10, 2);
            $table->text('notes')->nullable();
            $table->timestamps();

            $table->foreign('item_id')->references('id')->on('inventory_items')->onDelete('cascade');
        });

        // 4. Permissions
        $permissions = [
            'manage_inventory',
            'create_inventory',
            'edit_inventory',
            'delete_inventory',
        ];

        $adminRole = Role::where('name', 'admin')->first();

        foreach ($permissions as $permission) {
            if (!Permission::where('name', $permission)->exists()) {
                $perm = Permission::create(['name' => $permission, 'guard_name' => 'web']);
                if ($adminRole) {
                    $adminRole->givePermissionTo($perm);
                }
            }
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('inventory_transactions');
        Schema::dropIfExists('inventory_items');
        Schema::dropIfExists('inventory_categories');

        $permissions = [
            'manage_inventory',
            'create_inventory',
            'edit_inventory',
            'delete_inventory',
        ];

        foreach ($permissions as $permission) {
            Permission::where('name', $permission)->delete();
        }
    }
}
