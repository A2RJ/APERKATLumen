<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengajuanPencairanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengajuan_pencairan', function (Blueprint $table) {
            $table->integer('id_pencairan_image', true);
            $table->string('pengajuan_id');
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
        Schema::dropIfExists('pengajuan_pencairan');
    }
}
