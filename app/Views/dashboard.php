<?= $this->extend('theme/template') ?>

<?= $this->section('content') ?>
<div class="content-wrapper">
    
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Dashboard</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
<!-- gin remove ko lang haha -->
                        <!-- <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Dashboard</li> -->
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <section class="content">
        <div class="container-fluid">
            <div class="row">

                <!-- Total Donors -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--donors">
                        <div class="inner">
                            <h3> <?= $total_donors ?? 0 ?></h3>
                            <h5>Total Donors Registered</h5>
                        </div>
                        <div class="icon">
                            <i class="fas fa-user-friends"></i>
                        </div>
                        <a href="<?= base_url('donor') ?>" class="small-box-footer">
                            View all <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <!-- Blood Types -->
                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--barangay">
                    <!-- <div class="small-box bd-box bd-box--blood"> -->
                        <div class="inner">
                            <h3 style="color: white;"> <?= $total_bloodtype ?? 0 ?></h3>
                            <h5 style="color: white;">Blood Types</h5>
                        </div>
                        <div class="icon">
                            <i class="fas fa-tint"></i>
                        </div>
                        <a href="<?= base_url('bloodtype') ?>" class="small-box-footer">
                            <span style="color: white;">View all</span> <i class="fas fa-arrow-circle-right" style="color: white;"></i>
                        </a>
                    </div>
                </div>
            
                    <!-- Barangay -->
                 <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--donors">
                    <!-- <div class="small-box bd-box bd-box--barangay"> -->
                        <div class="inner">
                            <h3 style="color: white;"> <?= $total_barangay ?? 0 ?> </h3>
                            <h5 style="color: white;">Barangay</h5>
                        </div>
                        <div class="icon">
                            <i class="fas fa-building"></i>
                        </div>
                        <a href="<?= base_url ('barangay') ?>" class="small-box-footer">
                            <span style="color: white;">More info</span> <i class="fas fa-arrow-circle-right" style="color: white;"></i>
                        </a>
                    </div>
                </div>

                <!-- Activities -->
                 <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--barangay">
                    <!-- <div class="small-box bd-box bd-box--activities"> -->
                        <div class="inner">
                            <h3 style="color: white;"> <?= $total_activities ?? 0 ?> </h3>
                            <h5 style="color: white;">Donation Activities</h5>
                        </div>
                        <div class="icon">
                            <i class="fas fa-hand-holding-heart"></i>
                        </div>
                        <a href="<?= base_url ('activities') ?>" class="small-box-footer">
                            <span style="color: white;">More info</span> <i class="fas fa-arrow-circle-right" style="color: white;"></i>
                        </a>
                    </div>
                </div>

            </div>
        </div>
    </section>

</div>
<?= $this->endSection() ?>
