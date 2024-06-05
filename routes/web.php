<?php

use App\Http\Controllers\ItemsController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ClientController;
use App\Http\Controllers\SalesController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

// Todas las rutas relacionadas con el CRUD van dentro de un Auth
Route::middleware('auth')->group(function () {
    Route::resource('products', ProductsController::class);
    Route::resource('categories', CategoryController::class);
    Route::resource('items', ItemsController::class);
    Route::resource('clients', ClientController::class);
    Route::resource('sales', SalesController::class);
});

require __DIR__.'/auth.php';
