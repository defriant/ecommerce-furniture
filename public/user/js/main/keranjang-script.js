
$(window).on('load', function(){
    get_keranjang_data();
})

function get_keranjang_data(){
    $.ajax({
        type:'get',
        url:'/keranjang-data',
        success:function(data){
            $('#keranjang-loader').hide();
            $('#keranjang-data').html(data);
            btn_belanja();
            delete_from_cart();
            jumlah_tambah();
            jumlah_kurang();
            lanjut_bayar();
            $('[data-toggle="tooltip"]').tooltip()
        }
    })
}

function btn_belanja(){
    $('.btn-belanja').on('click', function(){
        window.location = '/';
    })
}

function delete_from_cart(){
    $('.delete-from-cart').on('click', function(){
        var jumlah_keranjang = parseInt($('#badge-keranjang').html());
        var id = $(this).data('idkeranjang');
        $.ajax({
            type:'get',
            url:'/hapus-keranjang/'+id,
            success:function(data){
                $('#keranjang-data').html(data);
                if (jumlah_keranjang > 1) {
                    $('#badge-keranjang').html(jumlah_keranjang - 1);
                }else if(jumlah_keranjang <= 1){
                    $('#badge-keranjang').remove();
                }
                delete_from_cart();
                jumlah_tambah();
                jumlah_kurang();
                btn_belanja();
                $('[data-toggle="tooltip"]').tooltip()
            }
        })
    })
}

function jumlah_tambah(){
    $('.value-plus').on('click', function(){
        var keranjang_id = $(this).data('idkeranjang');
        var jumlah = parseInt($('#'+keranjang_id+' span').html());
        $('#'+keranjang_id+' span').html(jumlah + 1);

        var jumlah_produk = $('#'+keranjang_id+' span').html();
        $.ajax({
            type:'get',
            url:'/keranjang-produk-update/'+keranjang_id+'/'+jumlah_produk,
            success:function(data){
                $('#keranjang-data').html(data);
                delete_from_cart();
                jumlah_tambah();
                jumlah_kurang();
                lanjut_bayar();
                $('[data-toggle="tooltip"]').tooltip()
            }
        });
    })
}

function jumlah_kurang(){
    $('.value-minus').on('click', function(){
        var keranjang_id = $(this).data('idkeranjang');
        var jumlah = parseInt($('#'+keranjang_id+' span').html());
        if (jumlah > 1) {
            $('#'+keranjang_id+' span').html(jumlah - 1);

            var jumlah_produk = $('#'+keranjang_id+' span').html();
            $.ajax({
                type:'get',
                url:'/keranjang-produk-update/'+keranjang_id+'/'+jumlah_produk,
                success:function(data){
                    $('#keranjang-data').html(data);
                    delete_from_cart();
                    jumlah_tambah();
                    jumlah_kurang();
                    lanjut_bayar();
                    $('[data-toggle="tooltip"]').tooltip()
                }
            });
        }
    })
}

function lanjut_bayar(){
    $('.lanjut-bayar').on('click', function(){
        window.location = '/informasi-pesanan'
    })
}
