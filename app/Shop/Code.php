<?php

namespace App\Shop;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;

class Code extends Model
{
    protected $fillable = ['code', 'user_id', 'max_uses', 'used', 'percentage_discount', 'value_discount', 'only_logged'];
    public function validate(){
        $errors = array();
        if($this->max_uses <= $this->used) array_push($errors, 'Ten kod został wykorzystany');
        if($this->only_logged && !Auth::check()) array_push($errors, 'Ten kod jest tylko dla zalogowanych użytkowników');
        if($this->user_id && Auth::id() != $this->user_id) array_push($errors, 'Ten kod jest tylko dla określonego użytkownika');
        return (object) ['error' => (count($errors) > 0)? true : false, 'errors' => $errors];
    }
}
