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
        $builder->select('donation_activities.*, barangay.barangay_name, barangay.city');
        $builder->join('barangay', 'barangay.barangay_id = donation_activities.barangay_id', 'left');

        if (!empty($searchValue)) {
            $builder->groupStart()
                ->orLike('donation_activities.activity_id', $searchValue)
                ->orLike('donation_activities.activity_name', $searchValue)
                ->orLike('donation_activities.activity_date', $searchValue)
                ->orLike('donation_activities.location', $searchValue)
                ->orLike('barangay.barangay_name', $searchValue)
                ->orLike('barangay.city', $searchValue)
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
