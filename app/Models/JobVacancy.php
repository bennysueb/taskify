<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class JobVacancy extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'slug',
        'workspace_id',
        'division_id',
        'description',
        'short_description',
        'requirements',
        'location',
        'type',
        'start_date',
        'end_date',
        'status',
        'apply_link'
    ];

    public function division()
    {
        return $this->belongsTo(Division::class);
    }

    public function candidates()
    {
        return $this->hasMany(Candidate::class);
    }

    public function workspace()
    {
        return $this->belongsTo(Workspace::class);
    }
}
