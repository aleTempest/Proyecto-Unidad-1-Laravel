@extends('layouts.app')
@section('content')
    <div class="flex flex-col overflow-x-auto">
        <div class="sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 sm:px-6 lg:px-8">
                <div class="overflow-x-auto">
                    <table class="min-w-full text-start text-sm font-light text-surface dark:text-white">
                        <thead class="border-b border-neutral-200 font-medium dark:border-white/10">
                        <tr>
                            <th class="px-6 py-4">
                                <a href="{{ route('products.create') }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
                                    New
                                </a>
                            </th>
                            <th class="px-6 py-4">Name</th>
                            <th class="px-6 py-4">Category</th>
                            <th class="px-6 py-4">Colors</th>
                            <th class="px-6 py-4">Purchase Date</th>
                            <th class="px-6 py-4">Sale Price</th>
                            <th class="px-6 py-4">Purchase Price</th>
                            <th class="px-6 py-4">Small desc.</th>
                            <th class="px-6 py-4">Large desc.</th>
                            <th class="px-6 py-4">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($products as $product)
                            <tr class="border-b dark:border-neutral-700">
                                <td class="text-center">{{ $loop->iteration }}</td>
                                <td class="text-center">{{ $product->name }}</td>
                                <td class="text-center">pendiente</td> <!-- Update this to show the actual category -->
                                <td class="text-center">{{ $product->colors }}</td>
                                <td class="text-center">{{ $product->purchase_date }}</td>
                                <td class="text-center">{{ $product->pv }}</td>
                                <td class="text-center">{{ $product->pc }}</td>
                                <td class="text-center">{{ $product->short_desc }}</td>
                                <td class="text-center">{{ $product->long_desc }}</td>
                                <td class="flex justify-center space-x-2">
                                    <a href="{{ route('products.show', $product->product_id) }}" class="bg-yellow-300 hover:bg-yellow-400 text-white font-bold py-2 px-4 border-b-4 border-yellow-700 hover:border-yellow-500 rounded">Show</a>
                                    <a href="{{ route('products.edit', $product->product_id) }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Edit</a>
                                    <form action="{{ route('products.destroy', $product->product_id) }}" method="POST" onsubmit="return confirm('Do you want to delete this product?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="bg-red-500 hover:bg-red-400 text-white font-bold py-2 px-4 border-b-4 border-red-700 hover:border-red-500 rounded">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td>
                                    <strong>No Product Found!</strong>
                                </td>
                            </tr>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
