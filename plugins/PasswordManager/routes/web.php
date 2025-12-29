<?php

use Illuminate\Support\Facades\Route;
use Plugins\PasswordManager\Http\Controllers\PasswordManagerController;

Route::middleware(['web', 'auth', 'has_workspace'])->group(function () {
    Route::get('/password-manager', [PasswordManagerController::class, 'index'])->name('password_manager.index');
    Route::post('/password-manager/store', [PasswordManagerController::class, 'store'])->name('password_manager.store');
    Route::get('/password-manager/get/{id}', [PasswordManagerController::class, 'get'])->name('password_manager.get');
    Route::post('/password-manager/update', [PasswordManagerController::class, 'update'])->name('password_manager.update');
    Route::delete('/password-manager/destroy/{id}', [PasswordManagerController::class, 'destroy'])->name('password_manager.destroy');
});
