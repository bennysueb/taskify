<?php

namespace Plugins\InventoryManagement\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Workspace;

class InventoryTransaction extends Model
{
    protected $table = 'inventory_transactions';

    protected $fillable = [
        'workspace_id',
        'item_id',
        'user_id',
        'type',
        'quantity',
        'notes',
    ];

    public function item()
    {
        return $this->belongsTo(InventoryItem::class, 'item_id');
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }
    
    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }
}
