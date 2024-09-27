<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getApiToken(){
        return ['token' => env('JWT_SECRET')];
    }

    /**
     * Metodo de captura de todos os usuarios da plataforma
     * @return mixed
     */
    public function getAllUsers(){
        return User::all();
    }

    /**
     * Metodo de captura das informações de um usuario a partir do is do usuario
     * @param int $user_id
     * @return array
     */
    public function getUserId( int $user_id){
        return User::findOrFail($user_id);
    }


}
