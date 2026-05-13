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
          <!-- <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">Donors</li>
          </ol> -->
        </div>
      </div>
    </div>
  </div>

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <div class="card">

            <div class="card-header d-flex align-items-center justify-content-between flex-wrap">
              <h3 class="card-title mb-0">List of Donors</h3>
              <div class="d-flex align-items-center">
                <label class="mr-2 mb-0"><i class="fas fa-tint mr-1"></i> Blood Type:</label>
                <select id="bloodTypeFilter" class="form-control form-control-sm mr-2" style="width:auto;">
                  <option value="">All</option>
                  <option value="A+">A+</option>
                  <option value="A-">A−</option>
                  <option value="B+">B+</option>
                  <option value="B-">B−</option>
                  <option value="AB+">AB+</option>
                  <option value="AB-">AB−</option>
                  <option value="O+">O+</option>
                  <option value="O-">O−</option>
                  <option value="__none__">— No blood type</option>
                </select>
                <button type="button" class="btn btn-md btn-primary" data-toggle="modal" data-target="#AddNewModal">
                  <i class="fa fa-plus-circle"></i> Add New
                </button>
              </div>
            </div><!-- /.card-header -->

            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped table-sm">
                <thead>
                  <tr>
                    <th>No.</th>
                    <th style="display:none;">id</th>
                    <th>Date</th>
                    <th>Last Name</th>
                    <th>First Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Contact</th>
                    <th>Blood Type</th>
                    <th>No. of Donations</th>
                    <th>Last Donation</th>
                    <th>Actions</th>
                  </tr>
                </thead>
                <tbody></tbody>
              </table>
            </div><!-- /.card-body -->

          </div><!-- /.card -->
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->


    <!-- ===== VIEW DETAILS MODAL ===== -->
    <div class="modal fade" id="viewDonorModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header bg-primary text-white">
            <h5 class="modal-title"><i class="fas fa-id-card mr-2"></i> Donor Details</h5>
            <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
          </div>
          <div class="modal-body">
            <div class="text-center mb-4">
              <div class="d-inline-flex align-items-center justify-content-center bg-primary text-white rounded-circle mb-2"
                style="width:64px;height:64px;font-size:1.6rem;">
                <i class="fas fa-user"></i>
              </div>
              <h4 class="mb-0" id="view_full_name">—</h4>
              <span class="badge badge-danger mt-1" id="view_bloodtype_badge">—</span>
            </div>
            <hr>
            <h6 class="text-primary font-weight-bold mb-2">
              <i class="fas fa-hand-holding-heart mr-1"></i> Donation Information
            </h6>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Date:</strong><br><span id="view_date">—</span></div>
              <div class="col-sm-4"><strong>Venue:</strong><br><span id="view_venue">—</span></div>
              <div class="col-sm-4"><strong>Type of Donor:</strong><br><span id="view_type_of_donor">—</span></div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Method of Collection:</strong><br><span id="view_method_of_collection">—</span></div>
              <div class="col-sm-4"><strong>Last Donation:</strong><br><span id="view_last_donation">—</span></div>
              <div class="col-sm-4"><strong>No. of Donations:</strong><br><span id="view_number_of_donations">—</span></div>
            </div>
            <hr>
            <h6 class="text-primary font-weight-bold mb-2">
              <i class="fas fa-user mr-1"></i> Personal Information
            </h6>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Last Name:</strong><br><span id="view_last_name">—</span></div>
              <div class="col-sm-4"><strong>First Name:</strong><br><span id="view_name">—</span></div>
              <div class="col-sm-4"><strong>Middle Name:</strong><br><span id="view_middle_name">—</span></div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Birthdate:</strong><br><span id="view_birthdate">—</span></div>
              <div class="col-sm-4"><strong>Age:</strong><br><span id="view_age">—</span></div>
              <div class="col-sm-4"><strong>Gender:</strong><br><span id="view_gender">—</span></div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Civil Status:</strong><br><span id="view_civil_status">—</span></div>
              <div class="col-sm-4"><strong>Nationality:</strong><br><span id="view_nationality">—</span></div>
              <div class="col-sm-4"><strong>Occupation:</strong><br><span id="view_occupation">—</span></div>
            </div>
            <hr>
            <h6 class="text-primary font-weight-bold mb-2">
              <i class="fas fa-address-book mr-1"></i> Contact & Address
            </h6>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Contact No.:</strong><br><span id="view_contact">—</span></div>
              <div class="col-sm-8"><strong>Email Address:</strong><br><span id="view_email_address">—</span></div>
            </div>
            <div class="row mb-3">
              <div class="col-sm-4"><strong>Home Address:</strong><br><span id="view_home_address">—</span></div>
              <div class="col-sm-4"><strong>Office Address:</strong><br><span id="view_office_address">—</span></div>
            </div>
          </div><!-- /.modal-body -->
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">
              <i class="fas fa-times-circle"></i> Close
            </button>
            <button type="button" class="btn btn-warning" id="viewToEditBtn">
              <i class="far fa-edit"></i> Edit This Donor
            </button>
          </div>
        </div>
      </div>
    </div><!-- /#viewDonorModal -->


    <!-- ===== ADD NEW MODAL ===== -->
    <div class="modal fade" id="AddNewModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <form id="addUserForm">
          <?= csrf_field() ?>
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title"><i class="fa fa-plus-circle"></i> Add New Donor</h5>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
              <div class="form-group">
                <label>Date</label>
                <input type="text" name="date" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Venue</label>
                <input type="text" name="venue" class="form-control" required />
              </div>
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
                <input type="number" name="age" class="form-control" required />
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
                <select class="form-control" name="civil_status">
                  <option value="Single">Single</option>
                  <option value="Married">Married</option>
                  <option value="Widowed">Widowed</option>
                  <option value="Legally Separated">Legally Separated</option>
                  <option value="Annulled/Void">Annulled/Void</option>
                  <option value="Divorced">Divorced</option>
                </select>
              </div>
              <div class="form-group">
                <label>Contact</label>
                <input type="text" name="contact" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Email Address</label>
                <input type="email" name="email_address" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Nationality</label>
                <input type="text" name="nationality" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Occupation</label>
                <select class="form-control" name="occupation">
                  <option value="Employed">Employed</option>
                  <option value="Unemployed">Unemployed</option>
                  <option value="Student / Not in the Labor Force">Student / Not in the Labor Force</option>
                  <option value="Underemployed">Underemployed</option>
                </select>
              </div>
              <div class="form-group">
                <label>Home Address</label>
                <input type="text" name="home_address" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Office Address</label>
                <input type="text" name="office_address" class="form-control" />
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
                <input type="date" name="last_donation" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Number of Donations</label>
                <input type="number" name="number_of_donations" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Blood Type</label>
                <select class="form-control" name="bloodtype_id">
                  <option value="">-- Select Blood Type --</option>
                  <?php foreach ($bloodtypes ?? [] as $bt): ?>
                    <option value="<?= $bt['bloodtype_id'] ?>"><?= esc($bt['bloodtype']) ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
            </div>
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
    </div><!-- /#AddNewModal -->


    <!-- ===== EDIT MODAL ===== -->
    <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <form id="editUserForm">
            <?= csrf_field() ?>
            <div class="modal-header">
              <h5 class="modal-title"><i class="far fa-edit"></i> Edit Record</h5>
              <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
              <input type="hidden" id="userId" name="donor_id">
              <div class="form-group">
                <label>Date</label>
                <input type="text" id="date" name="date" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Venue</label>
                <input type="text" id="venue" name="venue" class="form-control" required />
              </div>
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
                <input type="number" id="age" name="age" class="form-control" required />
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
                <select class="form-control" id="civil_status" name="civil_status">
                  <option value="Single">Single</option>
                  <option value="Married">Married</option>
                  <option value="Widowed">Widowed</option>
                  <option value="Legally Separated">Legally Separated</option>
                  <option value="Annulled/Void">Annulled/Void</option>
                  <option value="Divorced">Divorced</option>
                </select>
              </div>
              <div class="form-group">
                <label>Contact</label>
                <input type="text" id="contact" name="contact" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Email Address</label>
                <input type="email" id="email_address" name="email_address" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Nationality</label>
                <input type="text" id="nationality" name="nationality" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Occupation</label>
                <select class="form-control" id="occupation" name="occupation">
                  <option value="Employed">Employed</option>
                  <option value="Unemployed">Unemployed</option>
                  <option value="Student / Not in the Labor Force">Student / Not in the Labor Force</option>
                  <option value="Underemployed">Underemployed</option>
                </select>
              </div>
              <div class="form-group">
                <label>Home Address</label>
                <input type="text" id="home_address" name="home_address" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Office Address</label>
                <input type="text" id="office_address" name="office_address" class="form-control" />
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
                <input type="date" id="last_donation" name="last_donation" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Number of Donations</label>
                <input type="number" id="number_of_donations" name="number_of_donations" class="form-control" required />
              </div>
              <div class="form-group">
                <label>Blood Type</label>
                <select class="form-control" id="bloodtype_id" name="bloodtype_id">
                  <option value="">-- Select Blood Type --</option>
                  <?php foreach ($bloodtypes as $bt): ?>
                    <option value="<?= $bt['bloodtype_id'] ?>"><?= esc($bt['bloodtype']) ?></option>
                  <?php endforeach; ?>
                </select>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">
                <i class="fas fa-times-circle"></i> Cancel
              </button>
              <button type="submit" class="btn btn-primary">
                <i class="fa fa-save"></i> Save
              </button>
            </div>
          </form>
        </div>
      </div>
    </div><!-- /#editUserModal -->

  </section>
</div>

<div class="toasts-top-right fixed" style="position:fixed;top:1rem;right:1rem;z-index:9999;"></div>

<?= $this->endSection() ?>

<?= $this->section('scripts') ?>
<script>const baseUrl = "<?= base_url() ?>";</script>
<script src="<?= base_url('js/donor/donor.js') ?>"></script>
<?= $this->endSection() ?>