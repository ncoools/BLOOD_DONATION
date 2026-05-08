<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateDonationActivitiesTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'activity_id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'activity_name' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'activity_date' => [
                'type' => 'DATE',
            ],
            'barangay_id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'null' => true,
            ],
            'location' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
        ]);

        $this->forge->addKey('activity_id', true);
        $this->forge->addKey('barangay_id');
        $this->forge->addForeignKey('barangay_id', 'barangay', 'barangay_id', 'CASCADE', 'SET NULL');
        $this->forge->createTable('donation_activities', true, ['ENGINE' => 'InnoDB']);
    }

    public function down()
    {
        $this->forge->dropTable('donation_activities', true);
    }
}
