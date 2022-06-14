<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStrukturChild1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('struktur_child1', function (Blueprint $table) {
            $table->integer('id_struktur_child1', true);
            $table->integer('id_struktur')->index('id_struktur');
            $table->integer('child1_level');
            $table->text('nama_struktur_child1');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('struktur_child1');
    }
}
