<!DOCTYPE html>
<html lang="en">

<head>

    <link rel="icon" type="image/png" href="{{ asset('image/logo/yayasan_soposurung_logo.png') }}"/>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Yayasan Soposurung</title>

    <!-- Bootstrap core CSS -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">

    <!-- Custom styles for this template -->
    <link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/index"><img src="{{ asset('image\logo\yayasan_soposurung_logo.png') }}" width="30" height="30" class="d-inline-block align-top" alt="">  Yayasan Soposurung</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Tentang Asrama</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="/visimisi">Visi Misi</a>
                        <a class="dropdown-item" href="/sejarah">Sejarah</a>
                        <a class="dropdown-item" href="/lokasi">Lokasi</a>
                        <a class="dropdown-item" href="/kontak">Kontak</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pamong</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Kepala Asrama</a>
                        <a class="dropdown-item" href="#">Staf Pengajar (Guru)</a>
                        <a class="dropdown-item" href="#">Staf Pembina</a>
                        <a class="dropdown-item" href="#">Staf Pendukung</a>
                        <a class="dropdown-item" href="#">Struktur Organisasi</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Fasilitas</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Akomodasi</a>
                        <a class="dropdown-item" href="#">Belajar</a>
                        <a class="dropdown-item" href="#">Praktikum</a>
                        <a class="dropdown-item" href="#">Kesehatan</a>
                        <a class="dropdown-item" href="#">IT</a>
                        <a class="dropdown-item" href="#">Olahraga</a>
                        <a class="dropdown-item" href="#">Sosial</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Kegiatan</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Rutinias</a>
                        <a class="dropdown-item" href="#">Extrakurikuler</a>
                        <a class="dropdown-item" href="#">Minta-Bakat</a>
                        <a class="dropdown-item" href="#">Lainnya</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Kesiswaan</a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Organisasi Siswa</a>
                        <a class="dropdown-item" href="#">Daftar Siswa</a>
                        <a class="dropdown-item" href="#">Data Prestasi</a>
                        <a class="dropdown-item" href="#">Blog Siswa</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Penerimaan Siswa</a>
                </li>
            </ul>
        </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
      @yield('isi')
  </div>
  <!-- /.container -->

  <!-- Footer -->
  <footer class="py-4 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Yayasan Soposurung 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>

</body>

</html>
