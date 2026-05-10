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
                    <ol class="breadcrumb float-sm-right"></ol>
                </div>
            </div>
        </div>
    </div>

    <section class="content">
        <div class="container-fluid">

            <!-- ===================== SUMMARY BOXES ===================== -->
            <div class="row">

                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--donors">
                        <div class="inner">
                            <h3><?= $total_donors ?? 0 ?></h3>
                            <h5>Total Donors Registered</h5>
                        </div>
                        <div class="icon"><i class="fas fa-user-friends"></i></div>
                        <a href="<?= base_url('donor') ?>" class="small-box-footer">
                            View all <i class="fas fa-arrow-circle-right"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--barangay">
                        <div class="inner">
                            <h3 style="color:white;"><strong><?= $total_bloodtype ?? 0 ?></strong></h3>
                            <h5 style="color:white;"><strong>Blood Types</strong></h5>
                        </div>
                        <div class="icon"><i class="fas fa-tint"></i></div>
                        <a href="<?= base_url('bloodtype') ?>" class="small-box-footer">
                            <span style="color:white;">View all</span>
                            <i class="fas fa-arrow-circle-right" style="color:white;"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--donors">
                        <div class="inner">
                            <h3 style="color:white;"><?= $total_barangay ?? 0 ?></h3>
                            <h5 style="color:white;">Barangay</h5>
                        </div>
                        <div class="icon"><i class="fas fa-building"></i></div>
                        <a href="<?= base_url('barangay') ?>" class="small-box-footer">
                            <span style="color:white;">More info</span>
                            <i class="fas fa-arrow-circle-right" style="color:white;"></i>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-6">
                    <div class="small-box bd-box bd-box--barangay">
                        <div class="inner">
                            <h3 style="color:white;"><strong><?= $total_activities ?? 0 ?></strong></h3>
                            <h5 style="color:white;"><strong>Donation Activities</strong></h5>
                        </div>
                        <div class="icon"><i class="fas fa-hand-holding-heart"></i></div>
                        <a href="<?= base_url('activities') ?>" class="small-box-footer">
                            <span style="color:white;">More info</span>
                            <i class="fas fa-arrow-circle-right" style="color:white;"></i>
                        </a>
                    </div>
                </div>

            </div><!-- /.row summary -->

            <!-- ===================== CHARTS ROW 1 ===================== -->
            <div class="row">

                <!-- Mixed Chart: Donors per Year (Bar) + Line overlay -->
                <div class="col-lg-8 col-12">
                    <div class="card card-outline card-danger">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="fas fa-chart-bar mr-1"></i>
                                Donor Registrations Over Time
                            </h3>
                        </div>
                        <div class="card-body">
                            <canvas id="mixedChart" style="min-height:280px;"></canvas>
                        </div>
                    </div>
                </div>

                <!-- Blood Type Doughnut -->
                <div class="col-lg-4 col-12">
                    <div class="card card-outline card-danger donor-card">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="fas fa-tint mr-1"></i>
                                Donors by Blood Type
                            </h3>
                        </div>
                        <div class="card-body d-flex justify-content-center align-items-center">
                            <?php if (array_sum($chart_blood_counts) === 0): ?>
                                <div class="text-center text-muted py-4">
                                    <i class="fas fa-info-circle fa-2x mb-2"></i><br>
                                    No blood type data yet.<br>
                                    <small>Add a <code>bloodtype_id</code> column to the <code>donors</code> table to enable this chart.</small>
                                </div>
                            <?php else: ?>
                                <div style="height: 280px;">
                                    <canvas id="bloodTypeChart"></canvas>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>

            </div><!-- /.row charts 1 -->

            <!-- ===================== CHARTS ROW 2 ===================== -->
            <div class="row">

                <!-- Activities per Month -->
                <div class="col-12">
                    <div class="card card-outline card-danger">
                        <div class="card-header">
                            <h3 class="card-title">
                                <i class="fas fa-chart-line mr-1"></i>
                                Donation Activities per Month
                            </h3>
                        </div>
                        <div class="card-body">
                            <?php if (array_sum($chart_month_activities) === 0): ?>
                                <div class="text-center text-muted py-4">
                                    <i class="fas fa-info-circle fa-2x mb-2"></i><br>
                                    No donation activities recorded yet.
                                </div>
                            <?php else: ?>
                                <canvas id="activitiesChart" style="min-height:220px;"></canvas>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>

            </div><!-- /.row charts 2 -->

        </div><!-- /.container-fluid -->
    </section>

</div><!-- /.content-wrapper -->
<?= $this->endSection() ?>

<?= $this->section('scripts') ?>
<script>
    const barangayLabels = <?= json_encode($chart_barangay_labels ?? []) ?>;
    const barangayDonors = <?= json_encode($chart_barangay_donors ?? []) ?>;
    const donationsLine = <?= json_encode($chart_donations_line ?? []) ?>;
    const bloodLabels = <?= json_encode($chart_blood_labels ?? []) ?>;
    const bloodCounts = <?= json_encode($chart_blood_counts ?? []) ?>;
    const monthLabels = <?= json_encode($chart_month_labels ?? []) ?>;
    const monthActivities = <?= json_encode($chart_month_activities ?? []) ?>;

    const mixedCanvas = document.getElementById('mixedChart');
    if (mixedCanvas && typeof Chart !== 'undefined') {
        new Chart(mixedCanvas.getContext('2d'), {
            type: 'bar',
            data: {
                labels: barangayLabels,
                datasets: [{
                        type: 'bar',
                        label: 'Donors Registered',
                        data: barangayDonors,
                        backgroundColor: 'rgba(220,53,69,0.75)',
                        borderColor: 'rgba(220,53,69,1)',
                        borderWidth: 1
                    },
                    {
                        type: 'line',
                        label: 'Trend',
                        data: donationsLine,
                        borderColor: 'rgba(255,153,0,1)',
                        backgroundColor: 'rgba(255,153,0,0.12)',
                        pointBackgroundColor: 'rgba(255,153,0,1)',
                        pointRadius: 5,
                        lineTension: 0.4,
                        fill: true
                    }
                ]
            },
            options: {
                responsive: true,
                tooltips: {
                    mode: 'index',
                    intersect: false
                },
                legend: {
                    position: 'top'
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                            precision: 0
                        }
                    }]
                }
            }
        });
    }

    const bloodCanvas = document.getElementById('bloodTypeChart');
    if (bloodCanvas && typeof Chart !== 'undefined') {
        new Chart(bloodCanvas.getContext('2d'), {
            type: 'doughnut',
            data: {
                labels: bloodLabels,
                datasets: [{
                    data: bloodCounts,
                    backgroundColor: [
                        '#FFCC00', '#FFF0B3', '#FF66B2', '#FFCCE5',
                        '#E0E0E0', '#F5F5F5', '#007BFF', '#B3D7FF'
                    ],
                    borderWidth: 1,
                    borderColor: '#2b2b2b'
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                legend: {
                    position: 'bottom'
                },
                cutoutPercentage: 60
            }
        });
    }

    const actCanvas = document.getElementById('activitiesChart');
    if (actCanvas && typeof Chart !== 'undefined') {
        new Chart(actCanvas.getContext('2d'), {
            type: 'line',
            data: {
                labels: monthLabels,
                datasets: [{
                    label: 'Activities per Month',
                    data: monthActivities,
                    borderColor: 'rgba(220,53,69,1)',
                    backgroundColor: 'rgba(220,53,69,0.1)',
                    pointBackgroundColor: 'rgba(220,53,69,1)',
                    pointRadius: 5,
                    lineTension: 0.4,
                    fill: true
                }]
            },
            options: {
                responsive: true,
                legend: {
                    position: 'top'
                },
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                            precision: 0
                        }
                    }]
                }
            }
        });
    }
</script>
<?= $this->endSection() ?>