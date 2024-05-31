@extends('layouts.app')
@section('content')

    <div class="flex justify-center">
        <form class="w-full max-w-lg" action="{{ route('products.store') }}" method="POST">
            @csrf
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="category_id">
                    Category
                </label>
                <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="category_id" name="cat_id" disabled>
                    <option value="">Select a category</option>
                    @foreach($categories as $category)
                        <option value="{{ $category->cat_id }}" {{ $category->cat_id == $product->cat_id ? 'selected' : '' }}>
                            {{ $category->name }}
                        </option>
                    @endforeach
                </select>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-name">
                    Product Name
                </label>
                <input value="{{ $product->name }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-name" type="text" placeholder="Laptop" name="name" disabled>
            </div>
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-colors">
                        Colors
                    </label>
                    <input value="{{ $product->colors }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-colors" type="text" placeholder="Gray" name="colors" disabled>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-purchase_date">
                        Purchase Date
                    </label>
                    <input value="{{ $product->purchase_date }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" type="date" name="purchase_date" disabled>
                </div>
            </div>
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/3 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-pv">
                        Sale Price
                    </label>
                    <input value="{{ $product->pv }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-pv" type="text" placeholder="17.00" name="pv" disabled>
                </div>
                <div class="w-full md:w-1/3 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-pc">
                        Purchase Price
                    </label>
                    <input value="{{ $product->pc }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-pc" type="text" placeholder="21.00" name="pc" disabled>
                </div>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-short_desc">
                    Short Description
                </label>
                <input value="{{ $product->short_desk }}" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500" id="grid-short_desc" type="text" placeholder="Write a short desc. here..." name="short_desc" disabled>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-long_desc">
                    Long Description
                </label>
                <textarea value="{{ $product->long_desc }}" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500" id="grid-long_desc" rows="4" placeholder="Write a long desc. here..." name="long_desc" disabled></textarea>
            </div>
            <input value="Save Changes" type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
        </form>
    </div>
@endsection
