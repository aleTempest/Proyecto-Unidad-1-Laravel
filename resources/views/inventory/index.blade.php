@extends('layouts.app')
@section('content')
    <div class="flex flex-col overflow-x-auto">
        <div class="sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 sm:px-4 lg:px-8">
                <div class="overflow-x-auto">
                    <table class="min-w-full text-start text-sm font-light text-surface dark:text-white">
                        <thead class="border-b border-neutral-200 font-medium dark:border-white/10">
                        <tr>
                            <th class="px-6 py-4"><a href="{{ route('inventory.create') }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">New</a></th>
                            <th class="px-6 py-4">Product Name</th>
                            <th class="px-6 py-4">In Date</th>
                            <th class="px-6 py-4">Out Date</th>
                            <th class="px-6 py-4">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse ($inventory as $item)
                            <tr>
                                <td class="text-center">{{ $loop->iteration }}</td>
                                <td class="text-center">{{ $item->product_id }}</td>
                                <td class="text-center">{{ $item->in_date }}</td>
                                <td class="text-center">{{ $item->out_date }}</td>
                                <td class="flex justify-center space-x-2">
                                    <a href="{{ route('inventory.show', $item->id) }}" class="bg-yellow-300 hover:bg-yellow-400 text-white font-bold py-2 px-4 border-b-4 border-yellow-700 hover:border-yellow-500 rounded">Show</a>
                                    <a href="{{ route('inventory.edit', $item->id) }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Edit</a>
                                    <form action="{{ route('inventory.destroy', $item->id) }}" method="POST" onsubmit="return confirm('Do you want to delete this product?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="bg-red-500 hover:bg-red-400 text-white font-bold py-2 px-4 border-b-4 border-red-700 hover:border-red-500 rounded">Delete</button>
                                    </form>
                                </td>
                        @empty
                            <td>
                                <span>
                                    <strong>No Product Found!</strong>
                                </span>
                            </td>
                        @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
@endsection
