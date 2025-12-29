<?php

namespace Plugins\InventoryManagement\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Workspace;

class InventoryCategory extends Model
{
    protected $table = 'inventory_categories';

    protected $fillable = [
        'workspace_id',
        'name',
        'description',
        'color',
    ];

    public function items()
    {
        return $this->hasMany(InventoryItem::class, 'category_id');
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }
}
