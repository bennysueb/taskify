<?php

namespace Plugins\InventoryManagement\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Workspace;

class InventoryItem extends Model
{
    protected $table = 'inventory_items';

    protected $fillable = [
        'workspace_id',
        'category_id',
        'name',
        'sku',
        'description',
        'quantity',
        'unit',
        'price_purchase',
        'price_sale',
        'image',
        'ownership_type',
        'owner_user_id',
        'condition'
    ];

    public function category()
    {
        return $this->belongsTo(InventoryCategory::class, 'category_id');
    }

    public function owner()
    {
        return $this->belongsTo(User::class, 'owner_user_id');
    }

    public function transactions()
    {
        return $this->hasMany(InventoryTransaction::class, 'item_id');
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }
}
