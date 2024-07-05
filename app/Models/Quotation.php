<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Quotation extends Model
{
    use HasFactory;

    protected $primaryKey = 'id';

    protected $fillable = [
        'id_product',
        'id_client',
        'quotation_date',
        'validity',
        'comments'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'id_product');
    }

    public function client()
    {
        return $this->belongsTo(Client::class, 'id_client');
    }
}

