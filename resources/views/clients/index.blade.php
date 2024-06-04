@extends('layouts.app')
@section('content')
    <div class="flex flex-col overflow-x-auto">
        <div class="sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 sm:px-4 lg:px-8">
                <div class="overflow-x-auto">
                    <table class="min-w-full text-start text-sm font-light text-surface dark:text-white">
                        <thead class="border-b border-neutral-200 font-medium dark:border-white/10">
                        <tr>
                            <th class="px-6 py-4"><a href="{{ route('clients.create') }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">New</a></th>
                            <th class="px-6 py-4">Name</th>
                            <th class="px-6 py-4">Email</th>
                            <th class="px-6 py-4">Phone</th>
                            <th class="px-6 py-4">Address</th>
                            <th class="px-6 py-4">RFC</th>
                            <th class="px-6 py-4">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @forelse ($clients as $client)
                            <tr>
                                <td class="text-center">{{ $loop->iteration }}</td>
                                <td class="text-center">{{ $client->name }}</td>
                                <td class="text-center">{{ $client->email }}</td>
                                <td class="text-center">{{ $client->phone }}</td>
                                <td class="text-center">{{ $client->address }}</td>
                                <td class="text-center">{{ $client->rfc }}</td>
                                <td class="flex justify-center space-x-2">
                                    <a href="{{ route('clients.show', $client->id) }}" class="bg-yellow-300 hover:bg-yellow-400 text-white font-bold py-2 px-4 border-b-4 border-yellow-700 hover:border-yellow-500 rounded">Show</a>
                                    <a href="{{ route('clients.edit', $client->id) }}" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">Edit</a>
                                    <form action="{{ route('clients.destroy', $client->id) }}" method="POST" onsubmit="return confirm('Do you want to delete this product?');">
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
