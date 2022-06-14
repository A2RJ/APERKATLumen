<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNonrkatPencairanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nonrkat_pencairan', function (Blueprint $table) {
            $table->integer('id_pencairan_image', true);
            $table->string('nonrkat_id');
            $table->string('nominal');
            $table->string('images');
            $table->date('created_at')->default('CURRENT_TIMESTAMP');
            $table->date('updated_at')->default('CURRENT_TIMESTAMP');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nonrkat_pencairan');
    }
}
