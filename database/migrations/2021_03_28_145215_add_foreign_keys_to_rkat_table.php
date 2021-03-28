<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToRkatTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('rkat', function (Blueprint $table) {
            $table->foreign('id_user', 'rkat_ibfk_1')->references('id_user')->on('user')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('rkat', function (Blueprint $table) {
            $table->dropForeign('rkat_ibfk_1');
        });
    }
}
