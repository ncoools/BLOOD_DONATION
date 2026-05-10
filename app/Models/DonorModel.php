<?php

namespace App\Models;

use CodeIgniter\Model;

class DonorModel extends Model
{
    protected $table      = 'donors';
    protected $primaryKey = 'donor_id';

    protected $allowedFields = [
        'donor_id',
        'date',
        'venue',
        'last_name',
        'name',
        'middle_name',
        'birthdate',
        'age',
        'gender',
        'civil_status',
        'contact',
        'email_address',
        'nationality',
        'occupation',
        'home_address',
        'office_address',
        'type_of_donor',
        'method_of_collection',
        'last_donation',
        'number_of_donations',
        'bloodtype_id',   // ← NEW
    ];

   public function getRecords($start, $length, $searchValue = '', $bloodtypeFilter = '')
{
    $builder = $this->db->table('donors d');
    $hasBloodtypeId = $this->db->fieldExists('bloodtype_id', 'donors') && $this->db->tableExists('blood_types');

    if ($hasBloodtypeId) {
        $builder->select('d.*, bt.bloodtype');
        $builder->join('blood_types bt', 'bt.bloodtype_id = d.bloodtype_id', 'left');
    } else {
        $builder->select('d.*, NULL as bloodtype');
    }

    // ── Blood type filter ──────────────────────────────────────────────
    if ($bloodtypeFilter === '__none__') {
        $builder->where('d.bloodtype_id IS NULL');
    } elseif (!empty($bloodtypeFilter) && $hasBloodtypeId) {
        $builder->where('bt.bloodtype', $bloodtypeFilter);
    }
    // ──────────────────────────────────────────────────────────────────

    if (!empty($searchValue)) {
        $builder->groupStart()
            ->orLike('d.last_name', $searchValue)
            ->orLike('d.name', $searchValue);

        if ($hasBloodtypeId) {
            $builder->orLike('bt.bloodtype', $searchValue);
        }

        $builder->groupEnd();
    }

    $filteredRecords = (clone $builder)->countAllResults(false);

    $builder->limit($length, $start);
    $data = $builder->get()->getResultArray();

    return ['data' => $data, 'filtered' => $filteredRecords];
}

public function getDonorWithBloodtype($id)
{
    $builder = $this->db->table('donors d');
    $builder->select('d.*, bt.bloodtype');
    $builder->join('blood_types bt', 'bt.bloodtype_id = d.bloodtype_id', 'left');
    $builder->where('d.donor_id', $id);
    return $builder->get()->getRowArray();
}
}
