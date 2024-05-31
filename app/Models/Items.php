<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;

class Items extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';
    protected $fillable = [
        'product_id',
        'in_date',
        'out_date',
    ];

    public function products(): HasMany
    {
        return $this->hasMany(Product::class);
    }
}
