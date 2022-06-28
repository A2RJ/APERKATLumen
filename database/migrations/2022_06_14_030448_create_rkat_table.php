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
            $table->string('kode_rkat', 20);
            $table->integer('id_user')->index('id_user');
            $table->string('period')->default('CURRENT_TIMESTAMP');
            $table->text('sasaran_strategi');
            $table->text('indikator_sasaran_strategi');
            $table->text('nama_program');
            $table->text('program_kerja');
            $table->text('deskripsi');
            $table->text('tujuan');
            $table->string('mulai_program');
            $table->string('selesai_program');
            $table->text('tempat');
            $table->text('sumber_anggaran');
            $table->string('rencana_anggaran', 50);
            $table->string('total_anggaran', 50);
            $table->string('anggaran_digunakan', 50);
            $table->date('created_at');
            $table->date('updated_at');
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
