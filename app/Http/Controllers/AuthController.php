<?php

namespace App\Http\Controllers;

use App\Models\userModel;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\strukturModel;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login','register']]);
    }

    /**
     * Store a new user.
     *
     * @param  Request  $request
     * @return Response
     */
    public function register(Request $request)
    {
        //validate incoming request 
        $this->validate($request, [
            'username' => 'required|string|unique:users',
            'password' => 'required|confirmed',
        ]);

        try 
        {
            $data = userModel::create($request->all());
            $data->password = Hash::make($request->input('password'));
            $data->save();

            return response()->json( [
                        'entity' => 'users', 
                        'action' => 'create', 
                        'result' => 'success'
            ], 201);

        } 
        catch (\Exception $e) 
        {
            return response()->json( [
                       'entity' => 'users', 
                       'action' => 'create', 
                       'result' => 'failed'
            ], 409);
        }
    }
	
     /**
     * Get a JWT via given credentials.
     *
     * @param  Request  $request
     * @return Response
     */	 
    public function login(Request $request)
    {
          //validate incoming request 
        $this->validate($request, [
            'email' => 'required|string',
            'password' => 'required|string',
        ]);

        $credentials = $request->only(['email', 'password']);

        if (! $token = Auth::attempt($credentials)) {			
            return response()->json(['message' => 'Unauthorized'], 401);
        }
        return $this->respondWithToken($token);
    }
	
     /**
     * Get user details.
     *
     * @param  Request  $request
     * @return Response
     */	 	
    public function me()
    {
        $login = auth()->user();
        $data = userModel::where("id_user", $login->id_user)->get();
        if ($data[0]->id_struktur_child2) {
            $data = [
                'level' => "prodi"
            ];
        } elseif ($data[0]->id_struktur_child2 == 0 && $data[0]->id_struktur_child1 == true) {
            $data = [
                'level' => "fakultas"
            ];
        } elseif ($data[0]->id_struktur == true && $data[0]->id_struktur_child1 == null && $data[0]->id_struktur_child2 == null) {
            $struktur = strukturModel::where('id_struktur', '<=', $data[0]->id_struktur)->orderBy('level', 'DESC')->get();
            $hitung = $struktur->count();

            if ($hitung == 1) {
                $data = [
                    'level' => "rektor"
                ];
            } elseif ($hitung == 2) {
                $data = [
                    'level' => "warek"
                ];
            } elseif ($hitung == 3) {
                $data = [
                    'level' => "dirKeuangan"
                ];
            }
        }
        
        return response()->json([$login, $data]);
    }

        /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth::refresh());
    }

        /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        Auth::logout();

        return response()->json(['message' => Auth::check()]);
    }

        /**
     * Get the token array structure.
     *
     * @param  string $token
     *
     * @return \Illuminate\Http\JsonResponse
     */
    protected function respondWithToken($token)
    {
        return response()->json([
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => 3600
        ]);
    }

}