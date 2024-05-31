@extends('layouts.app')
@section('content')
    <div class="flex justify-center">
        <form class="w-full max-w-lg" action="{{ route('inventory.store') }}" method="POST">
            @csrf
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="category_id">
                    Product
                </label>
                <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="category_id" name="product_id" disabled>
                    <option value="">Select a product</option>
                    @foreach($products as $product)
                        <option value="{{ $product->product_id }}" {{ $product->product_id == $item->product_id ? 'selected' : '' }}>
                            {{ $product->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-purchase_date">
                        In Date
                    </label>
                    <input value="{{ $item->in_date }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="date" name="in_date" disabled>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-purchase_date">
                        Out Date
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="date" name="out_date" value="{{ $item->out_date }}" disabled>
                </div>
            </div>
        </form>
    </div>
@endsection
