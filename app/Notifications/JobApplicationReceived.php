<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class JobApplicationReceived extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     */
    protected $job, $candidate;

    public function __construct($job, $candidate)
    {
        $this->job = $job;
        $this->candidate = $candidate;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @return array<int, string>
     */
    public function via(object $notifiable): array
    {
        return ['mail'];
    }

    /**
     * Get the mail representation of the notification.
     */
    public function toMail(object $notifiable): MailMessage
    {
        $general_settings = get_settings('general_settings');
        $full_logo = !isset($general_settings['full_logo']) || empty($general_settings['full_logo']) ? 'storage/logos/default_full_logo.png' : 'storage/' . $general_settings['full_logo'];
        $company_title = $general_settings['company_title'] ?? 'Taskify';
        $siteUrl = request()->getSchemeAndHttpHost();
        
        $fetched_data = \App\Models\Template::where('type', 'email')
            ->where('name', 'job_application_received')
            ->first();

        // Define the placeholders and their corresponding values
        $subjectPlaceholders = [
            '{CANDIDATE_NAME}' => $this->candidate->name,
            '{JOB_TITLE}' => $this->job->title,
            '{COMPANY_TITLE}' => $company_title
        ];

        $subject = filled( \Illuminate\Support\Arr::get($fetched_data, 'subject')) ? $fetched_data->subject : 'Application Received: {JOB_TITLE} - {CANDIDATE_NAME}';

        $subject = str_replace(array_keys($subjectPlaceholders), array_values($subjectPlaceholders), $subject);

        $messagePlaceholders = [
            '{CANDIDATE_NAME}' => $this->candidate->name,
            '{JOB_TITLE}' => $this->job->title,
            '{COMPANY_TITLE}' => $company_title,
            '{SITE_URL}' => $siteUrl,
            '{CURRENT_YEAR}' => date('Y')
        ];

        if (filled(\Illuminate\Support\Arr::get($fetched_data, 'content'))) {
            $emailTemplate = $fetched_data->content;
        } else {
            // Fallback content if no template exists or file missing
            $emailTemplate = "<p>Dear {CANDIDATE_NAME},</p>
            <p>Thank you for applying for the position of <strong>{JOB_TITLE}</strong> at {COMPANY_TITLE}.</p>
            <p>We have received your application and will review it shortly. If your qualifications match our requirements, we will contact you to discuss the next steps.</p>
            <p>Best regards,<br>{COMPANY_TITLE} Team</p>";
        }

        // Replace placeholders with actual values
        $emailTemplate = str_replace(array_keys($messagePlaceholders), array_values($messagePlaceholders), $emailTemplate);

        return (new MailMessage)
            ->view('mail.html', ['content' => $emailTemplate, 'logo_url' => asset($full_logo)])
            ->subject($subject);
    }

    /**
     * Get the array representation of the notification.
     *
     * @return array<string, mixed>
     */
    public function toArray(object $notifiable): array
    {
        return [
            //
        ];
    }
}
