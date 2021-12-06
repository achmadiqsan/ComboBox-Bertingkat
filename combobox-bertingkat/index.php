<!DOCTYPE html>
<html>
<head>
    <title>Menampilkan Data pada form berdasarkan pilihan Combo Box di PHP</title>
    <!-- Load file CSS Bootstrap offline -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
       <!-- Load file Jquery Secara offiline -->
    <script src="js/jquery-3.4.1.min.js"></script>

</head>
<body>
<div class="container">
    <h4>Membuat Combobox Bertingkat di PHP</h4>

        <div class="form-group">
            <label for="sel1">Pilih Kendaraan:</label>
            <select class="form-control" name="kendaraan" id="kendaraan">
                <?php
                include "koneksi.php";
                //Perintah sql untuk menampilkan semua data pada tabel jurusan
                $sql="select * from kendaraan";
                $hasil=mysqli_query($kon,$sql);
                while ($data = mysqli_fetch_array($hasil)) {
                    ?>
                    <option  value="<?php echo $data['id_kendaraan'];?>"><?php echo $data['nama_kendaraan'];?></option>
                    <?php
                }
                ?>
            </select>
        </div>

        <div class="form-group">
            <label for="sel1">Pilih Merk:</label>
            <select class="form-control" name="merk" id="merk">
                <!-- Merk motor akan diload menggunakan ajax, dan ditampilkan disini -->
            </select>
        </div>
        <div class="form-group">
            <label for="sel1">Tipe:</label>
            <select class="form-control" name="tipe" id="tipe">
                <!-- Tipe motor akan diload menggunakan ajax, dan ditampilkan disini -->
            </select>
        </div>
    <script>

        $("#kendaraan").change(function(){
            // variabel dari nilai combo box kendaraan
            var id_kendaraan = $("#kendaraan").val();

            // Menggunakan ajax untuk mengirim dan dan menerima data dari server
            $.ajax({
                type: "POST",
                dataType: "html",
                url: "ambil-data.php",
                data: "kendaraan="+id_kendaraan,
                success: function(data){
                   $("#merk").html(data);
                }
            });
        });

        $("#merk").change(function(){
            // variabel dari nilai combo box merk
            var id_merk = $("#merk").val();

            // Menggunakan ajax untuk mengirim dan dan menerima data dari server
            $.ajax({
                type: "POST",
                dataType: "html",
                url: "ambil-data.php",
                data: "merk="+id_merk,
                success: function(data){
                    $("#tipe").html(data);
                }
            });
        });
    </script>

</div>
</body>
</html>