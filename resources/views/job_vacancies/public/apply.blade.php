@extends('layout')

@section('title')
    Apply for {{ $job->title }}
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
                <a href="{{ route('public.jobs.show', $job->slug) }}" class="btn btn-outline-secondary me-2">Back to Job</a>
            </nav>
        </div>
    </header>

    <div class="container mt-5 pt-5 pb-5">
        <div class="row pt-4 justify-content-center">
            <div class="col-lg-8">
                <div class="card shadow-sm border-0">
                    <div class="card-body p-o-4">
                        <h2 class="fw-bold mb-4">Apply for {{ $job->title }}</h2>
                        
                        <form id="application_form" method="POST" action="{{ route('public.jobs.store', $job->slug) }}" enctype="multipart/form-data">
                            @csrf
                            <h5 class="mb-3">Personal Information</h5>
                            <div class="row">
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">First Name <span class="text-danger">*</span></label>
                                    <input type="text" name="first_name" class="form-control" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Last Name <span class="text-danger">*</span></label>
                                    <input type="text" name="last_name" class="form-control" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Email <span class="text-danger">*</span></label>
                                    <input type="email" name="email" class="form-control" required>
                                </div>
                                <div class="col-md-6 mb-3">
                                    <label class="form-label">Phone <span class="text-danger">*</span></label>
                                     <input type="text" class="form-control mobile-number" name="phone" required placeholder="1 702 123 4567">
                                </div>
                                 <div class="col-md-12 mb-3">
                                    <label class="form-label">Resume/CV (PDF, DOC, DOCX) <span class="text-danger">*</span></label>
                                    <input type="file" name="resume" class="form-control" accept=".pdf,.doc,.docx" required>
                                </div>
                            </div>

                            @if($customFields->count() > 0)
                            <hr class="my-4">
                            <h5 class="mb-3">Additional Information</h5>
                            <div class="row">
                                @foreach ($customFields as $field)
                                    <div class="col-md-12 mb-3">
                                        <label class="form-label">
                                            {{ $field->field_label }}
                                            @if($field->required) <span class="text-danger">*</span> @endif
                                        </label>

                                        @if($field->field_type == 'text')
                                            <input type="text" name="custom_field_{{ $field->id }}" class="form-control" {{ $field->required ? 'required' : '' }}>
                                        
                                        @elseif($field->field_type == 'number')
                                            <input type="number" name="custom_field_{{ $field->id }}" class="form-control" {{ $field->required ? 'required' : '' }}>
                                            
                                        @elseif($field->field_type == 'textarea')
                                            <textarea name="custom_field_{{ $field->id }}" class="form-control" rows="3" {{ $field->required ? 'required' : '' }}></textarea>
                                            
                                        @elseif($field->field_type == 'date')
                                            <input type="date" name="custom_field_{{ $field->id }}" class="form-control" {{ $field->required ? 'required' : '' }}>
                                            
                                        @elseif($field->field_type == 'select')
                                            @php $options = json_decode($field->options); @endphp
                                            <select name="custom_field_{{ $field->id }}" class="form-select" {{ $field->required ? 'required' : '' }}>
                                                <option value="">Select {{ $field->field_label }}</option>
                                                @if($options)
                                                @foreach ($options as $option)
                                                    <option value="{{ $option }}">{{ $option }}</option>
                                                @endforeach
                                                @endif
                                            </select>
                                        
                                        @elseif($field->field_type == 'radio')
                                            @php $options = json_decode($field->options); @endphp
                                             @if($options)
                                             <div>
                                                @foreach ($options as $option)
                                                <div class="form-check form-check-inline">
                                                    <input class="form-check-input" type="radio" name="custom_field_{{ $field->id }}" value="{{ $option }}" {{ $field->required ? 'required' : '' }}>
                                                    <label class="form-check-label">{{ $option }}</label>
                                                </div>
                                                @endforeach
                                             </div>
                                             @endif

                                        @elseif($field->field_type == 'checkbox')
                                             @php $options = json_decode($field->options); @endphp
                                              @if($options)
                                             <div>
                                                @foreach ($options as $option)
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" name="custom_field_{{ $field->id }}[]" value="{{ $option }}">
                                                    <label class="form-check-label">{{ $option }}</label>
                                                </div>
                                                @endforeach
                                             </div>
                                             @endif
                                        @endif
                                    </div>
                                @endforeach
                            </div>
                            @endif

                            <div class="mt-4">
                                <button type="submit" class="btn btn-primary btn-lg" id="submit_btn">Submit Application</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $('#application_form').submit(function(e) {
        e.preventDefault();
        
        var formData = new FormData(this);
        var btn = $('#submit_btn');
        btn.prop('disabled', true).text('Submitting...');
        
        $.ajax({
            url: $(this).attr('action'),
            type: 'POST',
            data: formData,
            contentType: false,
            processData: false,
            success: function(response) {
                if(response.error == false) {
                    toastr.success(response.message);
                    $('#application_form')[0].reset();
                    setTimeout(function(){
                         window.location.href = "{{ route('public.jobs.index') }}";
                    }, 2000);
                } else {
                    toastr.error(response.message);
                    btn.prop('disabled', false).text('Submit Application');
                }
            },
            error: function(xhr) {
                 toastr.error('An error occurred. Please try again.');
                 btn.prop('disabled', false).text('Submit Application');
            }
        });
    });
    
    // Mobile Number Input Initialization (similar to layout)
    var input = document.querySelector(".mobile-number");
    if(input) {
        const iti = window.intlTelInput(input, {
          initialCountry: "auto",
           geoIpLookup: callback => {
            fetch("https://ipapi.co/json")
              .then(res => res.json())
              .then(data => callback(data.country_code))
              .catch(() => callback("us"));
          },
          utilsScript: "https://cdn.jsdelivr.net/npm/intl-tel-input@24.3.4/build/js/utils.js",
        });
    }
</script>
@endsection
