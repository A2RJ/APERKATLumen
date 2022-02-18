<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class StrukturModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "struktur";
    protected $primaryKey = "id_struktur";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "level",
        "nama_struktur"
    ];

    /**
     * Date time columns.
     */
    // protected $dates = [];
    // disable updated_at and created_at
    public $timestamps = false;
    /**
     * The model's default values for attributes.
     *
     * @var array
     */
    protected $attributes = [
        // 'delayed' => false,
    ];
}
