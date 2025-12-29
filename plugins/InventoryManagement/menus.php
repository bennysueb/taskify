<?php

use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Auth;

return [
    [
        'id' => 'inventory_management',
        'category' => 'utilities',
        'url' => '/inventory-management',
        'icon' => 'bx bx-box',
        'label' => 'Inventory',
        'show' => (Auth::check() && Auth::user()->can('manage_inventory')) ? 1 : 0,
        'class' => Request::is('inventory-management*') ? 'menu-item active' : 'menu-item',
        'order' => 25
    ]
];
