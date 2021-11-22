@extends('layouts.admin_ui')
@section('content')

<div class="main-content">
    <div class="container-fluid">
        <!-- OVERVIEW -->
        <div class="panel panel-headline">
            <div class="panel-heading">
                <h4 class="pesanan-title"><b>CUSTOM PESANAN / <span style="color: #00AAFF">MENUNGGU BARANG</span></b></h4>
            </div>
            <div class="panel-body" style="margin-top: 20px">
                <div class="row">
                    <div class="pesanan-list">
                        <div id="custom-menunggu-barang-data">
                            @include('admin.custom_pesanan.menunggu-barang-data')
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END OVERVIEW -->
    </div>
</div>

{{-- Modal update estimasi --}}
<div class="modal fade" id="modal-update-estimasi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: -10px"><span aria-hidden="true">&times;</span></button>
                <form id="form-update-estimasi" method="POST">
                <input type="hidden" id="token" name="_token" value="{{ csrf_token() }}">
                <input type="hidden" name="id_pesanan" id="id-pesanan" value="">

                <div style="margin-bottom: 30px">
                    <h5 style="margin-top: 20px">Estimasi Selesai Pengerjaan :</h5>
                    <input id="tanggal-estimasi-stok" name="estimasi_stok" type="text" name="total" class="form-control" readonly>
                </div>

                <div style="text-align: right">
                    <button type="submit" class="btn btn-success">Update</button>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

@endsection

@section('scripts')

<script>
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

    $('#modal-update-estimasi').on('show.bs.modal', function(e){
        var button = $(e.relatedTarget);
        var id_pesanan = button.data('idpesanan');
        var modal = $(this);
        modal.find('.modal-body #id-pesanan').val(id_pesanan);
    })

    $('#form-update-estimasi').on('submit', function(e){
        e.preventDefault();
        $.ajax({
            type:'post',
            url:'/admin/custom-pesanan/update-estimasi-barang',
            data:{
                _token:$('#token').val(),
                id_pesanan:$('#id-pesanan').val(),
                estimasi_stok:$('#tanggal-estimasi-stok').val()
            },
            success:function(data){
                $('#modal-update-estimasi').modal('toggle');
                $('#custom-menunggu-barang-data').html(data);
            }
        })
    })

    function stok_ready(id){
        $.ajax({
            type:'get',
            url:'/admin/custom-pesanan/stok-ready/'+id,
            success:function(data){
                notification_badge();
                $('#custom-menunggu-barang-data').html(data)
                toastr.options = {
                    "timeOut": "5000",
                }
                toastr['success'](' Custom Pesanan ID. '+id+' Siap untuk dikirim');
            }
        })
    }

</script>
    
@endsection
