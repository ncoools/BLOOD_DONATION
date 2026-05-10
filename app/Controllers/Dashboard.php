<?php

namespace App\Controllers;

use App\Models\DonorModel;
use App\Models\BloodtypeModel;
use App\Models\BarangayModel;
use App\Models\ActivitiesModel;
use CodeIgniter\Database\Config;

class Dashboard extends BaseController
{
    public function index()
    {
        if (!session()->get('user_id')) {
            return redirect()->to('/login');
        }

        $donorModel              = new DonorModel();
        $blood_typesModel        = new BloodtypeModel();
        $barangayModel           = new BarangayModel();
        $donation_activitiesModel = new ActivitiesModel();

        $db = \Config\Database::connect();

        // -------------------------------------------------------
        // SUMMARY COUNTS
        // -------------------------------------------------------
        $data = [
            'total_donors'     => $donorModel->countAll(),
            'total_bloodtype'  => $blood_typesModel->countAll(),
            'total_barangay'   => $barangayModel->countAll(),
            'total_activities' => $donation_activitiesModel->countAll(),
        ];

        // -------------------------------------------------------
        // CHART 1 — Donors per Venue (Bar)
        // Uses donors.venue since there is no barangay_id in donors.
        // -------------------------------------------------------
        $venueRows = $db->query("
            SELECT venue, COUNT(*) as total
            FROM donors
            WHERE venue IS NOT NULL AND venue != ''
            GROUP BY venue
            ORDER BY total DESC
            LIMIT 10
        ")->getResultArray();

        $data['chart_barangay_labels'] = array_column($venueRows, 'venue');
        $data['chart_barangay_donors'] = array_map('intval', array_column($venueRows, 'total'));

        // -------------------------------------------------------
        // CHART 1 (Line overlay) — Donors registered over time by year
        // donors.date is a VARCHAR with mixed formats; we extract the year.
        // -------------------------------------------------------
        $yearRows = $db->query("
            SELECT
                CASE
                    WHEN date REGEXP '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
                        THEN YEAR(STR_TO_DATE(date, '%Y-%m-%d'))
                    WHEN date REGEXP '[0-9]{4}$'
                        THEN CAST(RIGHT(TRIM(date), 4) AS UNSIGNED)
                    ELSE NULL
                END AS yr,
                COUNT(*) as total
            FROM donors
            GROUP BY yr
            HAVING yr IS NOT NULL
            ORDER BY yr ASC
        ")->getResultArray();

        // Build a per-venue yearly count for the line (same labels as bar)
        // Since venue and year are separate dimensions, we show total yearly
        // registrations mapped onto the same label axis.
        $yearMap = [];
        foreach ($yearRows as $row) {
            $yearMap[$row['yr']] = (int)$row['total'];
        }
        // Map yearly totals to venue labels (fills gaps with 0)
        $years = array_keys($yearMap);
        $data['chart_donations_line'] = array_values($yearMap);
        // Override labels to years for cleaner mixed chart
        // (comment this out if you prefer venue labels)
        $data['chart_barangay_labels'] = array_map('strval', $years);
        $data['chart_barangay_donors'] = array_values($yearMap); // same data, kept for bar

        // -------------------------------------------------------
        // CHART 2 — Donors by Blood Type (Doughnut)
        // NOTE: donors table has no bloodtype_id column yet.
        // This shows the registered blood types from blood_types table.
        // Once you add a bloodtype_id FK to donors, replace this query with:
        //   SELECT bt.bloodtype, COUNT(d.donor_id) as total
        //   FROM blood_types bt
        //   LEFT JOIN donors d ON d.bloodtype_id = bt.bloodtype_id
        //   GROUP BY bt.bloodtype_id

        //  SELECT bloodtype, 0 as total
        //     FROM blood_types
        //     ORDER BY bloodtype_id ASC
        // -------------------------------------------------------
        $bloodRows = $db->query("
           SELECT bt.bloodtype, COUNT(d.donor_id) as total
           FROM blood_types bt
           LEFT JOIN donors d ON d.bloodtype_id = bt.bloodtype_id
           GROUP BY bt.bloodtype_id
        ")->getResultArray();

        $data['chart_blood_labels'] = array_column($bloodRows, 'bloodtype');
        $data['chart_blood_counts'] = array_map('intval', array_column($bloodRows, 'total'));

        // -------------------------------------------------------
        // CHART 3 — Donation Activities per Month (Line)
        // Uses donation_activities.activity_date (proper DATE column).
        // -------------------------------------------------------
        $monthNames = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];

        $actRows = $db->query("
            SELECT MONTH(activity_date) as month_num, COUNT(*) as total
            FROM donation_activities
            GROUP BY MONTH(activity_date)
            ORDER BY month_num ASC
        ")->getResultArray();

        // Build full 12-month array (0 for months with no data)
        $monthMap = array_fill(1, 12, 0);
        foreach ($actRows as $row) {
            $monthMap[(int)$row['month_num']] = (int)$row['total'];
        }

        $data['chart_month_labels']     = $monthNames;
        $data['chart_month_activities'] = array_values($monthMap);

        return view('dashboard', $data);
    }
}