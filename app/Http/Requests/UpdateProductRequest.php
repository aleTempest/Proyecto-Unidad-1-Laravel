<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'cat_id' => 'required|exists:categories,cat_id',
            'name' => 'required|string|max:250',
            'colors' => 'required|string|max:100',
            'purchase_date' => 'required|date',
            'pv' => 'required|numeric|min:0',
            'pc' => 'required|numeric|min:0',
            'short_desc' => 'required|string|max:300',
            'long_desc' => 'required|string|max:800',
        ];
    }
}
