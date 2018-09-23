<?php

namespace App\Http\Requests;
use Illuminate\Foundation\Http\FormRequest;
class AddMessagesRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
          'message' => 'required|min:5|max:500'
        ];
    }
}
