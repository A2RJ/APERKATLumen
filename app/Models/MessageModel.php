<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MessageModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "message";
    protected $primaryKey = "id_message";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_pengajuan",
        "id_user",
        "status_message"
    ];

    /**
     * Date time columns.
     */
    // protected $dates = [];
    protected $dates = [];
    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
    ];
}
