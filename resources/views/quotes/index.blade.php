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
                                <a href="{{ route('quotes.create') }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
                                    New
                                </a>
                            </th>
                            <th class="px-6 py-4">Product</th>
                            <th class="px-6 py-4">Client</th>
                            <th class="px-6 py-4">Quote Date</th>
                            <th class="px-6 py-4">Validity</th>
                            <th class="px-6 py-4">Comments</th>
                            <th class="px-6 py-4">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse($quotes as $quote)
                            <tr class="border-b dark:border-neutral-700">
                                <td class="text-center">{{ $loop->iteration }}</td>
                                <td class="text-center">{{ $quote->product->name }}</td>
                                <td class="text-center">{{ $quote->client->name }}</td>
                                <td class="text-center">{{ $quote->quote_date }}</td>
                                <td class="text-center">{{ $quote->validity }}</td>
                                <td class="text-center">{{ $quote->comments }}</td>
                                <td class="flex justify-center space-x-2">
                                    <a href="{{ route('quotes.show', $quote->id) }}" class="bg-yellow-300 hover:bg-yellow-400 text-white font-bold py-2 px-4 border-b-4 border-yellow-700 hover:border-yellow-500 rounded">Show</a>
                                    <a href="{{ route('quotes.edit', $quote->id) }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Edit</a>
                                    <form action="{{ route('quotes.destroy', $quote->id) }}" method="POST" onsubmit="return confirm('Do you want to delete this quote?');">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="bg-red-500 hover:bg-red-400 text-white font-bold py-2 px-4 border-b-4 border-red-700 hover:border-red-500 rounded">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="7" class="text-center py-4">
                                    <strong>No Quotes Found!</strong>
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
