<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToIkuChild1Table extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('iku_child1', function (Blueprint $table) {
            $table->foreign('id_iku_parent', 'iku_child1_ibfk_1')->references('id_iku_parent')->on('iku_parent')->onUpdate('NO ACTION')->onDelete('NO ACTION');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('iku_child1', function (Blueprint $table) {
            $table->dropForeign('iku_child1_ibfk_1');
        });
    }
}
