@extends('layouts.app')
@section('content')
    <div class="flex justify-center">
        <form class="w-full max-w-lg" action="{{ route('quotes.update', $quote->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="product_id">
                    Product
                </label>
                <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="product_id" name="product_id" required>
                    @foreach($products as $product)
                        <option value="{{ $product->id }}" {{ $product->id == $quote->product_id ? 'selected' : '' }}>{{ $product->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="client_id">
                    Client
                </label>
                <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="client_id" name="client_id" required>
                    @foreach($clients as $client)
                        <option value="{{ $client->id }}" {{ $client->id == $quote->client_id ? 'selected' : '' }}>{{ $client->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="quote_date">
                    Quote Date
                </label>
                <input value="{{ $quote->quote_date }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="quote_date" type="date" name="quote_date" required>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="validity">
                    Validity
                </label>
                <input value="{{ $quote->validity }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="validity" type="date" name="validity" required>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="comments">
                    Comments
                </label>
                <textarea class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="comments" name="comments" rows="4">{{ $quote->comments }}</textarea>
            </div>
            <input value="Save" type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
        </form>
    </div>
@endsection
