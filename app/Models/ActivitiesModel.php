<?php

namespace App\Models;

use CodeIgniter\Model;

class ActivitiesModel extends Model
{
    protected $table = 'donation_activities';
    protected $primaryKey = 'activity_id';

    protected $allowedFields = ['activity_name'	,'activity_date','barangay_id'	,'location'];

    public function getRecords($start, $length, $searchValue = '')
    {
        $builder = $this->builder();
        $builder->select('*');

        if (!empty($searchValue)) {
            $builder->groupStart()
                ->orLike('activity_id', $searchValue)
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
