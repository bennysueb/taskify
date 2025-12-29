<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('password_managers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('workspace_id');
            $table->unsignedBigInteger('user_id');
            $table->string('title');
            $table->string('username')->nullable();
            $table->text('password'); // Will be encrypted
            $table->string('url')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
        });

        // Add Permissions
        $permissions = [
            'manage_password_manager',
            'create_password_manager',
            'edit_password_manager',
            'delete_password_manager'
        ];

        // Ensure Admin role gets these permissions
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
     */
    public function down(): void
    {
        Schema::dropIfExists('password_managers');
        
        $permissions = [
            'manage_password_manager',
            'create_password_manager',
            'edit_password_manager',
            'delete_password_manager'
        ];

        foreach ($permissions as $permission) {
            Permission::where('name', $permission)->delete();
        }
    }
};
