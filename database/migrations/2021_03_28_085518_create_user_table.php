<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUserTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user', function (Blueprint $table) {
            $table->integer('id_user', true);
            $table->string('fullname');
            $table->string('username', 8);
            $table->string('password');
            $table->integer('id_struktur')->nullable()->index('id_struktur');
            $table->integer('id_struktur_child1')->nullable()->index('id_struktur_child1');
            $table->integer('id_struktur_child2')->nullable()->index('id_struktur_child2');
            $table->string('email', 50);
            $table->string('nomor_wa', 15);
            $table->string('bank', 20);
            $table->string('no_rek', 30);
            $table->dateTime('created_at');
            $table->dateTime('updated_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user');
    }
}
