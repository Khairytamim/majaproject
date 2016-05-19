<div class="row">
<div class="col s12 l9 panel-divider">
  <div class="card-panel lighten-2">
    <div class="row" style="margin-bottom:0px;">
      <div class="col s12" style="padding:10px">
        <ul class="tabs">
          <li class="tab col s4"><a class="active" href="#tab1">Login</a></li>
          <li class="tab col s4"><a href="#tab2">Beli Langsung</a></li>
        </ul>
      </div>
    <div class="row" style="padding:10px; margin-bottom:0px;">
      <div id="tab1" class="col s12">
         <div class="col l10 m12 s12" style="padding: 1em">
            <form class="col s12" action="<?php echo base_url();?>Home/verifikasi_login_user" method="post">
                      <div class="input-field col s12">
                         <input name="email" type="text" placeholder="e.g. fikry@seveid.com">
                         <label >Email</label>
                      </div>
                      <div class="input-field col s12">
                         <input  name="password" type="password" placeholder="*****">
                         <label>Password</label>
                      </div>
                       <button type="submit" class="waves-effect waves-light btn" style="margin-top: 2em">LOGIN</button> 
                       <!--button type="submit" class="waves-effect waves-light btn btn-red" style="margin-top: 2em">LOGIN GOOGLE</button-->
            </form>
         </div>
        </div>
      </div>
    <div id="tab2" class="col s12">
        <div class="row">
         <div class="col l12 m12 s12">
           <form action="<?php echo base_url();?>Cart/tambah_transaksi_submit/" method="post">
              <div class="input-field col s12">
                 <input name="ukuran" type="text" class="validate" placeholder="M">
                 <label for="ukuran">Ukuran</label>
              </div>
              <div class="input-field col s12">
                 <input  name="nama_transaksi" type="text" class="validate" placeholder="Fikry Khairytamim">
                 <label for="nama_transaksi">Nama Pembeli</label>
              </div>
              <div class="input-field col s12">
                 <input  name="kontak_transaksi" type="text" class="validate" placeholder="081703434377">
                 <label for="kontak_transaksi">Nomor HP Pembeli</label>
              </div>
              <div class="input-field col s12">
                 <input  name="email_transaksi" type="text" class="validate" placeholder="fikry.labsky08@gmail.com">
                 <label for="email_transaksi">Email Pembeli</label>
              </div>
              <div class="input-field col s6">
                 <input  name="provinsi_transaksi" type="text" class="validate" placeholder="Jawa Timur">
                 <label for="email_transaksi">Provinsi</label>
              </div>
              <div class="input-field col s6">
                 <input  name="kota_transaksi" type="text" class="validate" placeholder="Surabaya">
                 <label for="email_transaksi">Kota/Kabupaten</label>
              </div>
              <div class="input-field col s12">
                 <textarea name="alamat_transaksi" class="materialize-textarea" placeholder="Jalan Sukolilo Kasih Raya No.14 - 60111"></textarea>
                 <label for="alamat">Alamat Pembeli - Kode Pos</label>
              </div>
               <button type="submit" class="waves-effect waves-light btn grey darken-1" style="width: 100%;">PESAN</button>
            </form>
          </div>
        </div>

    </div>
	
  </div>
</div>


</div>
<div class="col s12 l3" style="border: solid 1px lightgrey; padding: 1em">
    <h5>Detail Pesanan</h5>
    <div class="col s6">
        <p>
            Subtotal:<br>
        </p>
    </div>
    <div class="col s6">
        <p>
            Rp 666.666<br>
        </p>
    </div>
</div>
</div>
</div>
</div>
</div>