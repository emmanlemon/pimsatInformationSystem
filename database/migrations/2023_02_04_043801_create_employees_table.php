<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->string('employeeid');
            $table->string('firstname');
            $table->string('middlename');
            $table->string('lastname');
            $table->string('dateofbirth');
            $table->string('sex');
            $table->string('civilstatus');
            $table->string('height');
            $table->string('weight');
            $table->string('bloodtype');
            $table->string('citizenship');
            $table->string('address');
            $table->string('mobile');
            $table->string('email');


            $table->string('last_name');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('employees');
    }
};
