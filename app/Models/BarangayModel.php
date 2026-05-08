<?php

namespace App\Models;

use CodeIgniter\Model;

class BarangayModel extends Model
{
    protected $table = 'barangay';
    protected $primaryKey = 'barangay_id';

    protected $allowedFields = ['barangay_name' , 'city'];

    public function getRecords($start, $length, $searchValue = '')
    {
        $builder = $this->builder();
        $builder->select('*');

        if (!empty($searchValue)) {
            $builder->groupStart()
                ->orLike('barangay', $searchValue)
                ->groupEnd();
        }

        // Clone builder for filtered count before applying limit
        $filteredBuilder = clone $builder;
        $filteredRecords = $filteredBuilder->countAllResults();

        $builder->limit($length, $start);
        $data = $builder->get()->getResultArray();

        return ['data' => $data, 'filtered' => $filteredRecords];
    }
}
