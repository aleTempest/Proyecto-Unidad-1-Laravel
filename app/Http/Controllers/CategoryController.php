<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\UpdateCategoryRequest;
use App\Models\Category;
use Illuminate\Http\RedirectResponse;
use Illuminate\View\View;

class CategoryController extends Controller
{
    public function index(): View
    {
        $categories = Category::all();
        return view('categories.index', compact('categories'));
    }

    public function create() : View
    {
        return view('categories.create');
    }

    public function store(StoreCategoryRequest $request): RedirectResponse
    {
        Category::create($request->validated());
        return to_route('categories.index');
    }

    public function show(Category $category): View
    {
        return view('categories.show', compact('category'));
    }

    public function edit(Category $category): View
    {
        return view('catsupp'egories.edit', compact('category'));
    }

    public function update(UpdateCategoryRequest $request, Category $category): RedirectResponse
    {
        $category->update($request->validated());
        return to_route('categories.index');
    }

    public function destroy(Category $category): RedirectResponse
    {
        $category->delete();
        return to_route('categories.index');
    }
}
