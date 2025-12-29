@extends('layout')

@section('title')
Password Manager
@endsection

@section('content')
<div class="container-fluid">
    <div class="d-flex justify-content-between mb-2 mt-4">
        <div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1">
                    <li class="breadcrumb-item">
                        <a href="{{url('/home')}}">Home</a>
                    </li>
                    <li class="breadcrumb-item active">
                        Password Manager
                    </li>
                </ol>
            </nav>
        </div>
        <div>
            @if (Auth::user()->can('create_password_manager'))
            <a href="javascript:void(0);" data-bs-toggle="modal" data-bs-target="#create_password_modal">
                <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="Create Password">
                    <i class="bx bx-plus"></i>
                </button>
            </a>
            @endif
        </div>
    </div>

    <!-- Table -->
    <div class="card">
        <div class="card-body">
            <div class="table-responsive text-nowrap">
                {{ $passwordManagers->isNotEmpty() ? $passwordManagers->count() . ' Records Found' : '' }}
                 <table class="table table-striped" id="table" data-toggle="table" data-loading-template="loadingTemplate" data-icons-prefix="bx" data-icons="icons" data-show-refresh="true" data-total-field="total" data-data-field="rows" data-page-list="[10, 25, 50, 100, all]" data-search="true" data-side-pagination="client" data-pagination="true">
                    <thead>
                        <tr>
                            <th data-sortable="true">Title</th>
                            <th data-sortable="true">Username</th>
                            <th data-sortable="true">URL</th>
                            <th data-sortable="false">Password</th>
                            <th data-sortable="true">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($passwordManagers as $pm)
                        <tr>
                            <td>{{ $pm->title }}</td>
                            <td>{{ $pm->username }}</td>
                            <td><a href="{{ $pm->url }}" target="_blank">{{ $pm->url }}</a></td>
                            <td>
                                <span id="password-mask-{{ $pm->id }}">******</span>
                                <span id="password-real-{{ $pm->id }}" class="d-none text-danger"></span>
                                <a href="javascript:void(0);" class="toggle-password ms-2" data-id="{{ $pm->id }}" title="Show/Hide Password">
                                    <i class="bx bx-show"></i>
                                </a>
                                <a href="javascript:void(0);" class="copy-password ms-2 text-primary" data-id="{{ $pm->id }}" title="Copy to Clipboard">
                                    <i class="bx bx-copy"></i>
                                </a>
                            </td>
                            <td>
                                <div class="d-flex">
                                    @if(Auth::user()->can('edit_password_manager'))
                                    <a href="javascript:void(0);" class="edit-password" data-id="{{ $pm->id }}" title="Edit"><i class='bx bx-edit mx-1'></i></a>
                                    @endif
                                    @if(Auth::user()->can('delete_password_manager'))
                                    <a href="javascript:void(0);" class="delete" data-id="{{ $pm->id }}" data-type="password-manager" title="Delete"><i class='bx bx-trash text-danger mx-1'></i></a>
                                    @endif
                                </div>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Create Modal -->
<div class="modal fade" id="create_password_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Create Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="create_password_form">
                @csrf
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" id="title" name="title" class="form-control" placeholder="e.g. Google Account" required>
                        </div>
                        <div class="col-12 mb-3">
                            <label for="username" class="form-label">Username</label>
                            <input type="text" id="username" name="username" class="form-control" placeholder="Username/Email">
                        </div>
                        <div class="col-12 mb-3">
                            <label for="password" class="form-label">Password</label>
                            <div class="input-group">
                                <input type="text" id="password" name="password" class="form-control" placeholder="Password" required>
                                <button class="btn btn-outline-secondary" type="button" id="generate_password">Generate</button>
                            </div>
                        </div>
                        <div class="col-12 mb-3">
                            <label for="url" class="form-label">URL</label>
                            <input type="url" id="url" name="url" class="form-control" placeholder="https://example.com">
                        </div>
                        <div class="col-12 mb-3">
                            <label for="description" class="form-label">Description</label>
                            <textarea id="description" name="description" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="save_btn">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Edit Modal -->
<div class="modal fade" id="edit_password_modal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Password</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form id="edit_password_form">
                @csrf
                <input type="hidden" id="edit_id" name="id">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-12 mb-3">
                            <label for="edit_title" class="form-label">Title</label>
                            <input type="text" id="edit_title" name="title" class="form-control" required>
                        </div>
                        <div class="col-12 mb-3">
                            <label for="edit_username" class="form-label">Username</label>
                            <input type="text" id="edit_username" name="username" class="form-control">
                        </div>
                        <div class="col-12 mb-3">
                            <label for="edit_password" class="form-label">Password</label>
                            <div class="input-group">
                                <input type="text" id="edit_password" name="password" class="form-control" required>
                                <button class="btn btn-outline-secondary" type="button" id="edit_generate_password">Generate</button>
                            </div>
                        </div>
                        <div class="col-12 mb-3">
                            <label for="edit_url" class="form-label">URL</label>
                            <input type="url" id="edit_url" name="url" class="form-control">
                        </div>
                        <div class="col-12 mb-3">
                            <label for="edit_description" class="form-label">Description</label>
                            <textarea id="edit_description" name="description" class="form-control" rows="3"></textarea>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" id="update_btn">Update</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function generatePassword(length = 12) {
        const charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_+";
        let retVal = "";
        for (let i = 0, n = charset.length; i < length; ++i) {
            retVal += charset.charAt(Math.floor(Math.random() * n));
        }
        return retVal;
    }

    $(document).ready(function() {
        $('#generate_password').click(function() {
            $('#password').val(generatePassword());
        });
        $('#edit_generate_password').click(function() {
            $('#edit_password').val(generatePassword());
        });

        // Toggle Password Visibility in Table
        $(document).on('click', '.toggle-password', function() {
            var id = $(this).data('id');
            var icon = $(this).find('i');
            var maskSpan = $('#password-mask-' + id);
            var realSpan = $('#password-real-' + id);

            if (realSpan.text() === "") {
                // Fetch it via AJAX
                // Show loading state if needed, or just toastr
                $.ajax({
                    url: "{{ url('/password-manager/get') }}/" + id,
                    type: 'GET',
                    success: function(response) {
                        if(response.error == false) {
                            realSpan.text(response.data.password);
                            maskSpan.addClass('d-none');
                            realSpan.removeClass('d-none');
                            icon.removeClass('bx-show').addClass('bx-hide');
                        } else {
                            toastr.error('Failed to retrieve password');
                        }
                    },
                    error: function() {
                        toastr.error('Error fetching password');
                    }
                });
            } else {
                // Toggle
                if (maskSpan.hasClass('d-none')) {
                    maskSpan.removeClass('d-none');
                    realSpan.addClass('d-none');
                    icon.removeClass('bx-hide').addClass('bx-show');
                } else {
                    maskSpan.addClass('d-none');
                    realSpan.removeClass('d-none');
                    icon.removeClass('bx-show').addClass('bx-hide');
                }
            }
        });

        // Copy Password
        $(document).on('click', '.copy-password', function() {
            var id = $(this).data('id');
            var realSpan = $('#password-real-' + id);
            var password = realSpan.text();

            function copyToClipboard(text) {
                if (navigator.clipboard && window.isSecureContext) {
                    navigator.clipboard.writeText(text).then(function() {
                        toastr.success('Password copied to clipboard!');
                    }, function(err) {
                        toastr.error('Could not copy password');
                        console.error('Async: Could not copy text: ', err);
                    });
                } else {
                    // Fallback for older browsers or non-secure contexts
                    let textArea = document.createElement("textarea");
                    textArea.value = text;
                    textArea.style.position = "fixed";
                    textArea.style.left = "-9999px";
                    document.body.appendChild(textArea);
                    textArea.focus();
                    textArea.select();
                    try {
                        document.execCommand('copy');
                        toastr.success('Password copied to clipboard!');
                    } catch (err) {
                        console.error('Fallback: Oops, unable to copy', err);
                        toastr.error('Could not copy password');
                    }
                    document.body.removeChild(textArea);
                }
            }

            if (password === "") {
                $.ajax({
                    url: "{{ url('/password-manager/get') }}/" + id,
                    type: 'GET',
                    success: function(response) {
                        if(response.error == false) {
                            realSpan.text(response.data.password);
                            copyToClipboard(response.data.password);
                        } else {
                            toastr.error('Failed to retrieve password');
                        }
                    },
                    error: function() {
                        toastr.error('Error fetching password');
                    }
                });
            } else {
                copyToClipboard(password);
            }
        });

        // Create
        $('#create_password_form').submit(function(e) {
            e.preventDefault();
            $('#save_btn').html('Please Wait...').attr('disabled', true);
            
            $.ajax({
                url: "{{ route('password_manager.store') }}",
                type: 'POST',
                data: $(this).serialize(),
                success: function(response) {
                    $('#save_btn').html('Save').attr('disabled', false);
                    if(response.error == false) {
                        toastr.success(response.message);
                        $('#create_password_modal').modal('hide');
                        location.reload();
                    } else {
                        toastr.error(response.message);
                    }
                },
                error: function() {
                    $('#save_btn').html('Save').attr('disabled', false);
                    toastr.error('Something went wrong');
                }
            });
        });

        // Edit Click
        $(document).on('click', '.edit-password', function() {
            var id = $(this).data('id');
            $('#edit_password_modal').modal('show');
            
            $.ajax({
                url: "{{ url('/password-manager/get') }}/" + id,
                type: 'GET',
                success: function(response) {
                    if(response.error == false) {
                        var data = response.data;
                        $('#edit_id').val(data.id);
                        $('#edit_title').val(data.title);
                        $('#edit_username').val(data.username);
                        $('#edit_password').val(data.password);
                        $('#edit_url').val(data.url);
                        $('#edit_description').val(data.description);
                    } else {
                        toastr.error('Failed to fetch data');
                    }
                },
                error: function() {
                    toastr.error('Something went wrong');
                }
            });
        });

        // Update
        $('#edit_password_form').submit(function(e) {
            e.preventDefault();
            $('#update_btn').html('Please Wait...').attr('disabled', true);
            
            $.ajax({
                url: "{{ route('password_manager.update') }}",
                type: 'POST',
                data: $(this).serialize(),
                success: function(response) {
                    $('#update_btn').html('Update').attr('disabled', false);
                    if(response.error == false) {
                        toastr.success(response.message);
                        $('#edit_password_modal').modal('hide');
                        location.reload();
                    } else {
                        toastr.error(response.message);
                    }
                },
                error: function() {
                    $('#update_btn').html('Update').attr('disabled', false);
                    toastr.error('Something went wrong');
                }
            });
        });
    });
</script>
@endsection
