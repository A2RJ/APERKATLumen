<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\Models\UserModel;

class AuthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth:api', ['except' => ['login', 'register']]);
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

        try {
            $data = UserModel::create($request->all());
            $data->password = Hash::make($request->input('password'));
            $data->save();

            return response()->json([
                'entity' => 'users',
                'action' => 'create',
                'result' => 'success'
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
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

        if (!$token = Auth::attempt($credentials)) {
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
        $userStruktur = UserModel::where('id_user', $login->id_user)->first();

        if ($userStruktur->id_struktur == 1) {
            $data = [
                'level' => "rektor"
            ];
        } elseif ($userStruktur->id_struktur == 2) {
            $data = [
                'level' => "warek"
            ];
        } elseif ($userStruktur->id_struktur == 4) {
            $data = [
                'level' => "sekniv"
            ];
        } else {
            $data = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
                ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
                ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
                ->select('user.id_struktur', 'user.id_struktur_child1', 'struktur_child1.nama_struktur_child1', 'struktur_child2.nama_struktur_child2')
                ->where('user.id_user', $login->id_user)
                ->first();

            if ($data->id_struktur == 3 && $data->id_struktur_child1 == 9) {
                $data = [
                    'level' => "dirKeuangan"
                ];
            } else if ($data->nama_struktur_child1 == true && $data->nama_struktur_child2 == '0') {
                $data = [
                    'level' => 'fakultas'
                ];
                // 'level' => $data->nama_struktur_child1 . $data->nama_struktur_child2
            } else {
                $data = [
                    'level' => "prodi"
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
