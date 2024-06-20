@extends('layouts.app')
@section('content')
    <div class="flex justify-center">
        <form class="w-full max-w-lg" action="{{ route('providers.store') }}" method="POST">
            @csrf
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="name">
                    Provider Name
                </label>
                <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="name" type="text" placeholder="Provider Name" name="name" required>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="contact_name">
                    Contact Name
                </label>
                <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="contact_name" type="text" placeholder="Contact Name" name="contact_name" required>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="email">
                    Email
                </label>
                <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="email" type="email" placeholder="example@example.com" name="email" required>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="phone">
                    Phone
                </label>
                <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="phone" type="text" placeholder="Phone Number" name="phone" required>
            </div>
            <input value="Save Changes" type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
        </form>
    </div>
@endsection
