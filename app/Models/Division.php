<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Division extends Model
{
    protected $fillable = [
        'workspace_id',
        'title',
    ];

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }

    public function users()
    {
        return $this->hasMany(User::class);
    }

    public function contracts()
    {
        return $this->hasMany(Contract::class);
    }

    public function candidates()
    {
        return $this->hasMany(Candidate::class);
    }

    public function payslips()
    {
        return $this->hasMany(Payslip::class);
    }
}
