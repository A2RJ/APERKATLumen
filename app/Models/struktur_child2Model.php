<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class struktur_child2Model extends Model
{
    /**
     * Database table name
     */
    protected $table      = "struktur_child";
    protected $primaryKey = "id_struktur_child2";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "id_struktur_child1",
        "id_struktur",
        "nama_struktur_child2"
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
        // 'delayed' => false,
    ];
}
