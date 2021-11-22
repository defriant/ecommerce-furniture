
$('#form-bukti-pembayaran').on('submit', function(e){
    e.preventDefault();
    if ($('#bukti-pembayaran-input').val().length == 0) {
        $('#preview-bukti-pembayaran').addClass('invalid');
        $('#foto-bukti-pembayaran-invalid').show();
    }else{
        id_pesanan = $('#id-pesanan').val();
        var form_data = new FormData($(this)[0]);
        $.ajax({
            type:'POST',
            url:'/upload-bukti-pembayaran',
            data:form_data,
            contentType: false,
            processData: false,
            success:function(data){
                status_pesanan(id_pesanan);
                $('#bukti-pembayaran-upload').modal('toggle');
                toastr.options = {
                    "timeOut": "5000",
                }
                toastr['success']('Berhasil upload bukti pembayaran');
            }
        })
    }
})

function status_pesanan(id_pesanan){
    $.ajax({
        type:'GET',
        url:'/get-status-pesanan/'+id_pesanan,
        success:function(data){
            $('#status-pesanan-'+id_pesanan).html(data);
        }
    })
}

function status_pesanan_custom(id_pesanan){
    $.ajax({
        type:'GET',
        url:'/get-status-pesanan/'+id_pesanan,
        success:function(data){
            $('#status-pesanan-'+id_pesanan).html(data);
        }
    })
}

$('#bukti-pembayaran-input').on('input', function(){
    $('#preview-bukti-pembayaran').removeClass('invalid');
    $('#foto-bukti-pembayaran-invalid').hide();
})

$('#view-bukti-pembayaran').on('show.bs.modal', function(e){
    var button = $(e.relatedTarget);
    var view = button.data('view');
    var modal = $(this);
    modal.find('.modal-body #view-bukti-pembayaran').attr('src', view);
})

function pesanan_selesai(id){
    $.ajax({
        type:'get',
        url:'/pesanan/'+id+'/selesai',
        success:function(){
            status_pesanan(id);
            toastr.options = {
                "timeOut": "5000",
            }
            toastr['success']('Pesanan selesai, terimakasih telah berbelanja di toko kami &nbsp;<i class="far fa-smile"></i>');
        }
    })
}