<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Quote extends Model
{
    use HasFactory;
    protected $fillable = [
        'product_id',
        'client_id',
        'quote_date',
        'validity',
        'comments',
    ];
}
