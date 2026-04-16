<?php

namespace App\Controllers;

use App\Models\DonorModel;
use CodeIgniter\Controller;
use App\Models\LogModel;

class Donor extends Controller
{
    public function index(){
        $model = new DonorModel();
        $data['donor'] = $model->findAll();
        return view('donor/index', $data);
    }

    public function save(){
        $name = $this->request->getPost('name');
        $last_name = $this->request->getPost('last_name');
        $middle_name = $this->request->getPost('middle_name');
        $gender = $this->request->getPost('gender');
        $birthdate = $this->request->getPost('birthdate');
        $occupation = $this->request->getPost('occupation');
        $citizenship = $this->request->getPost('citizenship');
        $address = $this->request->getPost('address');
        $contact = $this->request->getPost('contact');

        $userModel = new \App\Models\DonorModel();
        $logModel = new LogModel();

        $data = [
            'name'       => $name,
            'last_name'       => $last_name,
            'middle_name'       => $middle_name,
            'gender'       => $gender,
            'birthdate'       => $birthdate,
            'occupation'       => $occupation,
            'citizenship'       => $citizenship,
            'address'       => $address,
            'contact'       => $contact,
        ];

        if ($userModel->insert($data)) {
            $logModel->addLog('New Donor has been added: ' . $name, 'ADD');
            return $this->response->setJSON(['status' => 'success']);
        } else {
            return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to save donor']);
        } }

    public function update(){
        $model = new DonorModel();
        $logModel = new LogModel();
        $userId = $this->request->getPost('donor_id');
        $name = $this->request->getPost('name');
        $last_name = $this->request->getPost('last_name');
        $middle_name = $this->request->getPost('middle_name');
        $gender = $this->request->getPost('gender');
        $birthdate = $this->request->getPost('birthdate');
        $occupation = $this->request->getPost('occupation');
        $citizenship = $this->request->getPost('citizenship');
        $address = $this->request->getPost('address');
        $contact = $this->request->getPost('contact');

        $userData = [
            'name'       => $name,
            'last_name'       => $last_name,
            'middle_name'       => $middle_name,
            'gender'       => $gender,
            'birthdate'       => $birthdate,
            'occupation'       => $occupation,
            'citizenship'       => $citizenship,
            'address'       => $address,
            'contact'       => $contact,
        ];

        $updated = $model->update($userId, $userData);

        if ($updated) {
            $logModel->addLog('New Donor has been apdated: ' . $name, 'UPDATED');
            return $this->response->setJSON([
                'success' => true,
                'message' => 'Donor updated successfully.'
            ]);
        } else {
            return $this->response->setJSON([
                'success' => false,
                'message' => 'Error updating user.'
            ]);
        }
    }

    public function edit($id){
        $model = new DonorModel();
    $user = $model->find($id); // Fetch user by ID

    if ($user) {
        return $this->response->setJSON(['data' => $user]); // Return user data as JSON
    } else {
        return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
    }
}

public function delete($id){
    $model = new DonorModel();
    $logModel = new LogModel();
    $user = $model->find($id);
    if (!$user) {
        return $this->response->setJSON(['success' => false, 'message' => 'Donor not found.']);
    }

    $deleted = $model->delete($id);

    if ($deleted) {
        $logModel->addLog('Delete user', 'DELETED');
        return $this->response->setJSON(['success' => true, 'message' => 'Donor deleted successfully.']);
    } else {
        return $this->response->setJSON(['success' => false, 'message' => 'Failed to delete Donor.']);
    }
}

public function fetchRecords()
{
    $request = service('request');
    $model = new \App\Models\DonorModel();

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