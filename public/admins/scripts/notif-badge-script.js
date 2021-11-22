$(window).on('load', function(){
    notification_badge()
})

function notification_badge(){
    $.ajax({
        type:'get',
        url:'/admin/notification-badge',
        success:function(data){

            // Pesanan
            if (data.menunggu_konfirmasi.length > 0 || data.validasi_pembayaran.length > 0) {
                $('#label-new-pesanan').remove();
                $('#pesanan').append('<span id="label-new-pesanan" class="label label-danger" style="margin-left: 20px; background: rgba(255, 0, 0, 0.781)">NEW</span>')
            }else{
                $('#label-new-pesanan').remove();
            }

            if (data.menunggu_konfirmasi.length > 0) {
                $('#badge-menunggu-konfirmasi').remove();
                $('#menunggu-konfirmasi').append('&nbsp;<span id="badge-menunggu-konfirmasi" class="badge" style="padding:2px 4px">'+data.menunggu_konfirmasi.length+'</span>')
            }else{
                $('#badge-menunggu-konfirmasi').remove();
            }
            
            if (data.validasi_pembayaran.length > 0) {
                $('#badge-validasi-pembayaran').remove();
                $('#validasi-pembayaran').append('&nbsp;<span id="badge-validasi-pembayaran" class="badge" style="padding:2px 4px">'+data.validasi_pembayaran.length+'</span>')
            }else{
                $('#badge-validasi-pembayaran').remove();
            }

            if (data.pengiriman.length > 0) {
                $('#badge-pengiriman').remove();
                $('#pengiriman').append('&nbsp;<span id="badge-pengiriman" class="badge" style="padding:2px 4px; background: rgb(0, 174, 255)">'+data.pengiriman.length+'</span>')
            }else{
                $('#badge-pengiriman').remove();
            }

            // Custom
            if (data.custom_menunggu_konfirmasi.length > 0 || data.custom_validasi_pembayaran.length > 0) {
                $('#label-new-custom-pesanan').remove();
                $('#custom-pesanan').append('<span id="label-new-custom-pesanan" class="label label-danger" style="margin-left: 20px; background: rgba(255, 0, 0, 0.781)">NEW</span>')
            }else{
                $('#label-new-custom-pesanan').remove();
            }

            if (data.custom_menunggu_konfirmasi.length > 0) {
                $('#badge-custom-menunggu-konfirmasi').remove();
                $('#custom-menunggu-konfirmasi').append('&nbsp;<span id="badge-custom-menunggu-konfirmasi" class="badge" style="padding:2px 4px">'+data.custom_menunggu_konfirmasi.length+'</span>')
            }else{
                $('#badge-custom-menunggu-konfirmasi').remove();
            }
            
            if (data.custom_validasi_pembayaran.length > 0) {
                $('#badge-custom-validasi-pembayaran').remove();
                $('#custom-validasi-pembayaran').append('&nbsp;<span id="badge-custom-validasi-pembayaran" class="badge" style="padding:2px 4px">'+data.custom_validasi_pembayaran.length+'</span>')
            }else{
                $('#badge-custom-validasi-pembayaran').remove();
            }

            if (data.custom_menunggu_barang.length > 0) {
                $('#badge-custom-menunggu-barang').remove();
                $('#custom-menunggu-barang').append('&nbsp;<span id="badge-custom-menunggu-barang" class="badge" style="padding:2px 4px; background: rgb(0, 174, 255)">'+data.custom_menunggu_barang.length+'</span>')
            }else{
                $('#badge-custom-menunggu-barang').remove();
            }

            if (data.custom_pengiriman.length > 0) {
                $('#badge-custom-pengiriman').remove();
                $('#custom-pengiriman').append('&nbsp;<span id="badge-custom-pengiriman" class="badge" style="padding:2px 4px; background: rgb(0, 174, 255)">'+data.custom_pengiriman.length+'</span>')
            }else{
                $('#badge-custom-pengiriman').remove();
            }
        }
    })
}