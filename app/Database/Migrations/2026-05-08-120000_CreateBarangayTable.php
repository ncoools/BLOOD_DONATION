<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CreateBarangayTable extends Migration
{
    public function up()
    {
        $this->forge->addField([
            'barangay_id' => [
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => true,
                'auto_increment' => true,
            ],
            'barangay_name' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
            'city' => [
                'type' => 'VARCHAR',
                'constraint' => 255,
            ],
        ]);

        $this->forge->addKey('barangay_id', true);
        $this->forge->createTable('barangay', true, ['ENGINE' => 'InnoDB']);
    }

    public function down()
    {
        $this->forge->dropTable('barangay', true);
    }
}

