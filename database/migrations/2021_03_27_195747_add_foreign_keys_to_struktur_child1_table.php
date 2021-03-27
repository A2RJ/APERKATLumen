<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToStrukturChild1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('struktur_child1', function (Blueprint $table) {
            $table->foreign('id_struktur', 'struktur_child1_ibfk_1')->references('id_struktur')->on('struktur')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('struktur_child1', function (Blueprint $table) {
            $table->dropForeign('struktur_child1_ibfk_1');
        });
    }
}
