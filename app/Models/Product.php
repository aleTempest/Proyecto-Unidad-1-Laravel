<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Product extends Model
{
    use HasFactory;

    protected $primaryKey = 'product_id';
    protected $fillable = [
        'cat_id',
        'name',
        'colors',
        'purchase_date',
        'pv',
        'pc',
        'short_desc',
        'long_desc'
    ];

    public function category() : BelongsTo
    {
        return $this->belongsTo(Category::class, 'cat_id');
    }
}
