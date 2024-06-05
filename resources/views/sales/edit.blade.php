@extends('layouts.app')
@section('content')
    <div class="flex justify-center">
        <form class="w-full max-w-lg" action="{{ route('sales.update', $sale->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="product_id">
                        Product
                    </label>
                    <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="product_id" name="product_id" required>
                        <option value="">Select a product</option>
                        @foreach($products as $product)
                            <option value="{{ $product->id }}" {{ $sale->product_id == $product->id ? 'selected' : '' }}>{{ $product->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="client_id">
                        Client
                    </label>
                    <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="client_id" name="client_id" required>
                        <option value="">Select a client</option>
                        @foreach($clients as $client)
                            <option value="{{ $client->id }}" {{ $sale->client_id == $client->id ? 'selected' : '' }}>{{ $client->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="sale_date">
                        Sale Date
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white" id="sale_date" type="date" name="sale_date" value="{{ $sale->sale_date }}" required>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="IVA">
                        IVA
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white" id="IVA" type="text" placeholder="Enter IVA" name="IVA" value="{{ $sale->IVA }}" required>
                </div>
            </div>
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="total">
                        Total
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white" id="total" type="text" placeholder="Enter total amount" name="total" value="{{ $sale->total }}" required>
                </div>
            </div>
            <div class="flex justify-center">
                <input value="Save Changes" type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
            </div>
        </form>
    </div>
@endsection