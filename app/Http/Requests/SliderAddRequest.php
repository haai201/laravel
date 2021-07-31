<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class SliderAddRequest extends FormRequest
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
                'name' => 'required|unique:sliders|max:255|min:10',
                'description'=>'required',
                'image_path'=>'required',
            ];
        }
        public function messages()
    {
        return [
            'name.required' => 'Tên Slider không được để trống',
            'name.max' => 'Tên Slider không được quá 255 ký tự',
            'name.min' => 'Tên Slider không nhỏ hơn 10 ký tự',
            'name.unique' => 'Tên Slider không được trùng',
            'description.required' => 'Vui lòng nhập mô tả',
            'image_path.required' => 'Vui lòng chọn ảnh ',
    
           
        ];
    }
}
