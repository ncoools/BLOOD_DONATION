function showToast(type, message) {
    if (type === 'success') {
        toastr.success(message, 'Success');
    } else {
        toastr.error(message, 'Error');
    }
}

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
                showToast('success', 'Person added successfully!');
                setTimeout(() => {
                    location.reload();
                }, 1000); 
            } else {
                showToast('error', response.message || 'Failed to add donor.');
            }
        },
        error: function () {
            showToast('error', 'An error occurred.');
        }
    });
});

$(document).on('click', '.edit-btn', function () {
   const userId = $(this).data('id'); 
   $.ajax({
    url: baseUrl + 'donor/edit/' + userId,
    method: 'GET',
    dataType: 'json',
    success: function (response) {
        if (response.data) {
            $('#editUserModal #name').val(response.data.name);
            $('#editUserModal #userId').val(response.data.donor_id);
            $('#editUserModal #last_name').val(response.data.last_name);
            $('#editUserModal #middle_name').val(response.data.middle_name);
            $('#editUserModal #contact').val(response.data.contact);
            $('#editUserModal #address').val(response.data.address);
            $('#editUserModal #citizenship').val(response.data.citizenship);
            $('#editUserModal #occupation').val(response.data.occupation);
            $('#editUserModal #gender').val(response.data.gender);
            $('#editUserModal #birthdate').val(response.data.birthdate);
            $('#editUserModal').modal('show');
        } else {
            alert('Error fetching donor data');
        }
    },
    error: function () {
        alert('Error fetching donor data');
    }
});
});


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
                    showToast('success', 'Person Updated successfully!');
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

$(document).on('click', '.deleteUserBtn', function () {
    const userId = $(this).data('id');
    const csrfName = $('meta[name="csrf-name"]').attr('content');
    const csrfToken = $('meta[name="csrf-token"]').attr('content');

    if (confirm('Are you sure you want to delete this donor?')) {
        $.ajax({
            url: baseUrl + 'donor/delete/' + userId,
            method: 'POST', 
            data: {
                _method: 'DELETE',
                [csrfName]: csrfToken
            },
            success: function (response) {
                if (response.success) {
                    showToast('success', 'Person deleted successfully.');
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

$(document).ready(function () {
    const $table = $('#example1');

    const csrfName = 'csrf_test_name'; 
    const csrfToken = $('input[name="' + csrfName + '"]').val();

    $table.DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: baseUrl + 'donor/fetchRecords',
            type: 'POST',
            headers: {
                'X-CSRF-TOKEN': csrfToken
            }
        },
        columns: [
        { data: 'row_number' },
        { data: 'donor_id', visible: false },
        { data: 'last_name' },
        { data: 'name' },
        { data: 'middle_name' },
        { data: 'gender' },
        { data: 'birthdate' },
        { data: 'occupation' },
        { data: 'citizenship' },
        { data: 'address' },
        { data: 'contact' },
        {
            data: null,
            orderable: false,
            searchable: false,
            render: function (data, type, row) {
                return `
                <button class="btn btn-sm btn-warning edit-btn" data-id="${row.donor_id}">
                <i class="far fa-edit"></i>
                </button>
                <button class="btn btn-sm btn-danger deleteUserBtn" data-id="${row.donor_id}">
                <i class="fas fa-trash-alt"></i>
                </button>
                `;
            }
        }
        ],
        responsive: true,
        autoWidth: false
    });
});