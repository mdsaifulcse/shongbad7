<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSlidersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sliders', function (Blueprint $table) {
            $table->id();
            $table->string('caption')->nullable();
            $table->text('overview')->nullable();
            $table->string('image')->nullable();
            $table->string('button_text')->nullable();
            $table->string('url')->nullable();
            $table->tinyInteger('serial_num',false,4)->nullable();
            $table->string('status')->default(\App\Models\Slider::ACTIVE);
            $table->tinyInteger('show_at_home',false,1)->nullable()->default(0);

            $table->softDeletes();
            $table->author();

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
        Schema::dropIfExists('sliders');
    }
}
