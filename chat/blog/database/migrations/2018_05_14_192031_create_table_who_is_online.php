<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableWhoIsOnline extends Migration
{

    public function up()
    {
        Schema::create('online', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('room_id');
            $table->string("timeLogin");
            $table->string("timeLogout");
            $table->timestamps();
        });
    }
    public function down()
    {
        Schema::dropIfExists('online');
    }
}
