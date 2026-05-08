<nav class="main-header navbar navbar-expand navbar-warning" id="mainNavbar">
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button">
                <i class="fas fa-bars"></i>
            </a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('dashboard') ?>" class="nav-link">
                <i class="fas fa-home mr-1"></i> Home
            </a>
        </li>
    </ul>

    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" href="#" id="themeToggle">
            <i class="fas fa-sun"></i>
        </a>
       </li>

        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="far fa-user-circle mr-1"></i><?= session()->get('email') ?> 
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('/logout') ?>">
                <i class="fas fa-sign-out-alt mr-1"></i>Logout
            </a>
        </li>
    </ul>
</nav>
