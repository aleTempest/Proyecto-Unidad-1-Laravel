<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;

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

    // Relación de uno a uno, un producto tiene una categoría
    public function category() : HasOne
    {
        return $this->hasOne(Category::class, 'cat_id');
    }
}
