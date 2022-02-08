<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RABModel extends Model
{
    protected $table = 'rab';
    protected $primaryKey = 'id_rab';
    protected $fillable = [
        'pengajuan_id',
        'jenis_barang',
        'harga_satuan',
        'qty',
        'total',
        'keterangan'
    ];
}
