@extends('layouts.admin_ui')
@section('content')

<div class="main-content">
    <div class="container-fluid">
        <!-- OVERVIEW -->
        <div class="panel panel-headline">
            <div class="panel-heading">
                <h4 class="pesanan-title"><b>CUSTOM PESANAN / <span style="color: #00AAFF">MENUNGGU KONFIRMASI</span></b></h4>
            </div>
            <div class="panel-body" style="margin-top: 20px">
                <div class="row">
                    <div class="pesanan-list">
                        <div id="custom-menunggu-konfirmasi-data">
                            @include('admin.custom_pesanan.menunggu-konfirmasi-data')
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END OVERVIEW -->
    </div>
</div>

{{-- Modal batal pesanan --}}
<div class="modal fade" id="modal-batal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -10px"><span aria-hidden="true">&times;</span></button>
                <form id="form-batal-pesanan" method="POST">
                <div style="text-align: center; margin-top: 30px; margin-bottom: 30px">
                    <h5>Alasan Pembatalan</h5>
                    <input type="hidden" id="token" name="_token" value="{{ csrf_token() }}">
                    <input type="hidden" name="id_pesanan" id="id-pesanan" value="">
                    <textarea class="form-control" id="alasan_pembatalan" name="alasan_pembatalan" style="resize: none; height: 70px;"></textarea>
                </div>
                <div style="text-align: right">
                    <button type="submit" class="btn btn-danger">Batalkan</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

{{-- Modal Konfirmasi --}}
<div class="modal fade" id="modal-konfirmasi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -10px"><span aria-hidden="true">&times;</span></button>
                <form id="form-konfirmasi-pesanan" method="POST">
                <input type="hidden" id="token" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="id_pesanan" id="id-konfirmasi-pesanan" value="">
                <input id="id-barang" name="id_barang" type="hidden" value="">
                <input id="jumlah_barang" type="hidden" value="3">
                <div style="text-align: center; margin-top: 20px">
                    <img id="gambar-barang" src="" width="200px" alt="">
                    <br>
                    <h5 id="nama-barang"></h5>
                </div>
                <hr>
                <div style="margin-bottom: 30px">

                    <h5 style="margin-top: 20px">Estimasi Selesai Pengerjaan :</h5>
                    <input id="tanggal-estimasi-stok" name="estimasi_stok" type="text" name="total" class="form-control" readonly>
                    <br>
                </div>
                <div style="text-align: right">
                    <button type="submit" class="btn btn-success">Konfirmasi</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')

<script>

    $('#modal-konfirmasi').on('show.bs.modal', function(e){
        var button = $(e.relatedTarget);
        var id_pesanan = button.data('idpesanan');
        var id_barang = button.data('idbarang');
        var gambar = button.data('gambarbarang');
        var nama_barang = button.data('namabarang');
        var modal = $(this);
        modal.find('.modal-body #id-konfirmasi-pesanan').val(id_pesanan);
        modal.find('.modal-body #id-barang').val(id_barang);
        modal.find('.modal-body #gambar-barang').attr('src', gambar);
        modal.find('.modal-body #nama-barang').html(nama_barang);
    })

    $('#form-konfirmasi-pesanan').on('submit', function(e){
        e.preventDefault();
        var id = $('#id-konfirmasi-pesanan').val();
        console.log(id)
        var form_data = {
            _token:$('#token').val(),
            id_pesanan:$('#id-konfirmasi-pesanan').val(),
            id_barang:$('#id-barang').val(),
            jenis_stok:$('#jenis-stock').val(),
            estimasi_stok:$('#tanggal-estimasi-stok').val()
        };
        $.ajax({
            type:'POST',
            url:'/admin/custom-pesanan/konfirmasi',
            data:form_data,
            success:function(data){
                console.log(data)
                notification_badge();
                $('#custom-menunggu-konfirmasi-data').html(data)
                $('#modal-konfirmasi').modal('toggle');
                toastr.options = {
                    "timeOut": "5000",
                }
                toastr['success']('Pesanan ID. '+id+' dikonfirmasi');
            }
        })
    })

    $('#harga-barang').on('input', function(){
        if ($(this).val().length != 0) {
            var jumlah_barang = parseInt($('#jumlah_barang').val());
            var harga_barang = parseInt($(this).val());
            $('#total-harga').val(harga_barang * jumlah_barang);
        }else{
            $('#total-harga').val(0);
        }
    })

    $('#tanggal-estimasi-stok').datetimepicker({
        timepicker: false,
        datepicker: true,
        format: 'd M Y',
        onShow: function(ct){
            this.setOptions({
                minDate: 'today'
            })
        }
    })

    $('#modal-batal').on('show.bs.modal', function(e){
        var button = $(e.relatedTarget);
        var id_pesanan = button.data('idpesanan')
        var modal = $(this);
        modal.find('.modal-body #id-pesanan').val(id_pesanan)
    })

    $('#form-batal-pesanan').on('submit', function(e){
        e.preventDefault();
        var id = $('#id-pesanan').val();
        var form_data = {
            _token:$('#token').val(),
            id_pesanan:$('#id-pesanan').val(),
            alasan_pembatalan:$('#alasan_pembatalan').val(),
        };
        $.ajax({
            type:'POST',
            url:'/admin/pesanan/batal',
            data:form_data,
            success:function(data){
                notification_badge();
                $('#custom-menunggu-konfirmasi-data').html(data)
                $('#modal-batal').modal('toggle');
                toastr.options = {
                    "timeOut": "5000",
                }
                toastr['error']('Pesanan ID. '+id+' dibatalkan');
            }
        })
    })

</script>

@endsection
