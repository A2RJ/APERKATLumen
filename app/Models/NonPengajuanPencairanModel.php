<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class NonPengajuanPencairanModel extends Model
{
    /**
     * Database table name
     */
    protected $table      = "nonrkat_pencairan";
    protected $primaryKey = "id_pencairan_image";
    protected $guarded = [];
    /**
     * Mass assignable columns
     */
    protected $fillable = [
        "nonrkat_id",
        "nominal",
        "images"
    ];
    // public $incrementing = false;
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
        // 'kode_rkat' => false,
    ];
}
