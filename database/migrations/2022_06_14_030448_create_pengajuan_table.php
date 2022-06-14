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
            $table->string('kode_rkat', 20)->index('id_rkat');
            $table->integer('id_user')->index('id_user');
            $table->integer('next')->nullable()->index('next');
            $table->text('latar_belakang');
            $table->text('sasaran');
            $table->text('target_capaian');
            $table->text('bentuk_pelaksanaan_program');
            $table->text('tempat_program');
            $table->date('tanggal');
            $table->text('bidang_terkait');
            $table->integer('id_iku_parent')->index('id_iku_parent');
            $table->integer('id_iku_child1')->index('id_iku_child1');
            $table->integer('id_iku_child2')->index('id_iku_child2');
            $table->string('biaya_program', 50);
            $table->string('biaya_disetujui')->nullable();
            $table->string('bank', 50);
            $table->string('atn', 100);
            $table->string('no_rek', 50);
            $table->string('rab', 100)->nullable();
            $table->enum('status_pengajuan', ['progress', 'approved']);
            $table->text('pencairan')->nullable();
            $table->string('id_period')->nullable();
            $table->string('lpj_kegiatan', 30)->nullable();
            $table->string('lpj_keuangan', 30)->nullable();
            $table->integer('validasi_status');
            $table->string('nama_status');
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
        Schema::dropIfExists('pengajuan');
    }
}
