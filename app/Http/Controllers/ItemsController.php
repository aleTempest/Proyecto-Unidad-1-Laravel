<?php

namespace App\Http\Controllers;

use App\Models\Items;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;
use App\Http\Requests\UpdateItemRequest;
use App\Http\Requests\StoreItemRequest;

class ItemsController extends Controller
{
    public function index(): View
    {
        return view('items.index', [
            'items' => Items::all()
        ]);
    }
    
    // Redirige al formulario para registrar un item
    public function create(): View
    {
        $products = Product::all();
        return view('items.create', compact('products'));
    }
    
    // Acepta un Item del inventario y lo elimina, después redirige al index del inventario
    public function destroy(Items $item): RedirectResponse
    {
        $item->delete();
        return redirect()->route('items.index')
            ->withSuccess('New item updated');
    }
    
    // Editar un item del inventario
    public function edit(Items $item): View
    {
        $products = Product::all();
        return view('items.edit', compact('item', 'products'));
    }
    
    // Mostrar los datos
    public function show(Items $item): View
    {
        $products = Product::all();
        return view('items.show', compact('item','products'));
    }
    
    // Guardar un nuevo item en el inventario
    public function store(StoreItemRequest $request): RedirectResponse
    {
        Items::create($request->validated());
        return redirect()->route('items.index')
            ->withSuccess('New item updated');
    }
    
    public function update(UpdateItemRequest $request, Items $item): RedirectResponse
    {
        $item->update($request->validated());
        return redirect()->route('items.index')
            ->withSuccess('New item updated');

    }
}
