<?php

namespace App\Http\Controllers;

use Laravel\Lumen\Routing\Controller as BaseController;

class Controller extends BaseController
{
    public function success($params)
    {
        return response()->json([
            "status" => 200,
            "data" => $params,
         ]);
    }
}
