<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
//use App\Permissions\HasPermissionsTrait;
class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    //use HasPermissionsTrait; //Import The Trait
    public $timestamps = true;
    //protected $guarded = ['id'];
    protected $fillable = [
        'name','username','email','password','email_verified_at','remember_token','thumb','status',
        'created_by','updated_by'
    ];
    

    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
