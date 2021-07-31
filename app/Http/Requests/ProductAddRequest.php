<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductAddRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|unique:products|max:255|min:10',
            'price'=>'required|',
            'category_id'=>'required|',
            'contents'=>'required|',
        ];
    }
    public function messages()
{
    return [
        'name.required' => 'Tên sản phẩm không được để trống',
        'name.max' => 'Tên sản phẩm không được quá 255 ký tự',
        'name.min' => 'Tên sản phẩm không nhỏ hơn 10 ký tự',
        'name.unique' => 'Tên sản phẩm không được trùng',
        'price.required' => 'Giá sản phẩm không được để trống',
        'price.max' => 'Giá sản phẩm không được quá 255 ký tự',
        'category_id.required' => 'Vui lòng chọn danh mục sản phẩm',
        'contents.required' => 'Nội dung không được để trống',
       
    ];
}
}
