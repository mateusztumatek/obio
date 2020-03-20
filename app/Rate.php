<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Rate extends Model
{
    protected $fillable = ['foreign_key', 'type', 'rate', 'comment', 'user_id', 'name'];
    public $appends = ['created_diff'];

    public function getCreatedDiffAttribute(){
        return $this->created_at->diffForHumans();
    }
    public function user(){
        return $this->belongsTo('App\User');
    }
}
