<?= $this->extend('theme/template') ?>

<?= $this->section('content') ?>
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Activity Logs</h1>
      </div>
      <div class="col-sm-6">
          <!-- <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Dashboard v1</li>
        </ol> -->
    </div>
</div>
</div>
</div>

<section class="content">
    <div class="container-fluid">
        <div class="card card-outline card-danger">
            <div class="card-header">
                <h3 class="card-title">
                    <i class="fas fa-bolt mr-1"></i>
                    Recent Activity
                </h3>
                <div class="card-tools">
                    <small class="text-muted" id="recentActivityUpdatedAt"></small>
                </div>
            </div>
            <div class="card-body p-0">
                <ul class="list-group list-group-flush" id="recentActivityList">
                    <?php foreach (($recentLogs ?? []) as $log): ?>
                        <li class="list-group-item d-flex justify-content-between align-items-center">
                            <div class="mr-2">
                                <div class="font-weight-bold">
                                    <?= esc($log['USER_NAME']) ?>
                                    <?php if (!empty($log['identifier'])): ?>
                                        <span class="badge badge-primary ml-1"><?= esc($log['identifier']) ?></span>
                                    <?php endif; ?>
                                </div>
                                <div class="text-muted small"><?= esc($log['ACTION']) ?></div>
                            </div>
                            <div class="text-right text-muted small">
                                <div><?= esc($log['DATELOG']) ?></div>
                                <div><?= esc(date('h:i A', strtotime($log['TIMELOG']))) ?></div>
                            </div>
                        </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>

        <form id="dateFilterForm" method="get" class="mb-3">
          <div class="form-group">
            <label for="filterDate"><strong>Filter by Date:</strong></label>
            <input type="date" id="filterDate" name="date" class="form-control" style="max-width: 250px;"
            value="<?= esc($selectedDate ?? date('Y-m-d')) ?>">
        </div>
    </form>
    <?php if (!empty($logs)): ?>
        <div class="timeline timeline-inverse">
            <?php foreach ($logs as $log): ?>
                <!-- timeline item -->
                <div class="time-label">
                    <span class="bg-white">
                        <?= esc($log['DATELOG']) ?>
                    </span>
                </div>
                <div>
                    <i class="fas fa-user bg-info"></i>
                    <div class="timeline-item">
                        <span class="time">
                            <i class="far fa-clock"></i>
                            <?= esc(date('h:i A', strtotime($log['TIMELOG']))) ?>
                        </span>
                        <h3 class="timeline-header">
                            <?= esc($log['USER_NAME']) ?> (ID: <?= esc($log['USERID']) ?>)
                        </h3>
                        <div class="timeline-body">
                            <strong>Action:</strong> <?= esc($log['ACTION']) ?><br>
                            <strong>IP Address:</strong> <?= esc($log['user_ip_address']) ?><br>
                            <strong>Device:</strong> <?= esc($log['device_used']) ?><br>
                            <?php if (!empty($log['identifier'])): ?>
                                <strong>Identifier:</strong> <span class="badge badge-primary"><?= esc($log['identifier']) ?></span>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
            <div>
                <i class="fas fa-clock bg-gray"></i>
            </div>
        </div>
        <?php else: ?>
            <div class="alert alert-info">
                No activity logs found.
            </div>
        <?php endif; ?>
    </div>
</section>
</div>
<div class="toasts-top-right fixed" style="position: fixed; top: 1rem; right: 1rem; z-index: 9999;"></div>
<?= $this->endSection() ?>
<?= $this->section('scripts') ?>
<script>const baseUrl = "<?= base_url() ?>";</script>
<script>
  document.getElementById('filterDate').addEventListener('change', function () {
    document.getElementById('dateFilterForm').submit();
});
</script>
<script>
  (function () {
    const listEl = document.getElementById('recentActivityList');
    const updatedAtEl = document.getElementById('recentActivityUpdatedAt');
    if (!listEl) return;

    const formatTime = (timeStr) => {
      const d = new Date('1970-01-01T' + timeStr);
      if (Number.isNaN(d.getTime())) return timeStr;
      return d.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
    };

    const render = (logs) => {
      if (!Array.isArray(logs)) return;
      listEl.innerHTML = logs.map((log) => {
        const badge = log.identifier ? `<span class="badge badge-primary ml-1">${String(log.identifier)}</span>` : '';
        return `
          <li class="list-group-item d-flex justify-content-between align-items-center">
            <div class="mr-2">
              <div class="font-weight-bold">${String(log.USER_NAME ?? '')}${badge}</div>
              <div class="text-muted small">${String(log.ACTION ?? '')}</div>
            </div>
            <div class="text-right text-muted small">
              <div>${String(log.DATELOG ?? '')}</div>
              <div>${formatTime(String(log.TIMELOG ?? ''))}</div>
            </div>
          </li>
        `;
      }).join('');
    };

    const refresh = () => {
      $.get(baseUrl + 'log/recent?limit=20')
        .done((res) => {
          render(res && res.logs ? res.logs : []);
          if (updatedAtEl) updatedAtEl.textContent = 'Updated ' + new Date().toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' });
        });
    };

    refresh();
    setInterval(refresh, 15000);
  })();
</script>
<?= $this->endSection() ?>
