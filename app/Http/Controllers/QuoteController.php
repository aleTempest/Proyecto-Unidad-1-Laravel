<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProviderRequest;
use App\Http\Requests\StoreQuoteRequest;
use App\Http\Requests\UpdateQuoteRequest;
use App\Models\Client;
use App\Models\Product;
use App\Models\Quote;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class QuoteController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $quotes = Quote::with(['product', 'client'])->get();
        return view('quotes.index', compact('quotes'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        $products = Product::all();
        $clients = Client::all();
        return view('quotes.create', compact('products', 'clients'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreQuoteRequest $request): RedirectResponse
    {
        Quote::create($request->validated());
        return to_route('quotes.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Quote $quote): View
    {
        return view('quotes.show', compact('quote'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Quote $quote): View
    {
        $products = Product::all();
        $clients = Client::all();
        return view('quotes.edit', compact('quote', 'products', 'clients'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateQuoteRequest $request, Quote $quote): RedirectResponse
    {
        $quote->update($request->validated());
        return to_route('quotes.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Quote $quote): RedirectResponse
    {
        $quote->delete();
        return to_route('quotes.index');
    }
}
