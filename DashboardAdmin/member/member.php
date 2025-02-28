<?php
session_start();

if(!isset($_SESSION["signIn"]) ) {
  header("Location: ../../sign/admin/sign_in.php");
  exit;
}
require "../../config/config.php";

$member = queryReadData("SELECT * FROM member");

if(isset($_POST["search"]) ) {
  $member = searchMember($_POST["keyword"]);
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../../css/member.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <script src="https://kit.fontawesome.com/de8de52639.js" crossorigin="anonymous"></script>
     <title>Member terdaftar</title>
     <link rel="icon" href="../../assets/book.png" type="image/png">
  </head>
  <body>
    <nav class="navbar fixed-top  shadow-sm">
      <div class="container-fluid p-1">
        <a class="navbar-brand" href="#">
          <img src="../../assets/logodelvira.png" alt="logo" width="150px">
        </a>
        
        <a class="btn btn-tertiary" href="../dashboardAdmin.php">Dashboard</a>
      </div>
    </nav>
    
    <div class="p-4 mt-5">
      <!--search engine --->
     <form action="" method="post" class="mt-5">
       <div class="input-group d-flex justify-content-end mb-3">
         <input class="border p-2 rounded rounded-end-0 bg-tertiary" type="text" name="keyword" id="keyword" placeholder="cari data member...">
         <button class="border border-start-0 bg-light rounded rounded-start-0" type="submit" name="search"><i class="fa-solid fa-magnifying-glass"></i></button>
       </div>
      </form>
      
      <h3>List Of Member</h3>
      <div class="table-responsive mt-3" >
        <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th class="list">Nisn</th>
            <th class="list">Kode</th>
            <th class="list">Nama</th>
            <th class="list">Jenis Kelamin</th>
            <th class="list">Kelas</th>
            <th class="list">Jurusan</th>
            <th class="list">No Telepon</th>
            <th class="list">Pendaftaran</th>
            <th class="list">Delete</th>
          </tr>
        </thead>
      <?php foreach($member as $item) : ?>
      <tr>
        <td><?=$item["nisn"];?></td>
        <td><?=$item["kode_member"];?></td>
        <td><?=$item["nama"];?></td>
        <td><?=$item["jenis_kelamin"];?></td>
        <td><?=$item["kelas"];?></td>
        <td><?=$item["jurusan"];?></td>
        <td><?=$item["no_tlp"];?></td>
        <td><?=$item["tgl_pendaftaran"];?></td>
        <td>
          <div class="action">
             <a href="deleteMember.php?id=<?= $item["nisn"]; ?>" class="btn btn-danger" onclick="return confirm('Yakin ingin menghapus data member ?');">Delete<i class="fa-solid fa-trash"></i></a>
           </div>
        </td>
       </tr>
      <?php endforeach;?>
    </table>
    </div>
  </div>
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>