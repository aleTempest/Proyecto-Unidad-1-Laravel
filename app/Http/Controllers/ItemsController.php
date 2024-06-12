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
    
    public function create(): View
    {
        $products = Product::all();
        return view('items.create', compact('products'));
    }
    
    public function destroy(Items $item): RedirectResponse
    {
        $item->delete();
        return to_route('items.index');
    }
    
    public function edit(Items $item): View
    {
        $products = Product::all();
        return view('items.edit', compact('item', 'products'));
    }
    
    public function show(Items $item): View
    {
        $products = Product::all();
        return view('items.show', compact('item','products'));
    }
    
    public function store(StoreItemRequest $request): RedirectResponse
    {
        Items::create($request->validated());
        return to_route('items.index');
    }
    
    public function update(UpdateItemRequest $request, Items $item): RedirectResponse
    {
        $item->update($request->validated());
        return to_route('items.index');
    }
}
