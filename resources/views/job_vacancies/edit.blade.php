@extends('layout')

@section('title')
    {{ get_label('edit_job_vacancy', 'Edit Job Vacancy') }}
@endsection

@section('content')
<div class="container-fluid">
    <div class="d-flex justify-content-between mb-2 mt-4">
         <div>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb breadcrumb-style1">
                    <li class="breadcrumb-item">
                        <a href="{{ url('home') }}">{{ get_label('home', 'Home') }}</a>
                    </li>
                    <li class="breadcrumb-item">
                        <a href="{{ route('jobs.index') }}">{{ get_label('job_vacancies', 'Job Vacancies') }}</a>
                    </li>
                    <li class="breadcrumb-item active">
                        {{ get_label('edit', 'Edit') }}
                    </li>
                </ol>
            </nav>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <form action="{{ route('jobs.update', $jobVacancy->id) }}" method="POST" id="edit_job_form">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="title" class="form-label">{{ get_label('title', 'Title') }} <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" name="title" value="{{ $jobVacancy->title }}" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="division_id" class="form-label">{{ get_label('division', 'Division') }}</label>
                        <select class="form-select" name="division_id">
                            <option value="">{{ get_label('select_division', 'Select Division') }}</option>
                            @foreach ($divisions as $division)
                                <option value="{{ $division->id }}" {{ $jobVacancy->division_id == $division->id ? 'selected' : '' }}>{{ $division->title }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="type" class="form-label">{{ get_label('type', 'Type') }} <span class="text-danger">*</span></label>
                        <select class="form-select" name="type" required>
                            <option value="Full Time" {{ $jobVacancy->type == 'Full Time' ? 'selected' : '' }}>Full Time</option>
                            <option value="Part Time" {{ $jobVacancy->type == 'Part Time' ? 'selected' : '' }}>Part Time</option>
                            <option value="Contract" {{ $jobVacancy->type == 'Contract' ? 'selected' : '' }}>Contract</option>
                            <option value="Freelance" {{ $jobVacancy->type == 'Freelance' ? 'selected' : '' }}>Freelance</option>
                            <option value="Internship" {{ $jobVacancy->type == 'Internship' ? 'selected' : '' }}>Internship</option>
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="location" class="form-label">{{ get_label('location', 'Location') }}</label>
                        <input type="text" class="form-control" name="location" value="{{ $jobVacancy->location }}">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="status" class="form-label">{{ get_label('status', 'Status') }} <span class="text-danger">*</span></label>
                        <select class="form-select" name="status" required>
                            <option value="draft" {{ $jobVacancy->status == 'draft' ? 'selected' : '' }}>Draft</option>
                            <option value="active" {{ $jobVacancy->status == 'active' ? 'selected' : '' }}>Active</option>
                            <option value="closed" {{ $jobVacancy->status == 'closed' ? 'selected' : '' }}>Closed</option>
                        </select>
                    </div>
                     <div class="col-md-6 mb-3">
                        <label for="apply_link" class="form-label">{{ get_label('apply_link', 'External Apply Link (Optional)') }}</label>
                        <input type="url" class="form-control" name="apply_link" value="{{ $jobVacancy->apply_link }}">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label for="start_date" class="form-label">{{ get_label('start_date', 'Start Date') }}</label>
                        <input type="date" class="form-control" name="start_date" value="{{ $jobVacancy->start_date }}">
                    </div>
                     <div class="col-md-6 mb-3">
                        <label for="end_date" class="form-label">{{ get_label('end_date', 'End Date') }}</label>
                        <input type="date" class="form-control" name="end_date" value="{{ $jobVacancy->end_date }}">
                    </div>
                    
                     <div class="col-md-12 mb-3">
                        <label for="short_description" class="form-label">{{ get_label('short_description', 'Short Description') }}</label>
                        <textarea class="form-control" name="short_description" rows="3">{{ $jobVacancy->short_description }}</textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="description" class="form-label">{{ get_label('description', 'Description') }} <span class="text-danger">*</span></label>
                        <textarea class="form-control" name="description" id="description_editor" rows="5">{{ $jobVacancy->description }}</textarea>
                    </div>
                    
                    <div class="col-md-12 mb-3">
                        <label for="requirements" class="form-label">{{ get_label('requirements', 'Requirements') }}</label>
                        <textarea class="form-control" name="requirements" id="requirements_editor" rows="5">{{ $jobVacancy->requirements }}</textarea>
                    </div>
                </div>

                <div class="mt-4">
                    <button type="submit" class="btn btn-primary">{{ get_label('update', 'Update') }}</button>
                    <a href="{{ route('jobs.index') }}" class="btn btn-secondary">{{ get_label('cancel', 'Cancel') }}</a>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        if (typeof tinymce !== 'undefined') {
            tinymce.init({
                selector: '#description_editor, #requirements_editor',
                height: 300,
                menubar: false,
                plugins: [
                    'advlist autolink lists link image charmap print preview anchor',
                    'searchreplace visualblocks code fullscreen',
                    'insertdatetime media table paste code help wordcount'
                ],
                toolbar: 'undo redo | formatselect | ' +
                'bold italic backcolor | alignleft aligncenter ' +
                'alignright alignjustify | bullist numlist outdent indent | ' +
                'removeformat | help',
                content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
            });
        }
    });

    $('#edit_job_form').submit(function (e) {
        e.preventDefault();
         if (typeof tinymce !== 'undefined') {
            tinymce.triggerSave();
        }
        var form = $(this);
        var submitBtn = form.find('button[type="submit"]');
        var originalBtnText = submitBtn.text();
        submitBtn.prop('disabled', true).html('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Updating...');

        $.ajax({
            url: form.attr('action'),
            type: 'POST',
            data: new FormData(this),
            contentType: false,
            cache: false,
            processData: false,
            success: function (response) {
                if (response.error == false) {
                    window.location.href = "{{ route('jobs.index') }}";
                } else {
                    toastr.error(response.message);
                    submitBtn.prop('disabled', false).text(originalBtnText);
                }
            },
            error: function (xhr) {
                submitBtn.prop('disabled', false).text(originalBtnText);
                var response = xhr.responseJSON;
                if (response && response.errors) {
                    $.each(response.errors, function (key, value) {
                        toastr.error(value[0]);
                    });
                } else {
                    toastr.error('An error occurred. Please try again.');
                }
            }
        });
    });
</script>
@endsection
