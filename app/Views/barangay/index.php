<?= $this->extend('theme/template') ?>

<?= $this->section('content') ?>
<div class="content-wrapper">
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Barangay</h1>
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
              <h3 class="card-title">List of Barangay</h3>
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
                    <th>Barangay Name</th>
                    <th>City</th>
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


         <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label>Role</label>
                    <select class="form-control" name="role">
                      <option value="Admin">Admin</option>
                      <option value="User">User</option>
                      <option value="Guest">Guest</option>
                    </select>
                  </div>
                </div>


        <div class="modal-body">
          <div class="form-group">
            <label>Barangay Name</label>
            <input type="text" name="barangay_name" class="form-control" required />
             <select class="form-control" name="barangay_name">
              <option value="Barangay 1 (Pob.)">Barangay 1 (Pob.)</option>
              <option value="Barangay 2 (Pob.)">Barangay 2 (Pob.)</option>
              <option value="Barangay 3 (Pob.)">Barangay 3 (Pob.)</option>
              <option value="Barangay 4 (Pob.)">Barangay 4 (Pob.)</option> 
              <option value="Barangay 5 (Pob.)">Barangay 5 (Pob.)</option>
              <option value="Barangay 6 (Pob.)">Barangay 6 (Pob.)</option>
              <option value="Barangay 7 (Pob.)">Barangay 7 (Pob.)</option>
              <option value="Barangay 8 (Pob.)">Barangay 8 (Pob.)</option> 
              <option value="Barangay 9 (Pob.)">Barangay 9 (Pob.)</option>
              <option value="Bantayan">Bantayan</option>
              <option value="Binicuil">Binicuil</option> 
              <option value="Camansi">Camansi</option> 
              <option value="Camingawan">Camingawan</option>
              <option value="Camugao">Camugao</option> 
              <option value="Carol-an">Carol-an</option>
              <option value="Daan Banua">Daan Banua</option>
              <option value="Hilamonan">Hilamonan</option>
              <option value="Inapoy">Inapoy</option>
              <option value="Linao">Linao</option>
              <option value="Locotan">Locotan</option>
              <option value="Magballo">Magballo</option>
              <option value="Oringao">Oringao</option>
              <option value="Orong">Orong</option>
              <option value="Pinaguinpinan">Pinaguinpinan</option>
              <option value="Salong">Salong</option>
              <option value="Tabugon">Tabugon</option>
              <option value="Tagoc">Tagoc</option>
              <option value="Tagukon">Tagukon</option>
              <option value="Talubangi">Talubangi</option>
              <option value="Tampalon">Tampalon</option>
              <option value="Tan-awan">Tan-awan</option>
              <option value="Tapi">Tapi</option>
            </select>
          </div>
          </div>
          </div>
        </div>
        
        <div class="modal-body">
          <div class="form-group">
            <label>City</label>
            <input type="text" name="city" class="form-control" required />
          </div>
        </div>

        <!-- ✅ FIXED: closed modal-body -->

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

          <input type="hidden" id="userId" name="barangay_id">
          <div class="form-group">
            <label>Barangay Name</label>
            <input type="text" id="barangay_name" name="barangay_name" class="form-control" required />
             <select class="form-control" name="">
              <option value="Barangay 1 (Pob.)">Barangay 1 (Pob.)</option>
              <option value="Barangay 2 (Pob.)">Barangay 2 (Pob.)</option>
              <option value="Barangay 3 (Pob.)">Barangay 3 (Pob.)</option>
              <option value="Barangay 4 (Pob.)">Barangay 4 (Pob.)</option> 
              <option value="Barangay 5 (Pob.)">Barangay 5 (Pob.)</option>
              <option value="Barangay 6 (Pob.)">Barangay 6 (Pob.)</option>
              <option value="Barangay 7 (Pob.)">Barangay 7 (Pob.)</option>
              <option value="Barangay 8 (Pob.)">Barangay 8 (Pob.)</option> 
              <option value="Barangay 9 (Pob.)">Barangay 9 (Pob.)</option>
              <option value="Bantayan">Bantayan</option>
              <option value="Binicuil">Binicuil</option> 
              <option value="Camansi">Camansi</option> 
              <option value="Camingawan">Camingawan</option>
              <option value="Camugao">Camugao</option> 
              <option value="Carol-an">Carol-an</option>
              <option value="Daan Banua">Daan Banua</option>
              <option value="Hilamonan">Hilamonan</option>
              <option value="Inapoy">Inapoy</option>
              <option value="Linao">Linao</option>
              <option value="Locotan">Locotan</option>
              <option value="Magballo">Magballo</option>
              <option value="Oringao">Oringao</option>
              <option value="Orong">Orong</option>
              <option value="Pinaguinpinan">Pinaguinpinan</option>
              <option value="Salong">Salong</option>
              <option value="Tabugon">Tabugon</option>
              <option value="Tagoc">Tagoc</option>
              <option value="Tagukon">Tagukon</option>
              <option value="Talubangi">Talubangi</option>
              <option value="Tampalon">Tampalon</option>
              <option value="Tan-awan">Tan-awan</option>
              <option value="Tapi">Tapi</option>
            </select>
          </div>
          </div>
          </div>

          <div class="form-group">
            <label>City</label>
            <input type="text" id="city" name="city" class="form-control" required />
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
<script src="<?= base_url('js/barangay/barangay.js') ?>"></script>
<?= $this->endSection() ?>




  <


        