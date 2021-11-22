@extends('layouts.admin_ui')
@section('content')

<div class="main-content">
    <div class="container-fluid">
        <!-- OVERVIEW -->
        <div class="panel panel-headline">
            <div class="panel-heading">
                <div class="row">
                    <div class="col-sm-12 col-lg-8">
                        <div class="produk-tools">
                            Filter Produk :
                            <span>
                                <label class="fancy-radio">
                                    <input id="semua" name="kategori" value="" type="radio" checked="checked">
                                    <span><i></i>Semua</span>
                                </label>
                                <label class="fancy-radio" style="margin-left: 10px;">
                                    <input id="kitchen-set" name="kategori" value="" type="radio">
                                    <span><i></i>Kitchen Set</span>
                                </label>
                                <label class="fancy-radio" style="margin-left: 10px;">
                                    <input id="tempat-tidur" name="kategori" value="" type="radio">
                                    <span><i></i>Tempat Tidur</span>
                                </label>
                                <label class="fancy-radio" style="margin-left: 10px;">
                                    <input id="lemari" name="kategori" value="" type="radio">
                                    <span><i></i>Lemari</span>
                                </label>
                                <label class="fancy-radio" style="margin-left: 10px;">
                                    <input id="meja" name="kategori" value="" type="radio">
                                    <span><i></i>Meja</span>
                                </label>
                                <label class="fancy-radio" style="margin-left: 10px;">
                                    <input id="kursi" name="kategori" value="" type="radio">
                                    <span><i></i>Kursi</span>
                                </label>
                            </span>
                        </div>
                    </div>
                    <div class="col-sm-12 col-lg-4">
                        <div class="produk-tools-right">
                            <div class="input-group" style="width: 100%; margin-right: 10px">
                                <span class="input-group-addon"><i id="search-icon" class="far fa-search"></i><i id="loading-search-icon" class="fas fa-spinner fa-spin" style="display: none"></i></span>
                                <input id="cari-produk" class="form-control" placeholder="Cari Produk" type="text">
                            </div>
                            <button type="button" class="btn" data-toggle="modal" data-target="#modal-tambah-produk"
                                style="padding: 3px 8px; color: white; background: rgb(0, 183, 255)"><i
                                    class="far fa-plus"></i>&nbsp; Tambah Barang </button>
                        </div>
                    </div>
                </div>

                <hr>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div id="produk">
                        @include('admin.produk_data')
                    </div>
                </div>
            </div>
        </div>
        <!-- END OVERVIEW -->
    </div>
</div>

<!-- Modal Tambah Produk -->
<div class="modal fade" id="modal-tambah-produk" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form id="form-tambah-produk" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <button type="button" style="position: relative; bottom: 40px;" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>

                    <div class="produk-gambar">
                        <img id="tambah-gambar-preview" class="" data-src="{{ asset('user/barang_img/no_image.png') }}" src="{{ asset('user/barang_img/no_image.png') }}" style="width: 150px; margin-bottom: 20px;">
                        <br>
                        <h5 id="invalid-gambar" class="invalid-text" style="margin-top: -10px"><i>Pilih gambar produk</i></h5>
                        <input type="button" value="Pilih Gambar" class="gambar-input" style="text-align: center; margin: auto" onclick="document.getElementById('tambah-gambar-input').click()">
                        <input type="file" id="tambah-gambar-input" name="gambar" style="display: none;">
                    </div>

                    <div class="produk-detail">
                        <h5>Kategori Produk :</h5>
                        <select id="tambah-kategori" name="kategori" class="form-control">
                            <option></option>
                            <option value="kitchen_set">Kitchen Set</option>
                            <option value="tempat_tidur">Tempat Tidur</option>
                            <option value="lemari">Lemari</option>
                            <option value="meja">Meja</option>
                            <option value="kursi">Kursi</option>
                        </select>
                        <span id="invalid-kategori" class="invalid-text"><i>Pilih kategori produk</i></span>

                        <h5>Nama Produk :</h5>
                        <input id="tambah-nama" type="text" name="nama" class="form-control" placeholder="" autocomplete="off">
                        <span id="invalid-nama" class="invalid-text"><i>Nama produk tidak boleh kosong</i></span>

                        <h5>Harga :</h5>
                        <div class="input-group">
                            <span class="input-group-addon">Rp.</span>
                            <input id="tambah-harga" type="text" name="harga" class="form-control" placeholder="" autocomplete="off">
                        </div>
                        <span id="invalid-harga" class="invalid-text"><i>Harga produk tidak boleh kosong</i></span>

                        <h5>Stok :</h5>
                        <input id="tambah-stock" type="text" name="stock" class="form-control" placeholder="" autocomplete="off">
                        <span id="invalid-stock" class="invalid-text"><i>Stok tidak boleh kosong</i></span>

                        <h5>Deskripsi Produk :</h5>
                        <textarea id="tambah-deskripsi" class="form-control" name="deskripsi" placeholder="" style="resize: none; height: 100px; overflow-y: auto"></textarea>
                        <span id="invalid-deskripsi" class="invalid-text"><i>Deskripsi produk tidak boleh kosong</i></span>
                    </div>
            </div>
            <div class="modal-footer">
                <h5 id="tambah-loading" style="text-align: center; display: none;"><i class="fas fa-spinner fa-spin" style="margin-right: 5px"></i> Menambahkan</h5>
                <button id="btn-tambah-produk" type="submit" class="btn btn-primary">Tambah Produk</button>
                <button type="button" id="modal-tambah-close" class="btn btn-default" data-dismiss="modal">Batal</button>
            </div>
            </form>
        </div>
    </div>
</div>

{{-- Modal Update Produk --}}
<div class="modal fade" id="modal-update-produk" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <form id="form-update-produk" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    <input type="hidden" id="produk-id" value="">
                    <button type="button" style="position: relative; bottom: 40px;" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">&times;</span></button>

                    <div class="produk-gambar">
                        <img id="update-gambar-preview" src="{{ asset('user/barang_img/no_image.png') }}" style="width: 150px; margin-bottom: 20px">
                        <br>
                        <input type="button" value="Update Gambar" class="gambar-input" style="text-align: center; margin: auto" onclick="document.getElementById('update-gambar-input').click()">
                        <input type="file" id="update-gambar-input" name="gambar" style="display: none;">
                    </div>

                    <div class="produk-detail">
                        <h5>Kategori Produk :</h5>
                        <select id="update-kategori" name="kategori" class="form-control">
                            <option></option>
                            <option value="kitchen_set">Kitchen Set</option>
                            <option value="tempat_tidur">Tempat Tidur</option>
                            <option value="lemari">Lemari</option>
                            <option value="meja">Meja</option>
                            <option value="kursi">Kursi</option>
                        </select>
                        <span id="invalid-update-kategori" class="invalid-text"><i>Pilih kategori produk</i></span>

                        <h5>Nama Produk :</h5>
                        <input id="update-nama" type="text" name="nama" class="form-control">
                        <span id="invalid-update-nama" class="invalid-text"><i>Nama produk tidak boleh kosong</i></span>

                        <h5>Harga :</h5>
                        <div class="input-group">
                            <span class="input-group-addon">Rp.</span>
                            <input id="update-harga" type="text" name="harga" class="form-control" placeholder="">
                        </div>
                        <span id="invalid-update-harga" class="invalid-text"><i>Harga produk tidak boleh kosong</i></span>

                        <h5>Stock :</h5>
                        <input id="update-stock" type="text" name="stock" class="form-control">
                        <span id="invalid-update-stock" class="invalid-text"><i>Stok tidak boleh kosong</i></span>

                        <h5>Deskripsi Produk :</h5>
                        <textarea id="update-deskripsi" class="form-control" name="deskripsi" style="resize: none; height: 100px; overflow-y: auto"></textarea>
                        <span id="invalid-update-deskripsi" class="invalid-text"><i>Deskripsi produk tidak boleh kosong</i></span>
                    </div>
            </div>
            <div class="modal-footer">
                <h5 id="update-loading" style="text-align: center; display: none;"><i class="fas fa-spinner fa-spin" style="margin-right: 5px"></i> Menyimpan</h5>
                <h5 id="hapus-loading" style="text-align: center; display: none;"><i class="fas fa-spinner fa-spin" style="margin-right: 5px"></i> Menghapus</h5>
                <button id="btn-update-produk" type="submit" class="btn btn-primary">Simpan Perubahan</button>
                <button id="btn-hapus-produk" type="button" class="btn btn-danger" style="float: left">Hapus Produk</button>
                <button type="button" id="modal-update-close" class="btn btn-default" data-dismiss="modal">Batal</button>
            </div>
            </form>
        </div>
    </div>
</div>

@endsection
