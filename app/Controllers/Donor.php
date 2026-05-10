<?php

namespace App\Controllers;

use App\Models\DonorModel;
use App\Models\BloodtypeModel;
use CodeIgniter\Controller;
use App\Models\LogModel;

class Donor extends Controller
{
    public function index()
    {
        $model      = new DonorModel();
        $bloodModel = new BloodtypeModel();

        $data['donor']      = $model->findAll();
        $data['bloodtypes'] = $bloodModel->findAll(); // for modal dropdowns

        return view('donor/index', $data);
    }

    public function save()
    {
        $post = $this->request->getPost();

        $model    = new DonorModel();
        $logModel = new LogModel();
        $db       = \Config\Database::connect();

        $data = [
            'last_name'           => $post['last_name'] ?? null,
            'name'                => $post['name'] ?? null,
            'middle_name'         => $post['middle_name'] ?? null,
            'birthdate'           => $post['birthdate'] ?? null,
            'age'                 => $post['age'] ?? null,
            'gender'              => $post['gender'] ?? null,
            'civil_status'        => $post['civil_status'] ?? null,
            'contact'             => $post['contact'] ?? null,
            'email_address'       => $post['email_address'] ?? null,
            'nationality'         => $post['nationality'] ?? null,
            'occupation'          => $post['occupation'] ?? null,
            'home_address'        => $post['home_address'] ?? null,
            'office_address'      => $post['office_address'] ?? null,
            'type_of_donor'       => $post['type_of_donor'] ?? null,
            'method_of_collection'=> $post['method_of_collection'] ?? null,
            'last_donation'       => $post['last_donation'] ?? null,
            'number_of_donations' => $post['number_of_donations'] ?? null,
        ];

        if ($db->fieldExists('date', 'donors')) {
            $data['date'] = $post['date'] ?? null;
        }

        if ($db->fieldExists('venue', 'donors')) {
            $data['venue'] = $post['venue'] ?? null;
        }

        if ($db->fieldExists('bloodtype_id', 'donors')) {
            $data['bloodtype_id'] = !empty($post['bloodtype_id']) ? $post['bloodtype_id'] : null;
        }

        try {
            if ($model->insert($data)) {
                $logModel->addLog('New Donor has been added: ' . ($data['name'] ?? ''), 'ADD');
                return $this->response->setJSON(['status' => 'success']);
            }

            $dbError = $model->db->error();

            if (
                !empty($dbError['message'])
                && (
                    stripos($dbError['message'], 'donor_id') !== false
                    && (
                        stripos($dbError['message'], 'doesn\'t have a default value') !== false
                        || stripos($dbError['message'], 'cannot be null') !== false
                    )
                )
            ) {
                $nextIdRow = $model->selectMax('donor_id')->first();
                $nextId = (int) ($nextIdRow['donor_id'] ?? 0) + 1;
                $data['donor_id'] = $nextId;

                if ($model->insert($data)) {
                    $logModel->addLog('New Donor has been added: ' . ($data['name'] ?? ''), 'ADD');
                    return $this->response->setJSON(['status' => 'success']);
                }

                $dbError = $model->db->error();
            }

            $message = 'Failed to save donor';
            if (ENVIRONMENT !== 'production') {
                if (!empty($dbError['message'])) {
                    $message .= ': ' . $dbError['message'];
                }
            }

            return $this->response->setJSON(['status' => 'error', 'message' => $message]);
        } catch (\Throwable $e) {
            $message = 'Failed to save donor';
            if (ENVIRONMENT !== 'production') {
                $message .= ': ' . $e->getMessage();
            }

            return $this->response->setJSON(['status' => 'error', 'message' => $message]);
        }
    }

    public function update()
    {
        $model    = new DonorModel();
        $logModel = new LogModel();
        $post     = $this->request->getPost();
        $userId   = $post['donor_id'] ?? null;
        $db       = \Config\Database::connect();

        $userData = [
            'last_name'            => $post['last_name'] ?? null,
            'name'                 => $post['name'] ?? null,
            'middle_name'          => $post['middle_name'] ?? null,
            'birthdate'            => $post['birthdate'] ?? null,
            'age'                  => $post['age'] ?? null,
            'gender'               => $post['gender'] ?? null,
            'civil_status'         => $post['civil_status'] ?? null,
            'contact'              => $post['contact'] ?? null,
            'email_address'        => $post['email_address'] ?? null,
            'nationality'          => $post['nationality'] ?? null,
            'occupation'           => $post['occupation'] ?? null,
            'home_address'         => $post['home_address'] ?? null,
            'office_address'       => $post['office_address'] ?? null,
            'type_of_donor'        => $post['type_of_donor'] ?? null,
            'method_of_collection' => $post['method_of_collection'] ?? null,
            'last_donation'        => $post['last_donation'] ?? null,
            'number_of_donations'  => $post['number_of_donations'] ?? null,
        ];

        if ($db->fieldExists('date', 'donors')) {
            $userData['date'] = $post['date'] ?? null;
        }

        if ($db->fieldExists('venue', 'donors')) {
            $userData['venue'] = $post['venue'] ?? null;
        }

        if ($db->fieldExists('bloodtype_id', 'donors')) {
            $userData['bloodtype_id'] = !empty($post['bloodtype_id']) ? $post['bloodtype_id'] : null;
        }

        if (empty($userId)) {
            return $this->response->setJSON(['success' => false, 'message' => 'Missing donor_id']);
        }

        try {
            if ($model->update($userId, $userData)) {
                $logModel->addLog('New Donor has been apdated: ' . ($userData['name'] ?? ''), 'UPDATED');
                return $this->response->setJSON(['success' => true, 'message' => 'Donor updated successfully.']);
            }

            $message = 'Error updating donor.';
            if (ENVIRONMENT !== 'production') {
                $dbError = $model->db->error();
                if (!empty($dbError['message'])) {
                    $message .= ' ' . $dbError['message'];
                }
            }

            return $this->response->setJSON(['success' => false, 'message' => $message]);
        } catch (\Throwable $e) {
            $message = 'Error updating donor.';
            if (ENVIRONMENT !== 'production') {
                $message .= ' ' . $e->getMessage();
            }

            return $this->response->setJSON(['success' => false, 'message' => $message]);
        }
    }

    public function edit($id)
{
    $model = new DonorModel();
    $user  = $model->getDonorWithBloodtype($id);

    if ($user) {
        return $this->response->setJSON(['data' => $user]);
    } else {
        return $this->response->setStatusCode(404)->setJSON(['error' => 'User not found']);
    }
}

    public function delete($id)
    {
        $model    = new DonorModel();
        $logModel = new LogModel();
        $user     = $model->find($id);

        if (!$user) {
            return $this->response->setJSON(['success' => false, 'message' => 'Donor not found.']);
        }

        if ($model->delete($id)) {
            $logModel->addLog('Delete user', 'DELETED');
            return $this->response->setJSON(['success' => true, 'message' => 'Donor deleted successfully.']);
        } else {
            return $this->response->setJSON(['success' => false, 'message' => 'Failed to delete Donor.']);
        }
    }

   public function fetchRecords()
{
    $request = service('request');
    $model   = new DonorModel();

    $start           = $request->getPost('start') ?? 0;
    $length          = $request->getPost('length') ?? 1000;
    $searchValue     = $request->getPost('search')['value'] ?? '';
    $bloodtypeFilter = $request->getPost('bloodtype_filter') ?? '';  // ← NEW

    $totalRecords = $model->countAll();
    $result       = $model->getRecords($start, $length, $searchValue, $bloodtypeFilter);  // ← pass it

    $data    = [];
    $counter = $start + 1;
    foreach ($result['data'] as $row) {
        $row['row_number'] = $counter++;
        $data[]            = $row;
    }

    return $this->response->setJSON([
        'draw'            => intval($request->getPost('draw')),
        'recordsTotal'    => $totalRecords,
        'recordsFiltered' => $result['filtered'],
        'data'            => $data,
    ]);
}
}
