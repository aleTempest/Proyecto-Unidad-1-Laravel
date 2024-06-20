<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provider extends Model
{
    use HasFactory;

    protected $primaryKey = 'prov_id';

    protected $fillable = [
        'name',
        'contact_name',
        'email',
        'phone',
    ];
}
