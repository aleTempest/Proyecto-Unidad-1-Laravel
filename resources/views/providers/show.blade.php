@extends('layouts.app')
@section('content')

    <div class="flex justify-center">
        <form class="w-full max-w-lg">
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-name">
                    Provider Name
                </label>
                <input value="{{ $provider->name }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-name" type="text" placeholder="Provider Name" name="name" disabled>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-contact_name">
                    Contact Name
                </label>
                <input value="{{ $provider->contact_name }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-contact_name" type="text" placeholder="Contact Name" name="contact_name" disabled>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-email">
                    Email
                </label>
                <input value="{{ $provider->email }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-email" type="email" placeholder="Email" name="email" disabled>
            </div>
            <div class="mb-6">
                <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-phone">
                    Phone
                </label>
                <input value="{{ $provider->phone }}" class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white" id="grid-phone" type="text" placeholder="Phone" name="phone" disabled>
            </div>
        </form>
    </div>

@endsection
