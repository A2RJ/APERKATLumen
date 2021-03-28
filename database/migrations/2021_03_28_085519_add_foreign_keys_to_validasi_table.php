<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToValidasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('validasi', function (Blueprint $table) {
            $table->foreign('id_pengajuan', 'validasi_ibfk_1')->references('id_pengajuan')->on('pengajuan_history')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('validasi', function (Blueprint $table) {
            $table->dropForeign('validasi_ibfk_1');
        });
    }
}
