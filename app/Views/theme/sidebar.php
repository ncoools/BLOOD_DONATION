<style type="text/css">
.nav-sidebar .nav-link {
    position: relative;
    transition: background 0.2s ease;
}

/* Orange left bar */
.nav-sidebar .nav-link::before {
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 4px;
    background: green;
    border-radius: 0 3px 3px 0;

    transform: scaleY(0);
    transform-origin: top;
    transition: transform 0.25s ease;
}

/* Show orange bar on hover & active */
.nav-sidebar .nav-link.active::before,
.nav-sidebar .nav-link:hover::before {
    transform: scaleY(1);
}

/* SUPER LIGHT GRADIENT */
.nav-sidebar .nav-link:hover,
.nav-sidebar .nav-link.active {
    background: linear-gradient(
        to right,
        rgba(255, 165, 0, 0.05),   /* extremely light orange */
        rgba(255, 165, 0, 0.01)    /* almost invisible */
    ) !important;
    box-shadow: none !important;
}

/* Submenu items same gradient */
.nav-treeview .nav-link:hover,
.nav-treeview .nav-link.active {
    background: linear-gradient(
        to right,
        rgba(255, 165, 0, 0.05),
        rgba(255, 165, 0, 0.01)
    ) !important;
    box-shadow: none !important;
}

/* Sidebar links text and icons in dark mode */
body.dark-mode .main-sidebar .nav-link {
    color: #fff !important;
}

body.dark-mode .main-sidebar .nav-link p {
    color: #fff !important;
}

body.dark-mode .main-sidebar .nav-icon {
    color: #fff !important;
}

/* Active or hovered link */
body.dark-mode .main-sidebar .nav-link.active,
body.dark-mode .main-sidebar .nav-link:hover {
    background-color: rgba(255, 255, 255, 0.1) !important; /* slightly lighter bg on hover/active */
}

.content-header h1 {
  font-weight: 500;
  /* color:  rgba(132, 177, 95, 0.1); */
}

#mainNavbar {
  background-color: #79bf6b81;
}

#brandLink {
  background-color: #9bb097;

}

#brandLink .brand-text {
  color: #fff;
  font-weight: 800;
}


</style>


<aside class="main-sidebar sidebar-light-light sidebar-light elevation-5" id="mainSidebar">
<div class="brand-link bg-warning" id="brandLink" style="cursor: default; border-bottom: 1px rgba(255, 255, 255);">
    <img src="<?= base_url('assets/adminlte/dist/img/AdminLTELogo.png') ?>" 
         alt="AdminLTE Logo" 
         class="brand-image img-circle elevation-3" 
         style="opacity: .8">
    <span class="brand-text font-weight-light" style="color: white">DONATION</span>
</div>
  <div class="sidebar">
    <nav class="mt-2">
      <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
       <li class="nav-item">
        <a href="<?= base_url('dashboard') ?>" class="nav-link <?= is_active(1, 'dashboard') ?>">
         <i class="nav-icon fas fa-tachometer-alt"></i>
         <p>Dashboard</p>
       </a>
     </li>
      <li class="nav-item">
      <a href="<?= base_url('log') ?>" class="nav-link <?= is_active(1, 'log') ?>">
        <i class="nav-icon fas fa-history"></i>
        <p>Activity Logs</p>
      </a>
    </li>

    <li class="nav-item">
     <a href="<?= base_url('barangay') ?>" class="nav-link <?= is_active(1, 'barangay') ?>">
       <i class="nav-icon fas fa-building"></i>
       <p>Barangay</p>
     </a>
   </li>

   <li class="nav-item">
    <a href="<?= base_url('bloodtype') ?>" class="nav-link <?= is_active(1, 'bloodtype') ?>">
      <i class="nav-icon fas fa-solid fa-droplet"></i>
      <p>Blood Types</p>
    </a>
  </li>

  <li class="nav-item">
    <a href="<?= base_url('activities') ?>" class="nav-link <?= is_active(1, 'activities') ?>">
      <i class="nav-icon fas fa-hand-holding-heart"></i>
      <p>Donation Activities</p>
    </a>
  </li>
  
  <li class="nav-item">
    <a href="?= base_url('donor') ?><" class="nav-link <?= is_active(1, 'donor') ?>">
      <i class="nav-icon fas fa-user-friends"></i>
      <p>Donors</p>
    </a>
  </li>
  
  <li class="nav-item">
   <a href="<?= base_url('users') ?>" class="nav-link <?= is_active(1, 'users') ?>">
     <i class="nav-icon fas fa-user-lock"></i>
     <p>User Accounts</p>
   </a>
 </li>

  </ul>
</nav>
</div>
</aside>