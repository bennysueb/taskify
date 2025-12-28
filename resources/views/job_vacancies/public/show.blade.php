@extends('layout')

@section('title')
    {{ $job->title }} - Careers
@endsection

@section('content')
<div class="bg-white">
     <!-- Header -->
    <header class="py-3 border-bottom shadow-sm fixed-top bg-white">
        <div class="container d-flex justify-content-between align-items-center">
            <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
                <img src="{{ asset($general_settings['full_logo']) }}" alt="" width="150px" />
            </a>
            <nav>
                <a href="{{ route('public.jobs.index') }}" class="btn btn-outline-secondary me-2">Back to Jobs</a>
                 @auth
                    <a href="{{ url('/home') }}" class="btn btn-outline-primary">Dashboard</a>
                @endauth
            </nav>
        </div>
    </header>

    <div class="container mt-5 pt-5">
        <div class="row pt-4">
            <div class="col-lg-8 mx-auto">
                <div class="mb-4">
                    <span class="badge bg-label-primary mb-2">{{ $job->type }}</span>
                    <span class="badge bg-label-warning mb-2 ms-1">{{ $job->division ? $job->division->title : 'General' }}</span>
                    <h1 class="display-5 fw-bold text-dark">{{ $job->title }}</h1>
                    <div class="text-muted mb-4">
                        <i class="bx bx-map me-1"></i> {{ $job->location ?? 'Remote' }}
                        <span class="mx-2">&bull;</span>
                        <i class="bx bx-time me-1"></i> Posted {{ $job->created_at->diffForHumans() }}
                    </div>
                    
                    @if($job->apply_link)
                        <a href="{{ $job->apply_link }}" target="_blank" class="btn btn-primary btn-lg px-4 gap-3">Apply Now <i class="bx bx-link-external"></i></a>
                    @else
                         <a href="{{ route('public.jobs.apply', $job->slug) }}" class="btn btn-primary btn-lg px-4 gap-3">Apply Now</a>
                    @endif
                </div>

                @if($job->short_description)
                <div class="lead mb-4">
                    {{ $job->short_description }}
                </div>
                @endif
                
                <hr class="my-5">

                <div class="mb-5">
                    <h3 class="fw-bold mb-3">Job Description</h3>
                    <div class="prose">
                        {!! $job->description !!}
                    </div>
                </div>

                @if($job->requirements)
                <div class="mb-5">
                    <h3 class="fw-bold mb-3">Requirements</h3>
                    <div class="prose">
                         {!! $job->requirements !!}
                    </div>
                </div>
                @endif
                
                <div class="card bg-light border-0 mb-5">
                    <div class="card-body text-center py-5">
                        <h3 class="mb-3">Interested in this role?</h3>
                        @if($job->apply_link)
                            <a href="{{ $job->apply_link }}" target="_blank" class="btn btn-primary btn-lg">Apply for this Job</a>
                        @else
                             <a href="{{ route('public.jobs.apply', $job->slug) }}" class="btn btn-primary btn-lg">Apply for this Job</a>
                        @endif
                    </div>
                </div>

            </div>
        </div>
    </div>
    
     <!-- Footer -->
    <footer class="text-muted py-5 border-top bg-light">
        <div class="container">
            <p class="mb-1">&copy; {{ date('Y') }} {{ $general_settings['company_title'] ?? 'Taskify' }}. All rights reserved.</p>
        </div>
    </footer>
</div>
@endsection
