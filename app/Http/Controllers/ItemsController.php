<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreInventoryRequest;
use App\Http\Requests\UpdateInventoryRequest;
use App\Models\Items;
use App\Models\Product;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ItemsController extends Controller
{
    public function index(): View
    {
        return view('inventory.index', [
            'inventory' => Items::all()
        ]);
    }

    public function create(Items $inventory): View
    {
        $products = Product::all();
        return view('inventory.create', compact('inventory', 'products'));
    }

    public function show(Items $item): View
    {
        $products = Product::all();
        return view('inventory.show', compact('item', 'products'));
    }

    public function edit(Items $inventory): View
    {
        $products = Product::all();
        return view('inventory.edit', compact('inventory', 'products'));
    }

    public function update(UpdateInventoryRequest $request, Items $inventory): RedirectResponse
    {
        $inventory->update($request->validated());
        return redirect()->route('inventory.index');
    }

    public function destroy(Items $inventory): RedirectResponse
    {
        $inventory->delete();
        return redirect()->route('inventory.index');
    }

    public function store(StoreInventoryRequest $request): RedirectResponse
    {
        Items::create($request->validated());
        return redirect()->route('inventory.index');
    }
}
