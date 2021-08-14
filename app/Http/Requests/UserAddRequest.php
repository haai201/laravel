<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserAddRequest extends FormRequest
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
            'email' => 'required|unique:users',
            'name'=>'required',
            'password' => 'required',
            'role_id'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required' => 'Tên không được để trống',
            'email.required' => 'Vui lòng cho chúng tôi biết E-mail của bạn',
            'email.unique' => 'E-mail này đã tồn tại. Vui lòng nhập lại',
            'password.required' => 'Vui lòng nhập mật khẩu',
            'role_id.required'=> 'Vui lòng chọn vai trò'
           
        ];
    }
}
