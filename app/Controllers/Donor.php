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
        $last_name = $this->request->getPost('last_name');
        $name = $this->request->getPost('name');
        $middle_name = $this->request->getPost('middle_name');
        $birthdate = $this->request->getPost('birthdate');
        $age = $this->request->getPost('age');
        $gender = $this->request->getPost('gender');
        $civil_status = $this->request->getPost('civil_status');
        $contact = $this->request->getPost('contact');
        $email_address = $this->request->getPost('email_address');
        $nationality = $this->request->getPost('nationality');
        $occupation = $this->request->getPost('occupation');
        $home_address = $this->request->getPost('home_address');
        $office_address = $this->request->getPost('office_address');
        $type_of_donor = $this->request->getPost('type_of_donor');
        $method_of_collection = $this->request->getPost('method_of_collection');
        $last_donation = $this->request->getPost('last_donation');
        $number_of_donations = $this->request->getPost('number_of_donations');
        

        $userModel = new \App\Models\DonorModel();
        $logModel = new LogModel();

        $data = [
        'last_name' => $last_name,
        'name'=>  $name,
        'middle_name'=> $middle_name,
        'birthdate'=>   $birthdate,
        'age'=>      $age,
        'gender'=>   $gender,
        'civil_status'=> $civil_status,
        'contact'=>   $contact,
        'email_address'=> $email_address,
        'nationality'=> $nationality,
        'occupation'=> $occupation ,
        'home_address'=> $home_address,
        'office_address'=> $office_address,
        'type_of_donor'=> $type_of_donor,
        'method_of_collection'=> $method_of_collection ,
        'last_donation'=> $last_donation ,
        'number_of_donations'=> $number_of_donations,
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
        $last_name = $this->request->getPost('last_name');
        $name = $this->request->getPost('name');
        $middle_name = $this->request->getPost('middle_name');
        $birthdate = $this->request->getPost('birthdate');
        $age = $this->request->getPost('age');
        $gender = $this->request->getPost('gender');
        $civil_status = $this->request->getPost('civil_status');
        $contact = $this->request->getPost('contact');
        $email_address = $this->request->getPost('email_address');
        $nationality = $this->request->getPost('nationality');
        $occupation = $this->request->getPost('occupation');
        $home_address = $this->request->getPost('home_address');
        $office_address = $this->request->getPost('office_address');
        $type_of_donor = $this->request->getPost('type_of_donor');
        $method_of_collection = $this->request->getPost('method_of_collection');
        $last_donation = $this->request->getPost('last_donation');
        $number_of_donations = $this->request->getPost('number_of_donations');
        

        $userData = [
        'last_name' => $last_name,
        'name'=>  $name,
        'middle_name'=> $middle_name,
        'birthdate'=>   $birthdate,
        'age'=>      $age,
        'gender'=>   $gender,
        'civil_status'=>   $civil_status,
        'contact'=>   $contact,
        'email_address'=> $email_address,
        'nationality'=> $nationality,
        'occupation'=> $occupation ,
        'home_address'=> $home_address,
        'office_address'=> $office_address,
        'type_of_donor'=> $type_of_donor,
        'method_of_collection'=> $method_of_collection ,
        'last_donation'=> $last_donation ,
        'number_of_donations'=> $number_of_donations,
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