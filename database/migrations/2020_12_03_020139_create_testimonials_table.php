<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTestimonialsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('testimonials', function (Blueprint $table) {
            $table->id();

            $table->string('related_with',250)->nullable()->comment('Given review about topic');
            $table->tinyInteger('rating',false,1)->nullable();
            $table->string('name',250);
            $table->string('image',250)->nullable();
            $table->text('content')->nullable();
            $table->string('image_small',250)->nullable();
            $table->string('url',255)->nullable();
            $table->tinyInteger('serial_num',false,3)->nullable();
            $table->string('status')->default(\App\Models\Testimonial::ACTIVE);

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
        Schema::dropIfExists('testimonials');
    }
}
