<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Shopping extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';
    protected $fillable = [
        'id_supp',
        'id_product',
        'amount',
        'price',
        'purchase_date',
        'discount',
    ];

    public function supplier() : BelongsTo
    {
        return $this->belongsTo(Supplier::class, 'id_supp');
    }

    public function product() : BelongsTo
    {
        return $this->belongsTo(Product::class, 'id_product');
    }
}
