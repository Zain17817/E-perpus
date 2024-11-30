<?php
// Variabel PHP
$title = "Dashboard Administrator";
$username = "Anonymous";
$role = "Administrator";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="top-bar">
        <div class="logo"> <img src="logo perpus.png">
            <div class="nama">E - Perpus</div></div>
    </div>
    <div class="container">
        <div class="sidebar">
            <div class="user">
                <img src="pp.webp" alt="User Image" class="avatar">
                <div class="username">
                    <p>Anonoymous</p>
                    <p class="status">Administrator</p>
                </div>
            </div>
            <div class="comment">
                <p>MAIN NAVIGATION</p>
            </div>
            <nav>
                <ul>
                    <li><a href="index.php">Dashboard</a></li>
                    <li><a href="#">Kelola Data</a></li>
                    <li><a href="#">Log Data</a></li>
                    <li><a href="#">Laporan</a></li>
                    <li><a href="#">Settings</a></li>
                    <li><a href="#">Logout</a></li>
                </ul>
            </nav>
        </div>
        <div class="main-content">
            <h1><?php echo $title; ?></h1>
            <div class="user-info">
                <p>Welcome, <?php echo $username; ?>!</p>
                <span class="role"><?php echo $role; ?></span>
            </div>

            <div class="card-container">
            <a href="#">
                    <div class="card blue">
                        <img src="buku.png" class="vektor">
                        <h2>Buku</h2>
                        <p>Semua buku, satu tempat</p>
                    </div>
                </a>

                <a href="/e-perpus/buku/index.php">
                    <div class="card orange">
                        <img src="orang.png" class="vektor">
                        <h2>Anggota</h2>
                        <p>Daftar anggota</p>
                    </div>
                </a>
                
                <a href="#">
                    <div class="card red">
                        <img src="data.png" class="vektor">
                        <h2>Laporan</h2>
                        <p>Data lengkap, akses cepat</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</body>
</html>
