<aside class="main-sidebar sidebar-light-light sidebar-light elevation-5" id="mainSidebar">
<div class="brand-link bg-warning" id="brandLink" style="cursor: default; border-bottom: 1px rgba(255, 255, 255);">
    <img src="<?= base_url('assets/adminlte/dist/img/download.jpg') ?>" 
         alt="AdminLTE Logo" 
         class="brand-image img-circle elevation-3" 
         style="opacity: .8">
    <span class="brand-text font-weight-light">BLOOD DONATION</span>
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
      <i class="nav-icon fas fa-tint"></i>
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
    <a href="<?= base_url('donor') ?>" class="nav-link <?= is_active(1, 'donor') ?>">
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
