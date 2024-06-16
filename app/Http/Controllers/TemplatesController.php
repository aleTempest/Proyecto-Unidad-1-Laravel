<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\View\View;

class TemplatesController extends Controller
{
    public function index(): View
    {
        return view('templates.index');
    }

    public function products_template(): View
    {
        $products = Array(
            ["category" => "Food", "name" => ""]
        );
        return view('templates.products');
    }

    public function providers_template(): View
    {
        return view('templates.providers');
    }

    public function quotes_template(): View
    {
        return view('templates.quotes');
    }

    public function sellers_template(): View
    {
        return view('templates.sellers');
    }
}
