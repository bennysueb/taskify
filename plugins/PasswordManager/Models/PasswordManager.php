<?php

namespace Plugins\PasswordManager\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Workspace;

class PasswordManager extends Model
{
    protected $table = 'password_managers';

    protected $fillable = [
        'workspace_id',
        'user_id',
        'title',
        'username',
        'password',
        'url',
        'description',
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }
}
