<?php
include "koneksi.php";
if (isset($_POST['kendaraan'])) {
    $kendaraan = $_POST["kendaraan"];

    $sql = "select * from merk_kendaraan where id_kendaraan=$kendaraan";

    $hasil = mysqli_query($kon, $sql);
    $no = 0;
    while ($data = mysqli_fetch_array($hasil)) {
        ?>
        <option value="<?php echo  $data['id_merk_kendaraan']; ?>"><?php echo $data['merk_kendaraan']; ?></option>
        <?php
    }
}
if (isset($_POST['merk'])) {
    $merk = $_POST["merk"];

    $sql = "select * from tipe_kendaraan where id_merk_kendaraan=$merk";

    $hasil = mysqli_query($kon, $sql);
    $no = 0;
    while ($data = mysqli_fetch_array($hasil)) {
        ?>
        <option><?php echo $data['tipe_kendaraan']; ?></option>
        <?php
    }
}

?>