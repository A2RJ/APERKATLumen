<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PeriodModel extends Model{

    protected $table = 'period';
    protected $primaryKey = 'id_period';
    protected $fillable = [
        'period', 
    ];
    public $timestamps = false;

    public function pengajuan()
    {
        return $this->hasMany(PengajuanModel::class, 'id_period', 'id_period');
    }
}