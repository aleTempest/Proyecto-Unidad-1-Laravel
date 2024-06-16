@extends('layouts.app')
@section('content')
    <div class="flex justify-center">
        <div class="w-full max-w-lg">
            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="id_producto">
                        Product
                    </label>
                    <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="id_producto" name="id_producto" required>
                        <option value="">Select a product</option>
                        <option value="1">Product 1</option>
                        <option value="2">Product 2</option>
                        <option value="3">Product 3</option>
                    </select>
                </div>
            </div>

            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="id_cliente">
                        Client
                    </label>
                    <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="id_cliente" name="id_cliente" required>
                        <option value="">Select a client</option>
                        <option value="1">Client 1</option>
                        <option value="2">Client 2</option>
                        <option value="3">Client 3</option>
                    </select>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="fecha_cot">
                        Quotation Date
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="fecha_cot" type="date" name="fecha_cot" required>
                </div>
            </div>

            <div class="flex flex-wrap -mx-3 mb-6">
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="vigencia">
                        Validity
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="vigencia" type="text" placeholder="Validity" name="vigencia" required>
                </div>
                <div class="w-full md:w-1/2 px-3">
                    <label class="dark:text-gray-400 block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="comentarios">
                        Comments
                    </label>
                    <input class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="comentarios" type="text" placeholder="Comments" name="comentarios" required>
                </div>
            </div>

            <input value="Save" type="submit" class="bg-blue-500 hover:bg-blue-400 text-white font-bold py-2 px-4 border-b-4 border-blue-700 hover:border-blue-500 rounded">
        </div>
    </div>
@endsection
