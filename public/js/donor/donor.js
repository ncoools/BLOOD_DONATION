function showToast(type, message) {
    if (type === 'success') {
        toastr.success(message, 'Success');
    } else {
        toastr.error(message, 'Error');
    }
}

// ─── ADD ────────────────────────────────────────────────────────────────────
$('#addUserForm').on('submit', function (e) {
    e.preventDefault();
    $.ajax({
        url: baseUrl + 'donor/save',
        method: 'POST',
        data: $(this).serialize(),
        dataType: 'json',
        success: function (response) {
            if (response.status === 'success') {
                $('#AddNewModal').modal('hide');
                $('#addUserForm')[0].reset();
                showToast('success', 'Donor added successfully!');
                setTimeout(() => location.reload(), 1000);
            } else {
                showToast('error', response.message || 'Failed to add donor.');
            }
        },
        error: function () {
            showToast('error', 'An error occurred.');
        }
    });
});

// ─── VIEW DETAILS ───────────────────────────────────────────────────────────
// Stores the current donor_id shown in the details modal (for the Edit button)
let currentViewDonorId = null;

$(document).on('click', '.view-btn', function () {
    const donorId = $(this).data('id');
    currentViewDonorId = donorId;

    $.ajax({
        url: baseUrl + 'donor/edit/' + donorId, // reuses the same fetch endpoint
        method: 'GET',
        dataType: 'json',
        success: function (response) {
            if (!response.data) { alert('Could not load donor data.'); return; }
            const d = response.data;

            // Name banner
            const fullName = [d.last_name, d.name, d.middle_name].filter(Boolean).join(', ');
            $('#view_full_name').text(fullName || '—');
            $('#view_bloodtype_badge').text(d.bloodtype || 'No Blood Type');

            // Donation info
            $('#view_date').text(d.date || '—');
            $('#view_venue').text(d.venue || '—');
            $('#view_type_of_donor').text(d.type_of_donor || '—');
            $('#view_method_of_collection').text(d.method_of_collection || '—');
            $('#view_last_donation').text(d.last_donation || '—');
            $('#view_number_of_donations').text(d.number_of_donations ?? '—');

            // Personal info
            $('#view_last_name').text(d.last_name || '—');
            $('#view_name').text(d.name || '—');
            $('#view_middle_name').text(d.middle_name || '—');
            $('#view_birthdate').text(d.birthdate || '—');
            $('#view_age').text(d.age ?? '—');
            $('#view_gender').text(d.gender || '—');
            $('#view_civil_status').text(d.civil_status ? d.civil_status.trim() : '—');
            $('#view_nationality').text(d.nationality || '—');
            $('#view_occupation').text(d.occupation ? d.occupation.trim() : '—');

            // Contact & address
            $('#view_contact').text(d.contact || '—');
            $('#view_email_address').text(d.email_address || '—');
            $('#view_home_address').text(d.home_address || '—');
            $('#view_office_address').text(d.office_address || '—');

            $('#viewDonorModal').modal('show');
        },
        error: function () {
            alert('Error loading donor details.');
        }
    });
});

// "Edit This Donor" button inside the details modal
$('#viewToEditBtn').on('click', function () {
    $('#viewDonorModal').modal('hide');
    // Small delay so Bootstrap finishes hiding before opening the next modal
    setTimeout(function () {
        $('.edit-btn[data-id="' + currentViewDonorId + '"]').trigger('click');
    }, 400);
});

// ─── EDIT (fetch & populate) ────────────────────────────────────────────────
$(document).on('click', '.edit-btn', function () {
    const userId = $(this).data('id');
    $.ajax({
        url: baseUrl + 'donor/edit/' + userId,
        method: 'GET',
        dataType: 'json',
        success: function (response) {
            if (!response.data) { alert('Error fetching donor data'); return; }
            const d = response.data;

            $('#editUserModal #userId').val(d.donor_id);
            $('#editUserModal #date').val(d.date);
            $('#editUserModal #venue').val(d.venue);
            $('#editUserModal #last_name').val(d.last_name);
            $('#editUserModal #name').val(d.name);
            $('#editUserModal #middle_name').val(d.middle_name);
            $('#editUserModal #birthdate').val(d.birthdate);
            $('#editUserModal #age').val(d.age);
            $('#editUserModal #gender').val(d.gender);
            $('#editUserModal #civil_status').val(d.civil_status ? d.civil_status.trim() : '');
            $('#editUserModal #contact').val(d.contact);
            $('#editUserModal #email_address').val(d.email_address);
            $('#editUserModal #nationality').val(d.nationality);
            $('#editUserModal #occupation').val(d.occupation ? d.occupation.trim() : '');
            $('#editUserModal #home_address').val(d.home_address);
            $('#editUserModal #office_address').val(d.office_address);
            $('#editUserModal #type_of_donor').val(d.type_of_donor);
            $('#editUserModal #method_of_collection').val(d.method_of_collection);
            $('#editUserModal #last_donation').val(d.last_donation);
            $('#editUserModal #number_of_donations').val(d.number_of_donations);
            $('#editUserModal #bloodtype_id').val(d.bloodtype_id || '');

            $('#editUserModal').modal('show');
        },
        error: function () {
            alert('Error fetching donor data');
        }
    });
});

// ─── UPDATE ─────────────────────────────────────────────────────────────────
$(document).ready(function () {
    $('#editUserForm').on('submit', function (e) {
        e.preventDefault();
        $.ajax({
            url: baseUrl + 'donor/update',
            method: 'POST',
            data: $(this).serialize(),
            dataType: 'json',
            success: function (response) {
                if (response.success) {
                    $('#editUserModal').modal('hide');
                    showToast('success', 'Donor updated successfully!');
                    setTimeout(() => location.reload(), 1000);
                } else {
                    alert('Error updating: ' + (response.message || 'Unknown error'));
                }
            },
            error: function (xhr) {
                alert('Error updating');
                console.error(xhr.responseText);
            }
        });
    });
});

// ─── DELETE ─────────────────────────────────────────────────────────────────
$(document).on('click', '.deleteUserBtn', function () {
    const userId    = $(this).data('id');
    const csrfName  = $('meta[name="csrf-name"]').attr('content');
    const csrfToken = $('meta[name="csrf-token"]').attr('content');

    if (confirm('Are you sure you want to delete this donor?')) {
        $.ajax({
            url: baseUrl + 'donor/delete/' + userId,
            method: 'POST',
            data: { _method: 'DELETE', [csrfName]: csrfToken },
            success: function (response) {
                if (response.success) {
                    showToast('success', 'Donor deleted successfully.');
                    setTimeout(() => location.reload(), 1000);
                } else {
                    alert(response.message || 'Failed to delete.');
                }
            },
            error: function () {
                alert('Something went wrong while deleting.');
            }
        });
    }
});

// ─── DATATABLE ──────────────────────────────────────────────────────────────
$(document).ready(function () {
    const csrfToken = $('meta[name="csrf-token"]').attr('content');

    const table = $('#example1').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: baseUrl + 'donor/fetchRecords',
            type: 'POST',
            headers: { 'X-CSRF-TOKEN': csrfToken },
            // Sends the filter value along with every server-side request
            data: function (d) {
                d.bloodtype_filter = $('#bloodTypeFilter').val();
            }
        },
        columns: [
    { data: 'row_number' },
    { data: 'donor_id',           visible: false },
    { data: 'date' },
    { data: 'last_name' },
    { data: 'name' },
    { data: 'age' },
    { data: 'gender' },
    { data: 'contact' },
    { data: 'bloodtype',          defaultContent: '<span class="text-muted">—</span>' },
    { data: 'number_of_donations' },
    { data: 'last_donation' },
    {
        data: null,
        orderable: false,
        searchable: false,
        render: function (data, type, row) {
            return `
                <button class="btn btn-sm btn-info view-btn" data-id="${row.donor_id}" title="View Details">
                    <i class="fas fa-eye"></i>
                </button>
                <button class="btn btn-sm btn-warning edit-btn" data-id="${row.donor_id}" title="Edit">
                    <i class="far fa-edit"></i>
                </button>
                <button class="btn btn-sm btn-danger deleteUserBtn" data-id="${row.donor_id}" title="Delete">
                    <i class="fas fa-trash-alt"></i>
                </button>`;
        }
    }
],
        responsive: true,
        autoWidth: false
    });

    // Redraw table whenever the filter changes
    $('#bloodTypeFilter').on('change', function () {
        table.ajax.reload();
    });
});