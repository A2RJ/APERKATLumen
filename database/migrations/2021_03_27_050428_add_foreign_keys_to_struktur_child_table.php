<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToStrukturChildTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('struktur_child', function (Blueprint $table) {
            $table->foreign('id_struktur', 'struktur_child_ibfk_1')->references('id_struktur')->on('struktur')->onUpdate('RESTRICT')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('struktur_child', function (Blueprint $table) {
            $table->dropForeign('struktur_child_ibfk_1');
        });
    }
}
