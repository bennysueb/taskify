@extends('layout')

@section('title')
    {{ get_label('job_vacancies', 'Job Vacancies') }}
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
                    <li class="breadcrumb-item active">
                        {{ get_label('job_vacancies', 'Job Vacancies') }}
                    </li>
                </ol>
            </nav>
        </div>
        <div>
            <a href="{{ route('jobs.create') }}">
                <button type="button" class="btn btn-sm btn-primary" data-bs-toggle="tooltip" data-bs-placement="left" data-bs-original-title="{{ get_label('create_job_vacancy', 'Create Job Vacancy') }}">
                    <i class='bx bx-plus'></i>
                </button>
            </a>
        </div>
    </div>

    <div class="card">
        <div class="card-body">
            <div class="table-responsive text-nowrap">
                <table class="table table-striped" id="table" data-toggle="table" data-loading-template="loadingTemplate" data-url="" data-icons-prefix="bx" data-icons="icons" data-show-refresh="true" data-total-field="total" data-trim-on-search="false" data-data-field="rows" data-page-list="[5, 10, 20, 50, 100, 200]" data-search="true" data-side-pagination="client" data-pagination="true">
                    <thead>
                        <tr>
                            <th data-field="id" data-sortable="true">ID</th>
                            <th data-field="title" data-sortable="true">{{ get_label('title', 'Title') }}</th>
                            <th data-field="division" data-sortable="true">{{ get_label('division', 'Division') }}</th>
                            <th data-field="status" data-sortable="true">{{ get_label('status', 'Status') }}</th>
                            <th data-field="applicants" data-sortable="true">{{ get_label('applicants', 'Applicants') }}</th>
                            <th data-field="created_at" data-sortable="true">{{ get_label('created_at', 'Created At') }}</th>
                            <th data-field="actions">{{ get_label('actions', 'Actions') }}</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($jobVacancies as $job)
                            <tr>
                                <td>{{ $job->id }}</td>
                                <td>{{ $job->title }}</td>
                                <td>{{ $job->division ? $job->division->title : '-' }}</td>
                                <td>
                                    <span class="badge bg-{{ $job->status == 'active' ? 'success' : ($job->status == 'closed' ? 'danger' : 'secondary') }}">
                                        {{ ucfirst($job->status) }}
                                    </span>
                                </td>
                                <td>{{ $job->candidates->count() }}</td>
                                <td>{{ format_date($job->created_at) }}</td>
                                <td>
                                    <a href="{{ route('jobs.edit', $job->id) }}" class="btn btn-sm btn-icon btn-outline-secondary">
                                        <i class="bx bx-edit"></i>
                                    </a>
                                    <button type="button" class="btn btn-sm btn-icon btn-outline-danger" onclick="deleteJob({{ $job->id }})">
                                        <i class="bx bx-trash"></i>
                                    </button>
                                     <a href="{{ route('public.jobs.show', $job->slug) }}" target="_blank" class="btn btn-sm btn-icon btn-outline-info">
                                        <i class="bx bx-link-external"></i>
                                    </a>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    function deleteJob(id) {
        if(confirm('Are you sure?')) {
            $.ajax({
                url: "{{ url('jobs/destroy') }}/" + id,
                type: 'DELETE',
                data: {
                    "_token": "{{ csrf_token() }}"
                },
                success: function(response) {
                    location.reload();
                }
            });
        }
    }
</script>
@endsection
