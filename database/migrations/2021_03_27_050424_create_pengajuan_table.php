<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengajuanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengajuan', function (Blueprint $table) {
            $table->integer('id_pengajuan', true);
            $table->integer('id_rkat')->unique('id_rkat');
            $table->string('target_capaian', 100);
            $table->string('bentuk_pelaksanaan_program', 100);
            $table->string('tempat_program', 100);
            $table->date('tanggal');
            $table->string('bidang_terkait', 50);
            $table->integer('id_iku_parent');
            $table->integer('id_iku_child1');
            $table->integer('id_iku_child2');
            $table->string('biaya_program', 50);
            $table->string('rab', 100);
            $table->enum('status_pengajuan', ['progress', 'approved', '', '']);
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
        Schema::dropIfExists('pengajuan');
    }
}
