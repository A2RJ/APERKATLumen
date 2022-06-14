<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengajuanValidasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengajuan_validasi', function (Blueprint $table) {
            $table->integer('id_validasi', true);
            $table->integer('id_pengajuan')->index('id_pengajuan_history');
            $table->integer('id_struktur')->index('id_struktur');
            $table->integer('status_validasi');
            $table->text('message');
            $table->dateTime('created_at')->useCurrent();
            $table->dateTime('updated_at')->useCurrent();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengajuan_validasi');
    }
}
