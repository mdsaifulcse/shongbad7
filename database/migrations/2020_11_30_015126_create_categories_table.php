<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->id();

            $table->string('category_name')->nullable();
            $table->string('category_name_bn')->nullable();
            $table->string('link');
            $table->tinyInteger('serial_num');
            $table->text('short_description')->nullable();
            $table->string('icon_photo')->nullable();
            $table->string('icon_class')->nullable();
            //$table->tinyInteger('type')->default(1)->comment('1=Business, 2=Product');
            $table->string('status')->default(\App\Models\Category::ACTIVE);

            $table->author();
            $table->softDeletes();
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
        Schema::dropIfExists('categories');
    }
}
