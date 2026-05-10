<?php

namespace App\Controllers;

use App\Models\LogModel;
use App\Controllers\BaseController;

class Logs extends BaseController
{

    public function log()
{
    $logModel = new \App\Models\LogModel();
    
    // Get the 'date' from query string; if not set, use today's date
    $date = $this->request->getGet('date') ?? date('Y-m-d');

    $data['logs'] = $logModel->getLogsByDate($date);
    $data['recentLogs'] = $logModel->getRecentLogs(20);
    $data['selectedDate'] = $date;

    return view('log/index', $data);
}

public function recent()
{
    if (!session()->get('user_id')) {
        return $this->response->setStatusCode(401)->setJSON(['logs' => []]);
    }

    $limit = (int) ($this->request->getGet('limit') ?? 20);
    $logModel = new LogModel();
    $logs = $logModel->getRecentLogs($limit);

    return $this->response->setJSON([
        'logs' => $logs,
    ]);
}

}
