<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Barang;
use App\Models\Pesanan;
use App\Models\PesananBarang;
use App\Models\Notifikasi;
use Pusher\Pusher;
use Auth;
use Session;
use Str;

class AdminController extends Controller
{
    public function notification_badge()
    {
        // Pesanan
        $menunggu_konfirmasi = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
        $validasi_pembayaran = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_validasi')->get();
        $pengiriman = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'validasi')->get();
        
        // Custom
        $custom_menunggu_konfirmasi = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_konfirmasi')->get();
        $custom_validasi_pembayaran = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_validasi')->get();
        $custom_menunggu_barang = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'validasi')->get();
        $custom_pengiriman = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'stok_ready')->get();

        $data = compact(
            'menunggu_konfirmasi',
            'validasi_pembayaran',
            'pengiriman',
            'custom_menunggu_konfirmasi',
            'custom_validasi_pembayaran',
            'custom_menunggu_barang',
            'custom_pengiriman'
        );
        return response()->json($data);
    }

    public function produk()
    {
        $data = Barang::all();
        return view('admin.produk', compact('data'));
    }

    public function produk_data()
    {
        $data = Barang::all();
        return view('admin.produk_data', compact('data'));
    }

    public function kitchen_set()
    {
        $data = Barang::where('jenis', 'kitchen_set')->get();
        return view('admin.produk_data', compact('data'));
    }

    public function tempat_tidur()
    {
        $data = Barang::where('jenis', 'tempat_tidur')->get();
        return view('admin.produk_data', compact('data'));
    }

    public function lemari()
    {
        $data = Barang::where('jenis', 'lemari')->get();
        return view('admin.produk_data', compact('data'));
    }

    public function meja()
    {
        $data = Barang::where('jenis', 'meja')->get();
        return view('admin.produk_data', compact('data'));
    }

    public function kursi()
    {
        $data = Barang::where('jenis', 'kursi')->get();
        return view('admin.produk_data', compact('data'));
    }

    public function tambah_produk(Request $request)
    {
        // Proses produk gambar
        $time = time();
        $filenameWithExt = $request->file('gambar')->getClientOriginalName();
        $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
        $extension = $request->file('gambar')->getClientOriginalExtension();
        $request->file('gambar')->move('user/barang_img/',$filename.'_'.$time.'.'.$extension);
        $gambar = $filename.'_'.$time.'.'.$extension;
        
        $data_id_barang = Barang::where('id', 'like', "%".Str::slug($request->nama)."%")->get();
        if ($data_id_barang->count() > 0) {
            $new_id = $data_id_barang->count() + 1;
            $id_barang = Str::slug($request->nama).'-'.$new_id;
        }else{
            $id_barang = Str::slug($request->nama);
        }

        // Input database
        Barang::create([
            'id' => $id_barang,
            'jenis' => $request->kategori,
            'nama' => $request->nama,
            'harga' => $request->harga,
            'stock' => $request->stock,
            'gambar' => $gambar,
            'deskripsi' => $request->deskripsi
        ]);

        return response()->json();
    }

    public function update_produk(Request $request, $id)
    {
        $data_id_barang = Barang::where('id', 'like', "%".Str::slug($request->nama)."%")->get();
        if ($data_id_barang->count() > 0) {
            $new_id = $data_id_barang->count() + 1;
            $id_barang = Str::slug($request->nama).'-'.$new_id;
        }else{
            $id_barang = Str::slug($request->nama);
        }

        if ($request->hasFile('gambar')) {
            $time = time();
            $filenameWithExt = $request->file('gambar')->getClientOriginalName();
            $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
            $extension = $request->file('gambar')->getClientOriginalExtension();
            $request->file('gambar')->move('user/barang_img/',$filename.'_'.$time.'.'.$extension);
            $gambar = $filename.'_'.$time.'.'.$extension;

            Barang::where('id', $id)->update([
                'id' => $id_barang,
                'jenis' => $request->kategori,
                'nama' => $request->nama,
                'harga' => $request->harga,
                'stock' => $request->stock,
                'gambar' => $gambar,
                'deskripsi' => $request->deskripsi,
            ]);

            return response()->json();
        }else{
            Barang::where('id', $id)->update([
                'id' => $id_barang,
                'jenis' => $request->kategori,
                'nama' => $request->nama,
                'harga' => $request->harga,
                'stock' => $request->stock,
                'deskripsi' => $request->deskripsi,
            ]);
            
            return response()->json();
        }
    }

    public function delete_produk($id)
    {
        Barang::where('id', $id)->delete();
    }

    public function cari_produk($id)
    {
        $data = Barang::where('nama', 'like', "%".$id."%")->get();
        return view('admin.produk_data', compact('data'));
    }

    public function menunggu_konfirmasi()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.pesanan.menunggu-konfirmasi', compact('data'));
    }

    public function menunggu_konfirmasi_data()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.pesanan.menunggu-konfirmasi-data', compact('data'));
    }

    public function custom_menunggu_konfirmasi()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.custom_pesanan.menunggu-konfirmasi', compact('data'));
    }

    public function custom_menunggu_konfirmasi_data()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.custom_pesanan.menunggu-konfirmasi-data', compact('data'));
    }

    public function custom_pesanan_konfirmasi(Request $request)
    {
        $data_pesanan = Pesanan::find($request->id_pesanan);
        $user_id = $data_pesanan->user_id;
        
        Pesanan::where('id', $request->id_pesanan)->update([
            'status' => 'konfirmasi',
            'konfirmasi' => date('Y-m-d H:i:s'),
            'estimasi_stok' => date('Y-m-d', strtotime($request->estimasi_stok))
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'custom_pesanan',
            'notif' => 'Pesananmu telah dikonfirmasi oleh admin',
            'url' => '/pesanan/'.$request->id_pesanan,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $request->id_pesanan];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.custom_pesanan.menunggu-konfirmasi-data', compact('data'));
    }

    public function konfirmasi_pesanan($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $id)->update([
            'status' => 'konfirmasi',
            'konfirmasi' => date('Y-m-d H:i:s')
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'pesanan',
            'notif' => 'Pesananmu telah dikonfirmasi oleh admin',
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
        return view('admin.pesanan.menunggu-konfirmasi-data', compact('data'));
    }

    public function batal_pesanan(Request $request)
    {
        $data_pesanan = Pesanan::find($request->id_pesanan);
        $user_id = $data_pesanan->user_id;
        
        Pesanan::where('id', $request->id_pesanan)->update([
            'status' => 'batal',
            'alasan_batal' => $request->alasan_pembatalan
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => $data_pesanan->jenis_pesanan,
            'notif' => 'Pesananmu dibatalkan oleh admin, Note : '.$request->alasan_pembatalan,
            'url' => '/pesanan/'.$request->id_pesanan,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $request->id_pesanan];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        if ($data_pesanan->jenis_pesanan == 'pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
            return view('admin.pesanan.menunggu-konfirmasi-data', compact('data'));
        }elseif ($data_pesanan->jenis_pesanan == 'custom_pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_konfirmasi')->get();
            return view('admin.custom_pesanan.menunggu-konfirmasi-data', compact('data'));
        }
        
    }

    public function validasi_pembayaran()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_validasi')->get();
        return view('admin.pesanan.validasi-pembayaran', compact('data'));
    }

    public function validasi_pembayaran_data()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_validasi')->get();
        return view('admin.pesanan.validasi-pembayaran-data', compact('data'));
    }

    public function custom_validasi_pembayaran()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_validasi')->get();
        return view('admin.custom_pesanan.validasi-pembayaran', compact('data'));
    }

    public function custom_validasi_pembayaran_data()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_validasi')->get();
        return view('admin.custom_pesanan.validasi-pembayaran-data', compact('data'));
    }

    public function pembayaran_valid($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $id)->update([
            'status' => 'validasi',
            'validasi' => date('Y-m-d H:i:s')
        ]);

        if ($data_pesanan->jenis_pesanan == 'pesanan') {
            foreach ($data_pesanan->pesananbarang as $pb) {
                $data_barang = Barang::find($pb->barang_id);
                Barang::where('id', $pb->barang_id)->update([
                    'stock' => $data_barang->stock - $pb->jumlah,
                    'terjual' => $data_barang->terjual + $pb->jumlah
                ]);
            }
            PesananBarang::where('pesanan_id', $id)->update([
                'terjual' => 'terjual'
            ]);
        }

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'pembayaran',
            'notif' => 'Pembayaran telah divalidasi',
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        if ($data_pesanan->jenis_pesanan == 'pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_validasi')->get();
            return view('admin.pesanan.validasi-pembayaran-data', compact('data'));
        }elseif ($data_pesanan->jenis_pesanan == 'custom_pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'menunggu_validasi')->get();
            return view('admin.custom_pesanan.validasi-pembayaran-data', compact('data'));
        }
        
    }

    public function pembayaran_invalid($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        $foto_bukti_pembayaran = public_path('user/bukti_pembayaran/'.$data_pesanan->bukti_pembayaran);
        unlink($foto_bukti_pembayaran);

        Pesanan::where('id', $id)->update([
            'status' => 'validasi_invalid',
            'bukti_pembayaran' => null
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'pembayaran',
            'notif' => 'Bukti pembayaran tidak valid',
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'menunggu_validasi')->get();
        return view('admin.pesanan.validasi-pembayaran-data', compact('data'));
    }

    public function custom_menunggu_barang()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'validasi')->get();
        return view('admin.custom_pesanan.menunggu-barang', compact('data'));
    }

    public function update_estimasi_barang(Request $request)
    {
        $data_pesanan = Pesanan::find($request->id_pesanan);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $request->id_pesanan)->update([
            'estimasi_stok' => date('Y-m-d', strtotime($request->estimasi_stok))
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'custom_pesanan',
            'notif' => 'Admin merubah estimasi selesai pengerjaan barang.',
            'url' => '/pesanan/'.$request->id_pesanan,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $request->id_pesanan];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'validasi')->get();
        return view('admin.custom_pesanan.menunggu-barang-data', compact('data'));
    }

    public function custom_stok_ready($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $id)->update([
            'status' => 'stok_ready',
            'stok_ready' => date('Y-m-d H:i:s')
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => 'custom_pesanan',
            'notif' => 'Barang custom pesananmu siap untuk dikirim',
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);
        
        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'validasi')->get();
        return view('admin.custom_pesanan.menunggu-barang-data', compact('data'));
    }

    public function pengiriman()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'validasi')->get();
        return view('admin.pesanan.pengiriman', compact('data'));
    }

    public function custom_pengiriman()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'stok_ready')->get();
        return view('admin.custom_pesanan.pengiriman', compact('data'));
    }

    public function antar($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $id)->update([
            'status' => 'pengiriman',
            'pengiriman' => date('Y-m-d H:i:s')
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => $data_pesanan->jenis_pesanan,
            'notif' => 'Pesananmu sedang dikirim ke '.$data_pesanan->alamat,
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);
        
        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        if ($data_pesanan->jenis_pesanan == 'pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'validasi')->get();
            return view('admin.pesanan.pengiriman-data', compact('data'));
        }elseif ($data_pesanan->jenis_pesanan == 'custom_pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'stok_ready')->get();
            return view('admin.custom_pesanan.pengiriman-data', compact('data'));
        }
    }

    public function konfirmasi_tiba_di_tujuan()
    {
        $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'pengiriman')->get();
        return view('admin.pesanan.tiba-di-tujuan', compact('data'));
    }

    public function custom_konfirmasi_tiba_di_tujuan()
    {
        $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'pengiriman')->get();
        return view('admin.custom_pesanan.tiba-di-tujuan', compact('data'));
    }

    public function tiba_di_tujuan($id)
    {
        $data_pesanan = Pesanan::find($id);
        $user_id = $data_pesanan->user_id;

        Pesanan::where('id', $id)->update([
            'status' => 'tiba_di_tujuan',
            'tiba_di_tujuan' => date('Y-m-d H:i:s')
        ]);

        Notifikasi::create([
            'user_id' => $user_id,
            'jenis' => $data_pesanan->jenis_pesanan,
            'notif' => 'Pesananmu telah tiba di tujuan',
            'url' => '/pesanan/'.$id,
            'is_read' => 0
        ]);

        // Kirim notif ke user
        $options = array(
            'cluster' => 'ap1',
            'useTLS' => true,
        );
        $pusher = new Pusher(
            env('PUSHER_APP_KEY'),
            env('PUSHER_APP_SECRET'),
            env('PUSHER_APP_ID'),
            $options
        );
        $data_notif = ['to_user_id' => $user_id, 'pesanan_id' => $id];
        $pusher->trigger('user-channel', 'pesanan-event', $data_notif);

        if ($data_pesanan->jenis_pesanan == 'pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'pesanan')->where('status', 'pengiriman')->get();
            return view('admin.pesanan.tiba-di-tujuan-data', compact('data'));
        }elseif ($data_pesanan->jenis_pesanan == 'custom_pesanan') {
            $data = Pesanan::where('jenis_pesanan', 'custom_pesanan')->where('status', 'pengiriman')->get();
            return view('admin.custom_pesanan.tiba-di-tujuan-data', compact('data'));
        }
    }

    public function semua_transaksi()
    {
        $pesanan = Pesanan::where('status', '!=', 'menunggu_konfirmasi')->orderByDesc('created_at')->get();
        return view('admin.semua-transaksi', compact('pesanan'));
    }
    
    public function detail_pesanan($id)
    {
        $pesanan = Pesanan::find($id);
        return view('admin.detail-pesanan', compact('pesanan'));
    }

    public function semua_transaksi_data()
    {
        $pesanan = Pesanan::where('status', '!=', 'menunggu_konfirmasi')->orderByDesc('created_at')->get();
        return view('admin.semua-transaksi-data', compact('pesanan'));
    }

    public function cari_pesanan($id)
    {
        $pesanan = Pesanan::where('id', 'like', "%".$id."%")->orderByDesc('created_at')->get();
        return view('admin.semua-transaksi-data', compact('pesanan'));
    }

}
