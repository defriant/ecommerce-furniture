@if (Auth::user()->pesanan->where('jenis_pesanan', 'custom_pesanan')->where('status', '!=', 'selesai')->where('status',
'!=', 'batal')->count() > 0)
<div style="text-align: center; color: #999 !important; margin-top: 150px; margin-bottom: 100px">
    <i class="fal fa-shopping-bag" style="font-size: 80px;"></i>
    <br><br><br>
    <h5 style="margin-bottom: 10px">Ada custom pesanan yang sedang berlangsung</h5>
    <h5>Kamu tidak dapat melakukan custom pesanan saat ini.</h5>
    <br><br>
    <h5><b>STATUS CUSTOM PESANAN SAAT INI</b></h5>
    @foreach (Auth::user()->pesanan->where('jenis_pesanan', 'custom_pesanan')->where('status', '!=',
    'selesai')->where('status', '!=', 'batal') as $p)
    @if ($p->status == 'menunggu_konfirmasi')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>MENUNGGU KONFIRMASI PESANAN</b></h5>
    @elseif ($p->status == 'konfirmasi')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>PEMBAYARAN</b></h5>
    @elseif ($p->status == 'menunggu_validasi')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>MENUNGGU VALIDASI PEMBAYARAN</b></h5>
    @elseif ($p->status == 'validasi')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>MENUNGGU STOK BARANG</b></h5>
    @elseif ($p->status == 'validasi_invalid')
    <h5 style="color: rgb(255, 0, 0); margin-top: 10px"><b>PEMBAYARAN TIDAK VALID</b></h5>
    @elseif ($p->status == 'stok_ready')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>PENGIRIMAN</b></h5>
    @elseif ($p->status == 'pengiriman')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>PENGIRIMAN</b></h5>
    @elseif ($p->status == 'tiba_di_tujuan')
    <h5 style="color: rgb(0, 183, 255); margin-top: 10px"><b>TIBA DI TUJUAN</b></h5>
    @endif
    @endforeach
    <button class="btn-belanja" onclick="lihat_pesanan()" style="margin-top: 30px">
        <h5><i class="far fa-shopping-bag" style="margin-right: 5px"></i> Lihat Pesanan</h5>
    </button>
</div>
@else

<div class="custom-pesanan-body">
    <form id="form-custom-pesanan" action="/custom-pesanan-proses" method="POST" enctype="multipart/form-data">
        {{ csrf_field() }}
        <img id="foto-contoh-barang-preview" src="{{ asset('user/barang_img/no_image.png') }}" width="300px" alt="">
        <br>
        <button type="button" class="btn-foto-contoh-barang"
            onclick="document.getElementById('input-foto-contoh-barang').click()">Foto Contoh Barang</button>
        <input type="file" id="input-foto-contoh-barang" name="foto_contoh_barang" style="display: none">
        <div class="form-input-contoh-barang">
            <div class="form-group-custom">
                <h5 style="float: left; margin-bottom: 5px">Nama Barang :</h5>
                <input id="nama-barang" type="text" name="nama_barang" class="contoh-barang-form">
            </div>

            <div class="form-group-custom" style="margin-bottom: 10px">
                <h5 style="float: left; margin-bottom: 5px">Kategori :</h5>
                <select id="kategori-barang" name="kategori_barang" class="contoh-barang-form">
                    <option></option>
                    <option value="kitchen-set">Kitchen Set</option>
                    <option value="dll">Lainnya ( Tempat Tidur, Lemari, Meja, Kursi )</option>
                </select>
            </div>

            <div id="ukuran-loader" style="text-align: left; display: none">
                <div class="loadingio-spinner-dual-ring-r5iq5osejl">
                    <div class="ldio-c34g0uje79h">
                        <div></div>
                        <div>
                            <div></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="ukuran" style="margin-bottom: 35px; text-align: left;">

            </div>

            <div style="text-align: left">
                <h5 style="margin-bottom: 10px;">Katalog Warna :</h5>
                <div class="input-group">
                    <span class="input-group-addon btn-jumlah-kurang" data-toggle="modal" data-target="#modal-katalog-warna" style="color: white">Lihat Katalog</span>
                    <input type="text" class="form-control" id="warna" name="warna" placeholder="Masukan tipe katalog" style="border-left: none">
                </div>
            </div>
        </div>
        
        {{-- Modal Katalog Warna --}}
        <div class="modal fade" id="modal-katalog-warna" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog-katalog-warna" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true"><i class="fas fa-times-circle" style="font-size: 20px"></i></span>
                        </button>
                    </div>
                    <div class="modal-body">
                        
                        <div class="row katalog-warna" style="margin-bottom: 50px; ">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>
                                
                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox" >
                                    <div class="item active">
                                        <div class="justify-content-center">
                                            <img src="{{ asset('user/katalog/katalog1.png') }}" alt="...">
                                        </div>
                                    </div>
            
                                    <div class="item">
                                        <div class="justify-content-center">
                                            <img src="{{ asset('user/katalog/katalog1.png') }}" alt="...">
                                        </div>
                                    </div>
            
                                    <div class="item">
                                        <div class="justify-content-center">
                                            <img src="{{ asset('user/katalog/katalog1.png') }}" alt="...">
                                        </div>
                                    </div>
                                </div>
            
                                <!-- Controls -->
                                <a class="left carousel-control carousel-element" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control carousel-element" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            {{-- Katalog warna --}}
            

        <div class="form-input-contoh-barang">

            <div class="form-group-custom" style="margin-bottom: 50px">
                <h5 style="float: left; margin-bottom: 5px">Detail Barang :</h5>
                <textarea id="deskripsi-barang" name="detail_barang"></textarea>
                <span class="helper-text" style="float: left"><i>* Definisikan barang secara detail</i></span>
            </div>

            <h4 style="color: orange;">INFORMASI PEMESAN</h4>
            <div style="margin-top: 30px">
                <h5 style="float: left; margin-bottom: 5px">Pemesan :</h5>
                <input type="text" id="nama-pemesan" name="nama_pemesan" class="contoh-barang-form"
                    value="{{ Auth::user()->name }}">
                <h5 style="float: left; margin-bottom: 5px">Nomor Telepon :</h5>
                <input type="text" id="telp" name="telp" class="contoh-barang-form" value="{{ Auth::user()->telp }}">
                <h5 style="float: left; margin-bottom: 5px">Alamat :</h5>
                <input type="text" id="alamat" name="alamat" class="contoh-barang-form"
                    value="{{ Auth::user()->alamat }}">
            </div>

            <div style="margin-top: 75px">
                <div class="panel panel-default">
                    <div class="panel-heading" style="text-align: left">
                        <h5>Syarat dan ketentuan</h5>
                    </div>
                    <div class="panel-body syarat-ketentuan">
                        <ul>
                            <li>
                                <h5>Customer melakukan pembayaran ketika custom pesanan sudah dikonfirmasi oleh admin.
                                </h5>
                            </li>
                            <li>
                                <h5>Customer melakukan pembayaran DP minimal 30% dari total harga barang dan Upload bukti Transfer diform yang telah disediakan.
                                </h5>
                            </li>
                            <li>
                                <h5>Customer tidak dapat melakukan pembatalan sebelum admin mengkonfirmasi.</h5>
                            </li>
                            <li>
                                <h5>Customer tidak dapat melakukan pembatalan setelah melakukan pembayaran.</h5>
                            </li>
                            <li>
                                <h5>Customer tidak dapat melakukan lebih dari 1 custom pesanan dalam waktu bersamaan.
                                </h5>
                            </li>
                            <li>
                                <h5>Estimasi waktu selesai pengerjaan barang akan ditentukan setelah admin mengkonfirmasi
                                    custom pesanan.</h5>
                            </li>
                            <li>
                                <h5>Estimasi waktu dapat berubah sesuai dengan kondisi pengerjaan.</h5>
                            </li>
                            <li>
                                <h5>Admin akan melakukan update estimasi waktu selesai pengerjaan secara berkala.</h5>
                            </li>
                        </ul>

                    </div>
                    <div class="panel-footer" style="text-align: left">
                        <div class="checkbox" style="margin-top: -4px; margin-bottom: -2px">
                            <label>
                                <input id="persyaratan" type="checkbox" name="agree">
                                <h5 id="persyaratan-text" class="" style="margin-top: 4px; font-size: 14px;">Saya setuju
                                    dengan syarat dan ketentuan yang berlaku</h5>
                            </label>
                        </div>
                    </div>
                </div>
                <button type="button" id="form-custom-submit" onclick="custom_pesanan_submit()"
                    class="btn-foto-contoh-barang">Submit Custom Pesanan</button>
            </div>
        </div>
    </form>
</div>

@endif

<script>
    var contoh_barang_input = document.querySelector('#input-foto-contoh-barang');
    contoh_barang_input.addEventListener('change', foto_preview);

    function foto_preview() {
        var fileObject = this.files[0];
        var fileReader = new FileReader();
        fileReader.readAsDataURL(fileObject);
        fileReader.onload = function () {
            var result = fileReader.result;
            var img = document.querySelector('#foto-contoh-barang-preview');
            img.setAttribute('src', result);
        }
    }

</script>
