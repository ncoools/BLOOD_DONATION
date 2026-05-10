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

         <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('log') ?>" class="nav-link">
                <i class="fas fa-history mr-1"></i> Logs
            </a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('donor') ?>" class="nav-link">
                <i class="fas fa-user-friends mr-1"></i> Donors
            </a>
        </li>

       

        
        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('bloodtype') ?>" class="nav-link">
                <i class="fas fa-tint mr-1"></i> Blood Types
            </a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('barangay') ?>" class="nav-link">
                <i class="fas fa-building mr-1"></i> Barangay
            </a>
        </li>

        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('activities') ?>" class="nav-link">
                <i class="fas fa-hand-holding-heart mr-1"></i> Donation Activities
            </a>
        </li>

        

        <li class="nav-item d-none d-sm-inline-block">
            <a href="<?= base_url('users') ?>" class="nav-link">
                <i class="fas fa-user-lock mr-1"></i> Accounts
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
