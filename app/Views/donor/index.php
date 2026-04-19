<?= $this->extend('theme/template') ?>

<?= $this->section('content') ?>
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Donors</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Dashboard v1</li>
          </ol>
        </div>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">
            <div class="card-header">
              <h3 class="card-title">List of Donors</h3>
              <div class="float-right">
                <button type="button" class="btn btn-md btn-primary" data-toggle="modal" data-target="#AddNewModal">
                  <i class="fa fa-plus-circle fa fw"></i> Add New
                </button>
              </div>
            </div>
            <div class="card-body">
               <table id="example1" class="table table-bordered table-striped table-sm">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th style="display:none;">id</th>
                    <th>Last Name</th>
                    <th>Name</th>
                    <th>Middle Name</th>
                    <th>Birthdate</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Civil Status</th>
                    <th>Contact</th>
                    <th>Email Address</th>
                    <th>Nationality</th>
                    <th>Occupation</th>
                    <th>Home Address</th>
                    <th>Office Address</th>
                    <th>Type of Donor</th>
                    <th>Method of Collection</th>
                    <th>Last Donation</th>
                    <th>Number of Donations</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>

    
 

   <!-- ✅ Add New Modal -->
<div class="modal fade" id="AddNewModal" tabindex="-1" role="dialog" aria-labelledby="AddNewModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <form id="addUserForm">
      <?= csrf_field() ?>
      <div class="modal-content">

        <div class="modal-header">
          <h5 class="modal-title">
            <i class="fa fa-plus-circle"></i> Add New
          </h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <div class="modal-body">
          <div class="form-group">
            <label>Last Name</label>
            <input type="text" name="last_name" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Middle Name</label>
            <input type="text" name="middle_name" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Birthdate</label>
            <input type="date" name="birthdate" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Age</label>
            <input type="text" name="age" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Gender</label>
            <select class="form-control" name="gender">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
            </select>
          </div>

          <div class="form-group">
            <label>Civil Status</label>
            <input type="text" name="civil_status" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Contact</label>
            <input type="text" name="contact" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Email Address</label>
            <input type="text" name="email_address" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Nationality</label>
            <input type="text" name="nationality" class="form-control" required />
          </div>

          <div class="form-group">
           <label>Occupation</label>
           <input type="text" name="occupation" class="form-control" required />
         </div>

          <div class="form-group">
            <label>Home Address</label>
            <input type="text" name="homee_address" class="form-control" required />
          </div>
  
          <div class="form-group">
            <label>Office Address</label>
            <input type="text" name="office_address" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Type of Donor</label>
            <input type="text" name="type_of_donor" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Method of Collection</label>
            <input type="text" name="method_of_collection" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Last Donation</label>
            <input type="text" name="last_donation" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Number of Donations</label>
            <input type="text" name="number_of_donations" class="form-control" required />
          </div>



        </div> <!-- ✅ FIXED: closed modal-body -->

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">
            <i class="fas fa-times-circle"></i> Cancel
          </button>
          <button type="submit" class="btn btn-primary">
            <i class="fa fa-save"></i> Save
          </button>
        </div>

      </div>
    </form>
  </div>
</div>


<!-- ✅ Edit Modal -->
<div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
      <div class="modal-content">
    <form id="editUserForm">
      <?= csrf_field() ?>


        <div class="modal-header">
          <h5 class="modal-title">
            <i class="far fa-edit"></i> Edit Record
          </h5>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

        <div class="modal-body">

          <input type="hidden" id="userId" name="donor_id">

          <div class="form-group">
            <label>Last Name</label>
            <input type="text" id="last_name" name="last_name" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Name</label>
            <input type="text" id="name" name="name" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Middle Name</label>
            <input type="text" id="middle_name" name="middle_name" class="form-control" required />
          </div>
          
          <div class="form-group">
            <label>Birthdate</label>
            <input type="date" id="birthdate" name="birthdate" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Age</label>
            <input type="text" id="age" name="age" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Gender</label>
            <select class="form-control" id="gender" name="gender">
              <option value="Male">Male</option>
              <option value="Female">Female</option>
            </select>
          </div>

        <div class="form-group">
            <label>Civil Status</label>
            <input type="text" id="civil_status" name="civil_stattus" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Contact</label>
            <input type="text" id="contact" name="contact" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Email Address</label>
            <input type="text" id="email_address" name="email_address" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Nationality</label>
            <input type="text" id="nationality" name="nationality" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Occupation</label>
            <input type="text" id="occupation" name="occupation" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Home Address</label>
            <input type="text" id="home_address" name="home_address" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Office Address</label>
            <input type="text" id="office_adress" name="office_adress" class="form-control" required />
          </div>

          <div class="form-group">
            <label>Type of Donor</label>
            <input type="text" id="type_of_donor" name="type_of_donor" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Method of Collection</label>
            <input type="text" id="method_of_collection" name="method_of_collection" class="form-control" required />
          </div>

           <div class="form-group">
            <label>Last Donation</label>
            <input type="text" id="last_donation" name="last_donation" class="form-control" required />
          </div>

            <div class="form-group">
            <label>Number of Donations</label>
            <input type="text" id="number_of_donations" name="number_of_donations" class="form-control" required />
          </div>


        </div> <!-- ✅ properly closed -->

        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">
            <i class="fas fa-times-circle"></i> Cancel
          </button>
          <button type="submit" class="btn btn-primary">
            <i class="fa fa-save"></i> Save
          </button>
        </div>

      </div>
    </form>
  </div>
</div>
</section>
</div>
<div class="toasts-top-right fixed" style="position: fixed; top: 1rem; right: 1rem; z-index: 9999;"></div>
<?= $this->endSection() ?>


<?= $this->section('scripts') ?>
<script> const baseUrl = "<?= base_url() ?>"; </script>
<script src="<?= base_url('js/donor/donor.js') ?>"></script>
<?= $this->endSection() ?>