<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class userModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "user";
    protected $primaryKey = "id_user";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "fullname",
        "username",
        "password",
        "id_struktur",
        "id_struktur_child1",
        "id_struktur_child2",
        "email",
        "nomor_wa",
        "bank",
        "no_rek"
    ];

    /**
     * Date time columns.
     */
    protected $dates = [];
        /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [

    ];
}
