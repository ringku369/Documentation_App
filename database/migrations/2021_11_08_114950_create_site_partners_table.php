<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSitePartnersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('site_partners', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email',64);
            $table->string('contact',64);
            $table->string('thumb',128)->nullable();
            $table->text('address')->nullable();
            $table->mediumText('short_description')->nullable();
            $table->longText('description')->nullable();

            $table->smallInteger('sort')->default(1);
            $table->tinyInteger('status')->default(1);
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('site_partners');
    }
}
