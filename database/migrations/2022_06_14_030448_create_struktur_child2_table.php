<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStrukturChild2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('struktur_child2', function (Blueprint $table) {
            $table->integer('id_struktur_child2', true);
            $table->integer('id_struktur_child1')->index('id_struktur_child1');
            $table->text('nama_struktur_child2');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('struktur_child2');
    }
}
