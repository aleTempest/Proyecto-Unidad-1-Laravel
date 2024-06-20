<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreProviderRequest;
use App\Http\Requests\UpdateProviderRequest;
use App\Models\Provider;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class ProviderController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(): View
    {
        $providers = Provider::all();
        return view('providers.index', compact('providers'));
    }

        /**
     * Show the form for creating a new resource.
     */
    public function create(): View
    {
        return view('providers.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProviderRequest $request): RedirectResponse
    {
        Provider::create($request->validated());
        return to_route('providers.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(Provider $provider): View
    {
        return view('providers.show', compact('provider'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Provider $provider): View
    {
        return view('providers.edit', compact('provider'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProviderRequest $request, Provider $provider): RedirectResponse
    {
        $provider->update($request->validated());
        return to_route('providers.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Provider $provider): RedirectResponse
    {
        $provider->delete();
        return to_route('providers.index');
    }
}
