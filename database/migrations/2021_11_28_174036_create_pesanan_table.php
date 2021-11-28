<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePesananTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pesanan', function (Blueprint $table) {
            $table->string('id', 25)->primary();
            $table->string('user_id', 50);
            $table->string('jenis_pesanan', 20);
            $table->string('nama', 100);
            $table->string('telp', 50);
            $table->text('alamat');
            $table->integer('total')->nullable();
            $table->string('status', 50);
            $table->dateTime('konfirmasi')->nullable();
            $table->dateTime('menunggu_validasi')->nullable();
            $table->dateTime('validasi')->nullable();
            $table->dateTime('pengiriman')->nullable();
            $table->dateTime('tiba_di_tujuan')->nullable();
            $table->string('bukti_pembayaran')->nullable();
            $table->dateTime('estimasi_stok')->nullable();
            $table->dateTime('stok_ready')->nullable();
            $table->text('alasan_batal')->nullable();
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
        Schema::dropIfExists('pesanan');
    }
}
