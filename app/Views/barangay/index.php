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

        <div class="modal-body">

  <div class="form-group">
    <label for="barangay_select">Choose Barangay:</label>
    <select class="form-control" id="barangay_select" name="barangay_name" required>
      <option value="">-- Select Barangay --</option>

      <option value="Bgry 1" data-city="Kabankalan City">Bgry 1, Kabankalan City</option>
      <option value="Bgry 2" data-city="Kabankalan City">Bgry 2, Kabankalan City</option>
      <option value="Bgry 3" data-city="Kabankalan City">Bgry 3, Kabankalan City</option>
      <option value="Bgry 4" data-city="Kabankalan City">Bgry 4, Kabankalan City</option>
      <option value="Bgry 5" data-city="Kabankalan City">Bgry 5, Kabankalan City</option>
      <option value="Bgry 6" data-city="Kabankalan City">Bgry 6, Kabankalan City</option>
      <option value="Bgry 7" data-city="Kabankalan City">Bgry 7, Kabankalan City</option>
      <option value="Bgry 8" data-city="Kabankalan City">Bgry 8, Kabankalan City</option>
      <option value="Bgry 9" data-city="Kabankalan City">Bgry 9, Kabankalan City</option>

      <option value="Bantayan" data-city="Kabankalan City">Bantayan, Kabankalan City</option>
      <option value="Binicuil" data-city="Kabankalan City">Binicuil, Kabankalan City</option>
      <option value="Camansi" data-city="Kabankalan City">Camansi, Kabankalan City</option>
      <option value="Camingawan" data-city="Kabankalan City">Camingawan, Kabankalan City</option>
      <option value="Camugao" data-city="Kabankalan City">Camugao, Kabankalan City</option>
      <option value="Carol-an" data-city="Kabankalan City">Carol-an, Kabankalan City</option>
      <option value="Daan Banua" data-city="Kabankalan City">Daan Banua, Kabankalan City</option>
      <option value="Hilamonan" data-city="Kabankalan City">Hilamonan, Kabankalan City</option>
      <option value="Inapoy" data-city="Kabankalan City">Inapoy, Kabankalan City</option>
      <option value="Linao" data-city="Kabankalan City">Linao, Kabankalan City</option>
      <option value="Locotan" data-city="Kabankalan City">Locotan, Kabankalan City</option>
      <option value="Magballo" data-city="Kabankalan City">Magballo, Kabankalan City</option>
      <option value="Oringao" data-city="Kabankalan City">Oringao, Kabankalan City</option>
      <option value="Orong" data-city="Kabankalan City">Orong, Kabankalan City</option>
      <option value="Pinaguinpinan" data-city="Kabankalan City">Pinaguinpinan, Kabankalan City</option>
      <option value="Salong" data-city="Kabankalan City">Salong, Kabankalan City</option>
      <option value="Tabugon" data-city="Kabankalan City">Tabugon, Kabankalan City</option>
      <option value="Tagoc" data-city="Kabankalan City">Tagoc, Kabankalan City</option>
      <option value="Tagukon" data-city="Kabankalan City">Tagukon, Kabankalan City</option>
      <option value="Talubangi" data-city="Kabankalan City">Talubangi, Kabankalan City</option>
      <option value="Tampalon" data-city="Kabankalan City">Tampalon, Kabankalan City</option>
      <option value="Tan-Awan" data-city="Kabankalan City">Tan-Awan, Kabankalan City</option>
      <option value="Tapi" data-city="Kabankalan City">Tapi, Kabankalan City</option>

    </select>
  </div>

  <!-- Hidden city input -->
  <input type="hidden" name="city" id="city_input" value="Kabankalan City">

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
          </div>
          <div class="form-group">
            <label>City</label>
            <input type="text" id="city" name="city" class="form-control" required />
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
</div>
</section>
</div>
<div class="toasts-top-right fixed" style="position: fixed; top: 1rem; right: 1rem; z-index: 9999;"></div>
<?= $this->endSection() ?>


<?= $this->section('scripts') ?>
<script> const baseUrl = "<?= base_url() ?>"; </script>
<script src="<?= base_url('js/barangay/barangay.js') ?>"></script>
<?= $this->endSection() ?>
<script>
  document.getElementById('barangay_select').addEventListener('change', function () {
    const city = this.options[this.selectedIndex].dataset.city;
    document.getElementById('city_input').value = city || '';
  });
</script>