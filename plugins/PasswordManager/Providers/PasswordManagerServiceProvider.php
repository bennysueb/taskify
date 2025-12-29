<?php

namespace Plugins\PasswordManager\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;

class PasswordManagerServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        $this->loadRoutesFrom(__DIR__ . '/../routes/web.php');
        $this->loadViewsFrom(__DIR__ . '/../resources/views', 'password-manager');
        $this->loadMigrationsFrom(__DIR__ . '/../Database/Migrations');
    }
}
