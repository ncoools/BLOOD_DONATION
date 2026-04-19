<?php

namespace App\Models;

use CodeIgniter\Model;

class DonorModel extends Model
{
    protected $table = 'donors';
    protected $primaryKey = 'donor_id';

    protected $allowedFields = [ 'last_name',
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
         'number_of_donations',];

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
