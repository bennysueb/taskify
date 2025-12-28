<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class JobApplicationTemplateSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        \Illuminate\Support\Facades\DB::table('templates')->insertOrIgnore([
            [
                'type' => 'email',
                'name' => 'job_application_received',
                'subject' => 'Application Received: {JOB_TITLE} - {CANDIDATE_NAME}',
                'content' => '<p>Dear {CANDIDATE_NAME},</p>
<p>Thank you for applying for the position of <strong>{JOB_TITLE}</strong> at {COMPANY_TITLE}.</p>
<p>We have received your application and will review it shortly. If your qualifications match our requirements, we will contact you to discuss the next steps.</p>
<p>Best regards,<br>{COMPANY_TITLE} Team</p>
<p><small>Visit us at: {SITE_URL}</small></p>',
                'status' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ]
        ]);
    }
}
