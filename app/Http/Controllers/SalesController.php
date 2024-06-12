<?php

namespace App\Http\Controllers;

use App\Models\Sale;
use App\Models\Product;
use App\Models\Client;
use App\Http\Requests\StoreSaleRequest;
use App\Http\Requests\UpdateSaleRequest;
use Illuminate\View\View;
use Illuminate\Http\RedirectResponse;

class SalesController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        return view('sales.index', [
            'sales' => Sale::all()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        $products = Product::all();
        $clients = Client::all();
        return view('sales.create', compact('products', 'clients'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreSaleRequest $request): RedirectResponse
    {
        Sale::create($request->validated());
        return to_route('sales.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Sale $sale): View
    {
        $products = Product::all();
        $clients = Client::all();
        return view('sales.show', compact('sale', 'products', 'clients'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Sale $sale): View
    {
        $products = Product::all();
        $clients = Client::all();
        return view('sales.edit', compact('sale', 'products', 'clients'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateSaleRequest $request, Sale $sale): RedirectResponse
    {
        $sale->update($request->validated());

        return to_route('sales.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Sale $sale): RedirectResponse
    {
        $sale->delete();
        return to_route('sales.index');
    }
}