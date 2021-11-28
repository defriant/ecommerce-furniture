<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('barang', function (Blueprint $table) {
            $table->string('id')->primary();
            $table->string('jenis');
            $table->string('nama');
            $table->bigInteger('harga');
            $table->integer('stock');
            $table->string('gambar');
            $table->text('deskripsi');
            $table->bigInteger('terjual');
            $table->bigInteger('dilihat');
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
        Schema::dropIfExists('barang');
    }
}
