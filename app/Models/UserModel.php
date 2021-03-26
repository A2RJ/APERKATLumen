<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class userModel extends Model
{
    protected $table      = "user";
    protected $primaryKey = "id_user";
    protected $allowedFields = ["id_user", "fullname", "username", "password", "id_unit", "email", "nomor_wa", "bank", "no_rek", "created_at", "updated_at", ];
}
