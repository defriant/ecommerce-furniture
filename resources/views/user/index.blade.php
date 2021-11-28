@extends('layouts.user_ui')
@section('content')

<div class="top-kategori">
    <button id="all" class="btn-kategori active"><h5 style="font-size: 16px">All</b></h5></button>
    <button id="kitchen-set" class="btn-kategori"><h5 style="font-size: 16px">Kitchen Set</b></h5></button>
    <button id="tempat-tidur" class="btn-kategori"><h5 style="font-size: 16px">Tempat Tidur</b></h5></button>
    <button id="lemari" class="btn-kategori"><h5 style="font-size: 16px">Lemari</b></h5></button>
    <button id="meja" class="btn-kategori"><h5 style="font-size: 16px">Meja</b></h5></button>
    <button id="kursi" class="btn-kategori"><h5 style="font-size: 16px">Kursi</b></h5></button>
    @auth
    <button id="custom-pesanan" class="btn-kategori"><h5 style="font-size: 16px">Custom</b></h5></button>
    @endauth
</div>
<div class="product-easy">
    <div class="container">
        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                <div class="title-kategori">
                    <h3 style="color: #999"><b>Semua Produk</b></h3>
                    <hr>
                </div>
                <div class="resp-tabs-container">
                    <div id="product-loader" style="text-align: center; margin-top:150px; margin-bottom: 150px; display:none">
                        <div class="loadingio-spinner-dual-ring-r5iq5osejl">
                            <div class="ldio-c34g0uje79h">
                                <div></div>
                                <div>
                                    <div></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="product-data">
                        @include('user.product_data')
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>

@endsection
