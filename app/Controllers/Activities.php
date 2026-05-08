<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\LogModel;
use App\Models\ActivitiesModel;

class Activities extends Controller
{
    public function index(){
        $model = new ActivitiesModel();
        $data[' activities'] = $model->findAll();
        return view('activities/index', $data);
    }

    public function save(){
        $activity_name = $this->request->getPost('activity_name');
        $activity_date = $this->request->getPost('activity_date');
        $barangay_id = $this->request->getPost('barangay_id');
        $location = $this->request->getPost('location');
       

        $userModel = new \App\Models\ActivitiesModel();
        $logModel = new LogModel();

        $data = [
            
            'activity_name' => $activity_name,
            'activity_date' => $activity_date,
            'barangay_id' => $barangay_id,
            'location' => $location,
            
            	
        ];

        if ($userModel->insert($data)) {
            $logModel->addLog('New Activities has been added: ' . $activity_name, 'ADD');
            return $this->response->setJSON(['status' => 'success']);
        } else {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to save Activities']);
        }
    }

    public function update(){
        $model = new ActivitiesModel();
        $logModel = new LogModel();
        $userId = $this->request->getPost('activity_id');
        $activity_name = $this->request->getPost('activity_name');
        $activity_date = $this->request->getPost('activity_date');
        $barangay_id = $this->request->getPost('barangay_id');
        $location = $this->request->getPost('location');
     

        $userData = [
            'activity_name' => $activity_name,
            'activity_date' => $activity_date,
            'barangay_id' => $barangay_id,
            'location' => $location,
          
        ];

        $updated = $model->update($userId, $userData);

        if ($updated) {
            $logModel->addLog('New Activities has been apdated: ' . $activity_name, 'UPDATED');
            return $this->response->setJSON([
                'success' => true,
                'message' => 'Activities updated successfully.'
            ]);
        } else {
            return $this->response->setJSON([
                'success' => false,
                'message' => 'Error updating user.'
            ]);
        }
    }

    public function edit($id){
        $model = new ActivitiesModel();
    $user = $model->find($id); // Fetch user by ID

    if ($user) {
        return $this->response->setJSON(['data' => $user]); // Return user data as JSON
    } else {
        return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
    }
}

public function delete($id){
    $model = new ActivitiesModel();
    $logModel = new LogModel();
    $user = $model->find($id);
    if (!$user) {
        return $this->response->setJSON(['success' => false, 'message' => 'Bloodtype not found.']);
    }

    $deleted = $model->delete($id);

    if ($deleted) {
        $logModel->addLog('Delete user', 'DELETED');
        return $this->response->setJSON(['success' => true, 'message' => 'Bloodtype deleted successfully.']);
    } else {
        return $this->response->setJSON(['success' => false, 'message' => 'Failed to delete Bloodtype.']);
    }
}

public function fetchRecords()
{
    $request = service('request');
    $model = new \App\Models\ActivitiesModel();

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