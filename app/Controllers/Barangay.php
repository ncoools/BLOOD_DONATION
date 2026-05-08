<?php

namespace App\Controllers;

use App\Models\BarangayModel;
use CodeIgniter\Controller;
use App\Models\LogModel;

class Barangay extends Controller
{
    public function index(){
        $model = new BarangayModel();
        $data['barangay'] = $model->findAll();
        return view('barangay/index', $data);
    }

    public function save(){
        $barangay_name = $this->request->getPost('barangay_name');
         $city = $this->request->getPost('city');
       

        $userModel = new \App\Models\BarangayModel();
        $logModel = new LogModel();

        $data = [
            'barangay_name'       => $barangay_name,
            'city'       => $city,
        ];

        if ($userModel->insert($data)) {
            $logModel->addLog('New Barangay has been added: ' . $barangay_name, 'ADD');
            return $this->response->setJSON(['status' => 'success']);
        } else {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to save Barangay']);
        }
    }

    public function update(){
        $model = new BarangayModel();
        $logModel = new LogModel();
        $userId = $this->request->getPost('barangay_id');
        $barangay_name = $this->request->getPost('barangay_name');
        $city = $this->request->getPost('city');
     

        $userData = [
            'barangay_name'       => $barangay_name,
            'city'       => $city,
          
        ];

        $updated = $model->update($userId, $userData);

        if ($updated) {
            $logModel->addLog('New Barangay has been apdated: ' . $barangay_name, 'UPDATED');
            return $this->response->setJSON([
                'success' => true,
                'message' => 'Barangay updated successfully.'
            ]);
        } else {
            return $this->response->setJSON([
                'success' => false,
                'message' => 'Error updating user.'
            ]);
        }
    }

    public function edit($id){
        $model = new BarangayModel();
    $user = $model->find($id); // Fetch user by ID

    if ($user) {
        return $this->response->setJSON(['data' => $user]); // Return user data as JSON
    } else {
        return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
    }
}

public function delete($id){
    $model = new BarangayModel();
    $logModel = new LogModel();
    $user = $model->find($id);
    if (!$user) {
        return $this->response->setJSON(['success' => false, 'message' => 'Barangay not found.']);
    }

    $deleted = $model->delete($id);

    if ($deleted) {
        $logModel->addLog('Delete user', 'DELETED');
        return $this->response->setJSON(['success' => true, 'message' => 'Barangay deleted successfully.']);
    } else {
        return $this->response->setJSON(['success' => false, 'message' => 'Failed to delete Barangay.']);
    }
}

public function fetchRecords()
{
    $request = service('request');
    $model = new \App\Models\BarangayModel();

    $start = $request->getPost('start') ?? 0;
    $length = $request->getPost('length') ?? 10;
    $searchValue = $request->getPost('search')['value'] ?? '';

    $totalRecords = $model->countAll();
    $result = $model->getRecords($start, $length, $searchValue);

    $data = [];
    $counter = $start + 1;
    foreach ($result['data'] as $row) {
        $row['row_number'] = $counter++;
        $data[] = $row;
    }

    return $this->response->setJSON([
        'draw' => intval($request->getPost('draw')),
        'recordsTotal' => $totalRecords,
        'recordsFiltered' => $result['filtered'],
        'data' => $data,
    ]);
}

}