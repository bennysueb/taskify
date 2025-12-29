<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToInventoryItemsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('inventory_items', function (Blueprint $table) {
            // Remove Low Stock Threshold if exists (can use dropColumn in separate stmt if preferred, or ignore)
            // But user asked to remove field from UI/Logic mainly. Dropping form DB is cleaner.
            if (Schema::hasColumn('inventory_items', 'low_stock_threshold')) {
                $table->dropColumn('low_stock_threshold');
            }

            // Add ownership type: 'office' or 'user'
            $table->enum('ownership_type', ['office', 'user'])->default('office')->after('category_id');
            
            // Add user_id reference for ownership (nullable if office)
            $table->unsignedBigInteger('owner_user_id')->nullable()->after('ownership_type');

            // Add Item Condition
            $table->string('condition')->default('good')->after('quantity'); 
            // Conditions: good (Baik), damaged (Rusak), sold (Dijual/Terjual), lost (Hilang), maintenance (Perbaikan)

            $table->foreign('owner_user_id')->references('id')->on('users')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('inventory_items', function (Blueprint $table) {
            $table->integer('low_stock_threshold')->default(5); // Restoration
            $table->dropForeign(['owner_user_id']);
            $table->dropColumn(['owner_user_id', 'ownership_type', 'condition']);
        });
    }
}
