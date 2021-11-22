<h5 style="margin-bottom: 10px">Panjang :</h5>
<div class="input-group" style="width: 190px">
    <span id="jumlah-kurang-panjang" class="input-group-addon btn-jumlah-kurang" id="basic-addon2"><i
            class="far fa-minus" style="color: white"></i></span>
    <input type="text" id="jumlah-panjang" name="panjang" value="0" class="form-control"
        aria-describedby="basic-addon2"
        style="text-align: center; border-left: none; border-right: none" onkeypress="return validate_ukuran(event,this.id)">
    <span id="jumlah-tambah-panjang" class="input-group-addon btn-jumlah-kurang" id="basic-addon2"><i
            class="far fa-plus" style="color: white"></i></span>
    <span class="input-group-addon" id="basic-addon2">Meter</span>
</div>

<h5 style="margin-bottom: 10px">Lebar :</h5>
<div class="input-group" style="width: 190px">
    <span id="jumlah-kurang-lebar" class="input-group-addon btn-jumlah-kurang" id="basic-addon2"><i
            class="far fa-minus" style="color: white"></i></span>
    <input type="text" id="jumlah-lebar" name="lebar" value="0" class="form-control" aria-describedby="basic-addon2"
        style="text-align: center; border-left: none; border-right: none" onkeypress="return validate_ukuran(event,this.id)">
    <span id="jumlah-tambah-lebar" class="input-group-addon btn-jumlah-kurang" id="basic-addon2"><i
            class="far fa-plus" style="color: white"></i></span>
    <span class="input-group-addon" id="basic-addon2">Meter</span>
</div>

<h5 style="margin-bottom: 10px">Harga :</h5>
<div class="input-group" style="width: 190px">
    <span class="input-group-addon" id="basic-addon2">Rp </span>
    <input type="text" id="total-harga" name="total_harga" value="" class="form-control" aria-describedby="basic-addon2"
        style="border-left: none;" readonly>
</div>