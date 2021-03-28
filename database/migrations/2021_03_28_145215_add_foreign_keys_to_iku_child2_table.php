<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToIkuChild2Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('iku_child2', function (Blueprint $table) {
            $table->foreign('id_iku_child1', 'iku_child2_ibfk_1')->references('id_iku_child1')->on('iku_child1')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('iku_child2', function (Blueprint $table) {
            $table->dropForeign('iku_child2_ibfk_1');
        });
    }
}
