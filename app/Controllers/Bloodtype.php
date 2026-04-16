<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use App\Models\LogModel;
use App\Models\BloodtypeModel;

class Bloodtype extends Controller
{
    public function index(){
        $model = new BloodtypeModel();
        $data['bloodtype'] = $model->findAll();
        return view('bloodtype/index', $data);
    }

    public function save(){
        $bloodtype = $this->request->getPost('bloodtype');
       

        $userModel = new \App\Models\BloodtypeModel();
        $logModel = new LogModel();

        $data = [
            'bloodtype'       => $bloodtype
        ];

        if ($userModel->insert($data)) {
            $logModel->addLog('New Bloodtype has been added: ' . $bloodtype, 'ADD');
            return $this->response->setJSON(['status' => 'success']);
        } else {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to save Bloodtype']);
        }
    }

    public function update(){
        $model = new BloodtypeModel();
        $logModel = new LogModel();
        $userId = $this->request->getPost('bloodtype_id');
        $bloodtype = $this->request->getPost('bloodtype');
     

        $userData = [
            'bloodtype'       => $bloodtype,
          
        ];

        $updated = $model->update($userId, $userData);

        if ($updated) {
            $logModel->addLog('New Bloodtype has been apdated: ' . $bloodtype, 'UPDATED');
            return $this->response->setJSON([
                'success' => true,
                'message' => 'Bloodtype updated successfully.'
            ]);
        } else {
            return $this->response->setJSON([
                'success' => false,
                'message' => 'Error updating user.'
            ]);
        }
    }

    public function edit($id){
        $model = new BloodtypeModel();
    $user = $model->find($id); // Fetch user by ID

    if ($user) {
        return $this->response->setJSON(['data' => $user]); // Return user data as JSON
    } else {
        return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
    }
}

public function delete($id){
    $model = new BloodtypeModel();
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
    $model = new \App\Models\BloodtypeModel();

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