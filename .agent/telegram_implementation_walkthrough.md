
# Telegram Notifications Implementation Walkthrough

This document details the implementation of Telegram notifications in the Taskify application.

## 1. Database Schema
A new column `telegram_chat_id` was added to both `users` and `clients` tables via migration `2025_12_23_092639_add_telegram_chat_id_to_users_and_clients_table.php`.

## 2. Configuration UI
The **SMS Gateway Settings** page (`resources/views/settings/sms_gateway_settings.blade.php`) now includes a "Telegram" tab.
- Admins can input their **Telegram Bot Token**.
- A "Important settings" alert provides instructions on how to create a bot and get the token.
- A "See user instruction" modal provides steps for users to interact with the bot.

## 3. Backend Logic

### Settings Controller
- **File**: `App\Http\Controllers\SettingsController.php`
- **Method**: `store_telegram_settings` handles saving the bot token.
- **Default Templates**: The switch case for default templates now treats `telegram` same as `sms` and `whatsapp` to reuse existing templates.

### Helpers (`app/app_helpers.php`)
- **`sendTelegramNotification`**: A new helper function that uses Guzzle to send HTTP POST requests to the Telegram Bot API (`sendMessage` endpoint). It constructs the message using the same templating system as WhatsApp.
- **`processNotifications`**: Updated to check for Telegram preferences and trigger `sendTelegramNotification` if enabled.
- **`get_message`**: Updated to treat `telegram` type similar to `whatsapp` for retrieving template content from the database.

### Notification Service (`App\Services\NotificationService.php`)
- Minimal integration was added to `sendBirthdayWishes` and `sendAnniversaryWishes` to trigger Telegram notifications if the recipient has a `telegram_chat_id`.
- **Note**: The existing `NotificationService` relies on notification classes (`WhatsappNotification`, `SmsNotification`) that are missing from the codebase. The implementation for Telegram uses the direct helper function `sendTelegramNotification` to avoid this dependency issue and ensure functionality.

## 4. User Preferences
- **File**: `resources/views/settings/preferences.blade.php`
- Users can now see "Telegram" as a column in their **Notification Preferences** settings.
- They can enable/disable Telegram notifications for various events (e.g., Task Assignment, Project Update).

## How it Works
1.  **Admin** configures the Bot Token in Settings.
2.  **User** starts a chat with the bot and saves their `Chat ID` in their profile (Profile implementation for inputting Chat ID is part of User/Client definition, column exists in DB).
3.  **System** triggers an event (e.g., Task Assigned).
4.  `processNotifications` helper checks if the user has enabled Telegram notifications for that event type.
5.  If enabled, `sendTelegramNotification` is called.
6.  The function determines the template, replaces placeholders, and calls the Telegram API.

## Pending/Future Work
- **User Profile UI**: Ensure there is a field in the User/Client Profile edit form to input the `Telegram Chat ID`. Currently, the database column exists, but the UI for users to input it might need verification (not covered in this task scope).
- **Notification Classes**: The missing implementations for `WhatsappNotification` etc. in `NotificationService` suggest a need for a broader cleanup of the notification system in the future.
