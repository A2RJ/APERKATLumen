<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToStrukturChild2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('struktur_child2', function (Blueprint $table) {
            $table->foreign('id_struktur', 'struktur_child2_ibfk_1')->references('id_struktur')->on('struktur')->onUpdate('NO ACTION')->onDelete('NO ACTION');
            $table->foreign('id_struktur_child1', 'struktur_child2_ibfk_2')->references('id_struktur_child1')->on('struktur_child1')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('struktur_child2', function (Blueprint $table) {
            $table->dropForeign('struktur_child2_ibfk_1');
            $table->dropForeign('struktur_child2_ibfk_2');
        });
    }
}
