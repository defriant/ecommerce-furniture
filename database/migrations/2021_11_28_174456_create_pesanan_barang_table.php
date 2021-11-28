<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesananBarangTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pesanan_barang', function (Blueprint $table) {
            $table->id();
            $table->string('pesanan_id', 50);
            $table->string('barang_id')->nullable();
            $table->string('nama', 100);
            $table->string('warna')->nullable();
            $table->string('panjang', 20)->nullable();
            $table->string('lebar', 20)->nullable();
            $table->string('harga', 50)->nullable();
            $table->integer('jumlah');
            $table->string('total', 50)->nullable();
            $table->string('gambar');
            $table->text('detail_barang')->nullable();
            $table->string('url')->nullable();
            $table->string('terjual', 50)->nullable();
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
        Schema::dropIfExists('pesanan_barang');
    }
}
