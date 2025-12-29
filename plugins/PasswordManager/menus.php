<?php

use Illuminate\Support\Facades\Request;

return [
    [
        'id' => 'password_manager',
        'category' => 'utilities',
        'url' => '/password-manager',
        'icon' => 'bx bx-lock-alt',
        'label' => 'Password Manager',
        'show' => (\Illuminate\Support\Facades\Auth::check() && \Illuminate\Support\Facades\Auth::user()->can('manage_password_manager')) ? 1 : 0,
        'class' => Request::is('password-manager*') ? 'menu-item active' : 'menu-item',
    ]
];
