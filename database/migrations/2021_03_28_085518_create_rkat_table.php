<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRkatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rkat', function (Blueprint $table) {
            $table->integer('id_rkat', true);
            $table->integer('id_user')->index('id_user');
            $table->string('kode_rkat', 50);
            $table->string('sasaran_strategi', 200);
            $table->string('indikator_sasaran_strategi', 200);
            $table->string('nama_program', 100);
            $table->string('program_kerja', 100);
            $table->text('deskripsi');
            $table->string('tujuan', 100);
            $table->dateTime('mulai_program');
            $table->dateTime('selesai_program');
            $table->string('tempat', 100);
            $table->string('sumber_anggaran', 100);
            $table->string('rencara_anggaran', 50);
            $table->string('total_anggaran', 50);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rkat');
    }
}
