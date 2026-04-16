<?php

namespace App\Models;

use CodeIgniter\Model;

class DonorModel extends Model
{
    protected $table = 'donors';
    protected $primaryKey = 'donor_id';

    protected $allowedFields = ['name', 'last_name', 'middle_name', 'gender', 'birthdate', 'occupation', 'citizenship', 'address', 'contact',];

    public function getRecords($start, $length, $searchValue = '')
    {
        $builder = $this->builder();
        $builder->select('*');

        if (!empty($searchValue)) {
            $builder->groupStart()
                ->orLike('last_name', $searchValue)
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
