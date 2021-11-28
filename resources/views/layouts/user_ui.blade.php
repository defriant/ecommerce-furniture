<!DOCTYPE html>
<html>
<head>
<title>Ecommerce</title>

<!-- Fontawesome -->
<link rel="stylesheet" href="{{ asset('FA5PRO-master/css/all.min.css') }}">

<!--  CSRF Token -->
<meta name="csrf-token" content="{{ csrf_token() }}">

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<!-- Vendor style -->
<link href="{{ asset('user/css/bootstrap.css') }}" rel="stylesheet" type="text/css" media="all" />
<link href="{{ asset('user/css/jquery-ui.css') }}" rel="stylesheet" type="text/css" media="all" />
<link href="{{ asset('user/css/pignose.layerslider.css') }}" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="{{ asset('admins/vendor/toastr/toastr.min.css') }}">
<link rel="stylesheet" href="{{ asset('user/css/flexslider.css') }}" type="text/css" media="screen" />
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>

<!-- Main CSS -->
<link href="{{ asset('user/css/vendor.css') }}" rel="stylesheet" type="text/css" media="all" />
<link href="{{ asset('user/css/style.css') }}" rel="stylesheet" type="text/css" media="all" />

</head>
<body>
    <div class="header-bot">
        <div class="container">
            <div class="col-md-3 header-left">
                <h1><a href="/"><img src="{{ asset('logo/Untitled.png') }}"></a></h1>
            </div>
            <div class="col-md-6 head-middle">
                @if (Request::is('/') || Request::is('produk/*'))
                
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1" style="background: white;"><i id="search-icon" class="far fa-search"></i>
                        <i id="search-loading" class="far fa-spinner fa-spin" style="display: none"></i>
                    </span>
                    <input id="search-produk" type="text" class="form-control" placeholder="Search Product ..." aria-describedby="basic-addon1">
                </div>
                
                @endif
                    
                
                
            </div>
            <div class="col-md-3 header-right footer-bottom">
                @auth
                <ul>
                    <li><a href="/pesanan" class="right-menu" title="Pesanan"><i class="far fa-shopping-bag"></i></a></li>
                    <li id="keranjang">
                        @if (Auth::user()->keranjang()->count() > 0)
                            <span id="badge-keranjang" class="badge badge-primary badge-notif">{{ Auth::user()->keranjang()->count() }}</span>
                        @endif
                        <a href="/keranjang" class="right-menu" title="Keranjang"><i class="far fa-shopping-cart"></i></a>
                    </li>
                    <li id="notifikasi">
                        @if (Auth::user()->notifikasi()->where('is_read', 0)->count() > 0)
                            <span id="badge-notifikasi" class="badge badge-danger badge-notif">{{ Auth::user()->notifikasi()->where('is_read', 0)->count() }}</span>
                        @endif
                        <a id="notif-toggle" class="right-menu" style="cursor: pointer"><i class="far fa-bell"></i></a>
                        <div id="notif-box" class="notif-box">
                            <h5>Notifikasi</h5>
                            <div id="notif-item">
                                @include('user.notifikasi')
                            </div>
                        </div>
                    </li>
                    <li>
                        <a id="akun-toggle" class="right-menu" style="cursor: pointer">
                            @if (Auth::user()->image == null)
                                <i class="far fa-user"></i>
                            @else
                                <img src="{{ asset('user/profile_img/'.Auth::user()->image ) }}" class="user_profile">
                            @endif
                        </a>
                        <div id="akun-box" class="akun-box">
                            <h5><i class="far fa-user"></i>&nbsp;&nbsp; {{ Auth::user()->name }}</h5>
                            {{-- <div class="akun-item" id="akun-setting">
                                <h6><i class="far fa-cog"></i>&nbsp;&nbsp; Pengaturan</h6>
                            </div> --}}
                            <div id="user-logout" class="akun-item">
                                <h6><i class="far fa-sign-out"></i>&nbsp;&nbsp; Logout</h6>
                            </div>
                        </div>
                    </li>
                </ul>
                @endauth
                @guest
                <ul>
                    <li class="right-menu-guest">
                        <a class="right-menu" data-toggle="modal" data-target="#myModal4" style="cursor: pointer"><h5>Login</h5></a>
                    </li>
                    |
                    <li class="right-menu-guest">
                        <a href="/register" class="right-menu"><h5>Register</h5></a>
                    </li>
                </ul>
                @endguest
            </div>
            <div class="clearfix"></div>
        </div>
    </div>

    <div class="main">
        @yield('content')
    </div>
    {{-- Footer --}}
    <div class="footer">
        <div class="container">
            <div class="col-md-6 footer-left">
                <div class="sign-grds">
                    <p>Neque porro quisquam est, qui dolorem ipsum quia dolor
                        sit amet, consectetur, adipisci velit, sed quia non 
                        numquam eius modi tempora incidunt ut labore 
                        et dolore magnam aliquam quaerat voluptatem.</p>
                </div>
            </div>
            <div class="col-md-6 footer-right">
                <div class="sign-grds">
                    <div class="sign-gd-two">
                        <h4>Store Information</h4>
                        <ul>
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Address : 1234k Avenue, 4th block, <span>Newyork City.</span></li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i>Email : <a href="mailto:info@example.com">info@example.com</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>Phone : +1234 567 567</li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
            <p class="copy-right">© 2021 Smart Shop. All rights reserved</p>
        </div>
    </div>

    {{-- Modal Login --}}
    <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-info">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                </div>
                <div class="modal-body modal-spa">
                    <div class="login-grids">
                        <div class="login">
                            <div class="login-right">
                                <h3>Sign in with your account</h3>
                                <form id="form-sign-in">
                                    <input type="hidden" name="_token" id="_token" value="{{ csrf_token() }}">
                                    <div class="sign-in">
                                        <h4>Email :</h4>
                                        <input id="account-email" type="text" class="" style="color: black">	
                                        <span id="account-invalid" class="helper-text" style="color: red; display: none;"><i>Email atau password salah</i></span>
                                    </div>
                                    <div class="sign-in">
                                        <h4>Password :</h4>
                                        <input id="account-password" type="password" class="" style="color: black">
                                        {{-- <a href="#">Forgot password?</a> --}}
                                    </div>
                                    <div class="single-bottom">
                                        {{--  --}}
                                    </div>
                                    <div class="sign-in">
                                        <button id="btn-sign-in" class="btn-sign-in" type="submit"><i id="sign-in-loading" class="far fa-spinner fa-spin" style="margin-right: 5px; display: none;"></i>SIGN IN</button>
                                    </div>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <!-- Vendor JS -->
    <script src="{{ asset('user/js/jquery-2.1.4.min.js') }}"></script>
    <script src="https://js.pusher.com/7.0/pusher.min.js"></script>
    <script type="text/javascript" src="{{ asset('user/js/jquery-ui.js') }}"></script>
    <script src="{{ asset('user/js/imagezoom.js') }}"></script>
    <script src="{{ asset('user/js/jquery.flexslider.js') }}"></script>
    <script src="{{ asset('user/js/simpleCart.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('user/js/bootstrap-3.1.1.min.js') }}"></script>
    <script src="{{ asset('user/js/jquery.easing.min.js') }}"></script>
    <script src="{{ asset('admins/vendor/toastr/toastr.min.js') }}"></script>

    <!-- Main JS -->
    <script src="{{ asset('user/js/main/script.js') }}"></script>
    <script src="{{ asset('user/js/main/regis.js') }}"></script>
    <script src="{{ asset('user/js/main/detail-pesanan-script.js') }}"></script>
    <script src="{{ asset('user/js/main/view-script.js') }}"></script>
    <script src="{{ asset('user/js/main/index-script.js') }}"></script>

    @if (Request::is('keranjang'))
        <script src="{{ asset('user/js/main/keranjang-script.js') }}"></script>
    @endif
    
    @yield('scripts')
    
    @auth
    <input type="hidden" id="user-id" value="{{ Auth::user()->id }}">
    <script src="{{ asset('user/js/main/notification-script.js') }}"></script>
    @endauth
</body>
</html>