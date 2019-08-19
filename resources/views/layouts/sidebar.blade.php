<aside id="left-panel" class="left-panel">
   <nav class="navbar navbar-expand-sm navbar-default">

       <div id="main-menu" class="main-menu collapse navbar-collapse">
           <ul class="nav navbar-nav">
               <li>
                   <a href="{{ route('admin') }}"><i class="menu-icon fa fa-laptop"></i>Dashboard</a>
               </li>

               <!-- SIDEBAR MENU -->
               <li class="menu-title">Admin Blog</li>
               <li class="menu-item-has-children active dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-file"></i>Posting</a>
                   <ul class="sub-menu children dropdown-menu">
                       <li><i class="fa fa-file"></i><a href="/post">Semua Posting</a></li>
                       <li><i class="fa fa-file"></i><a href="/carousel">Carousel</a></li>
                       <!-- <li><i class="fa fa-puzzle-piece"></i><a href="#">Tambah Posting</a></li> -->
                   </ul>
               </li>

               <li class="menu-item-has-children active dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bookmark"></i>Kategori</a>
                   <ul class="sub-menu children dropdown-menu">
                       <li><i class="fa fa-bookmark"></i><a href="/kategori">Semua Kategori</a></li>
                   </ul>
               </li>

               <li class="menu-title">Halaman Blog</li>
               <li class="menu-item-has-children active dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-home"></i>Tentang Asrama</a>
                   <ul class="sub-menu children dropdown-menu">
                       <li><i class="fa fa-flag-checkered"></i><a href="/visimisi">Visi Misi</a></li>
                       <li><i class="fa fa-book"></i><a href="/sejarah">Sejarah</a></li>
                       <li><i class="fa fa-group"></i><a href="/pendiri">Pendiri</a></li>
                       <li><i class="fa fa-globe"></i><a href="/lokasi">Lokasi</a></li>
                       <li><i class="fa fa-phone"></i><a href="/kontak">Kontak</a></li>
                   </ul>
               </li>
               <li class="menu-item-has-children active dropdown">
                   <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-users"></i>Pamong</a>
                   <ul class="sub-menu children dropdown-menu">
                       <li><i class="fa fa-user"></i><a href="#">Kepala Asrama</a></li>
                       <li><i class="fa fa-users"></i><a href="#">Staf Pengajar (Guru)</a></li>
                       <li><i class="fa fa-user"></i><a href="#">Staf Pembina</a></li>
                       <li><i class="fa fa-user"></i><a href="#">Staf Pendukung</a></li>
                       <li><i class="fa fa-bars"></i><a href="#">Struktur Organisasi</a></li>
                   </ul>
               </li>

           </ul>
       </div><!-- /.navbar-collapse -->
   </nav>
</aside><!-- /#left-panel -->
