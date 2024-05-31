<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::dropIfExists('categories');
        Schema::dropIfExists('products');

        Schema::create('categories', function (Blueprint $table) {
            $table->id('cat_id')->primary();
            $table->string('name')->default();
            $table->timestamps();
        });
        Schema::create('products', function (Blueprint $table) {
            $table->id('product_id')->primary();
            // si se elimina una categoría el campo se pone nulo, por eso la columna se marca como nullable para poder
            // admitir esa constraint
            $table->foreignId('cat_id')->nullable()->references('cat_id')->on('categories')->nullOnDelete();
            $table->string('name');
            $table->decimal('pv',8,2)->default(0);
            $table->decimal('pc',8,2)->default(0);
            $table->string('colors');
            $table->date('purchase_date');
            $table->text('short_desc')->nullable();
            $table->text('long_desc')->nullable();
            $table->timestamps();
        });

    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
        Schema::dropIfExists('categories');
    }
};
