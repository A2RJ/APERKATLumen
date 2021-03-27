<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateIkuChild1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('iku_child1', function (Blueprint $table) {
            $table->integer('id_iku_child1', true);
            $table->integer('id_iku_parent')->index('id_iku_parent');
            $table->text('iku_child1');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('iku_child1');
    }
}
