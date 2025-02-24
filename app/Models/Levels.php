<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Levels extends Model
{
    use HasFactory;

    protected $fillable = [

        'id_user',
        'level_name',
    ];

    protected $table = 'levels';

    public function levels()
    {
        return $this->belongsTo(User::class, 'id_user', 'id');
    }
}
