<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Struktur_child1Model extends Model
{
    /**
     * Database table name
     */
    protected $table      = "struktur_child1";
    protected $primaryKey = "id_struktur_child1";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_struktur",
        "child1_level",
        "nama_struktur_child1"
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
