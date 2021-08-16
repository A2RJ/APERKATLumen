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
        $userStruktur = UserModel::join('struktur', 'user.id_struktur', 'struktur.id_struktur')
            ->join('struktur_child1', 'user.id_struktur_child1', 'struktur_child1.id_struktur_child1')
            ->join('struktur_child2', 'user.id_struktur_child2', 'struktur_child2.id_struktur_child2')
            ->where('id_user', $login->id_user)
            ->first();
        if ($userStruktur->level == 1) {
            $data = [
                'level' => $userStruktur->nama_struktur_child1 == "0" ? "sekniv" : "prodi"
            ];
        } else if ($userStruktur->level == 2) {
            $data = [
                'level' => $userStruktur->nama_struktur_child1 == "0" ? "rektor" : "prodi"
            ];
        } else if ($userStruktur->level == 3 || $userStruktur->level == 4) {
            if ($userStruktur->nama_struktur_child1 == "0" && $userStruktur->nama_struktur_child2 == '0' || $userStruktur->child1_level == "1") {
                $data = [
                    'level' => $userStruktur->child1_level == "1" ? 'dirKeuangan' : 'warek'
                ];
            }else if ($userStruktur->nama_struktur_child1 !== "0" && $userStruktur->nama_struktur_child2 == '0' || $userStruktur->child1_level !== "1") {
                $data = [
                    'level' => 'prodi'
                ];
            } 
        } else if ($userStruktur->level == 5) {
            if ($userStruktur->nama_struktur_child1 !== "0" && $userStruktur->nama_struktur_child2 == '0') {
                $data = [
                    'level' => 'fakultas'
                ];
            } else {
                $data = [
                    'level' => "prodi"
                ];
            }
        }

        return response()->json([$userStruktur, $data]);
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
