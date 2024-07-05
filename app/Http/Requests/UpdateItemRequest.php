<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateItemRequest extends FormRequest
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
            'product_id' => 'required|exists:products,id',
            'in_date' => 'required|date|before_or_equal:out_date',
            'out_date' => 'required|date|after_or_equal:in_date'
        ];
    }

    // Verifica que la fecha de entrada no pueda ser mayor a la de salirda y que la fecha de salida no sea
    // menor a la de salida. https://laravel.com/docs/11.x/validation
    public function error()
    {
        return [
            'in_date.before_or_equal' => 'Invalid date',
            'out_date.after_or_equal' => 'Invalid date'
        ];
    }
}
