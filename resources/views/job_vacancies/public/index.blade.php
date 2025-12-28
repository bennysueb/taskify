@extends('layout')

@section('title')
    Careers
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
                @auth
                    <a href="{{ url('/home') }}" class="btn btn-outline-primary me-2">Dashboard</a>
                @else
                    <a href="{{ url('/login') }}" class="btn btn-outline-primary me-2">Login</a>
                @endauth
            </nav>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="py-5 text-center container mt-5">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Join Our Team</h1>
                <p class="lead text-muted">We are looking for talented people to join us and help build the future.</p>
            </div>
        </div>
    </section>

    <!-- Job List -->
    <div class="container pb-5">
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
            @forelse($jobs as $job)
            <div class="col">
                <div class="card h-100 shadow-sm border-0 job-card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center mb-2">
                             <span class="badge bg-label-primary">{{ $job->type }}</span>
                             <span class="text-muted small"><i class="bx bx-map"></i> {{ $job->location ?? 'Remote' }}</span>
                        </div>
                        <h4 class="card-title text-dark">{{ $job->title }}</h4>
                        <h6 class="card-subtitle mb-2 text-muted">{{ $job->division ? $job->division->title : '' }}</h6>
                        <p class="card-text text-secondary">
                            {{ Str::limit($job->short_description ?? strip_tags($job->description), 100) }}
                        </p>
                    </div>
                    <div class="card-footer bg-transparent border-0 pb-3">
                        <a href="{{ route('public.jobs.show', $job->slug) }}" class="btn btn-primary w-100">View Details</a>
                    </div>
                </div>
            </div>
            @empty
            <div class="col-12 text-center py-5">
                <img src="{{ asset('assets/img/illustrations/empty-state.png') }}" alt="No Jobs" style="max-width: 200px; opacity: 0.5;">
                <p class="mt-3 text-muted">No open positions at the moment. Please check back later.</p>
            </div>
            @endforelse
        </div>
    </div>
    
    <!-- Footer -->
    <footer class="text-muted py-5 border-top bg-light">
        <div class="container">
            <p class="float-end mb-1">
                <a href="#">Back to top</a>
            </p>
            <p class="mb-1">&copy; {{ date('Y') }} {{ $general_settings['company_title'] ?? 'Taskify' }}. All rights reserved.</p>
        </div>
    </footer>
</div>
<style>
    .job-card {
        transition: transform 0.2s, box-shadow 0.2s;
    }
    .job-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 .5rem 1rem rgba(0,0,0,.15)!important;
    }
</style>
@endsection
