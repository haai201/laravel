<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;


class SettingAddRequest extends FormRequest
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
                'config_key' => 'required|max:255|min:10',
                'config_value'=>'required',
            
            ];
        }
        public function messages()
    {
        return [
            'config_key.required' => 'Config Key không được để trống',
            'config_value.required' => 'Config Value không được để trống',
            // 'config_key.max' => 'Config Value không được quá 255 ký tự',
            // 'config_key.min' => 'Config Value không nhỏ hơn 10 ký tự',
    //         'config_key.unique' => 'Config Value  không được trùng',
        
    
           
        ];
    }
}
