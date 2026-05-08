<?php

namespace App\Controllers;

use App\Models\DonorModel;
use App\Models\BloodtypeModel;
use App\Models\BarangayModel;
use App\Models\ActivitiesModel;

class Dashboard extends BaseController
{
    public function index()
    {
        if (!session()->get('user_id')) {
            return redirect() ->to('/login');
        }

        $donorModel = new DonorModel();
        $blood_typesModel = new BloodtypeModel();
        $barangayModel = new BarangayModel();
        $donation_activitiesModel = new ActivitiesModel();

        $data = [
            'total_donors' => $donorModel->countAll(),
            'total_bloodtype' => $blood_typesModel->countAll(),
            'total_barangay' => $barangayModel->countAll(),
            'total_activities' => $donation_activitiesModel->countAll()

        ];

        return view('dashboard', $data); // ← MUST include $data
    }
    
}

