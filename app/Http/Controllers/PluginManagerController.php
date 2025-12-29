<?php

namespace App\Http\Controllers;

use Exception;
use Illuminate\Http\Request;
use App\Helpers\PluginHelper;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Artisan;

class PluginManagerController extends Controller
{
    public function index()
    {
        return view('plugins.index', [
            'plugins' => PluginHelper::all(),
        ]);
    }

    public function enable($slug)
    {
        try {
            $plugin = PluginHelper::get($slug);
            if (!$plugin) {
                throw new Exception("Plugin not found: {$slug}");
            }

            // Update status
            PluginHelper::updateStatus($slug, true);

            // Optionally re-publish plugin assets if publish_tag exists
            // Optionally re-publish plugin assets if publish_tag exists
            if (!empty($plugin['publish_tag'])) {
                Artisan::call('vendor:publish', [
                    '--tag' => $plugin['publish_tag'],
                    '--force' => true,
                ]);
                // Log::info("✅ Published assets for plugin: {$slug}");
            }

            // Log::info("✅ Plugin enabled: {$slug}");

            return formatApiResponse(false, "Plugin enabled successfully: {$slug}", ['slug' => $slug]);
        } catch (Exception $e) {
            Log::error("❌ Error enabling plugin {$slug}: " . $e->getMessage());
            return formatApiResponse(true, "Error enabling plugin {$slug}: " . $e->getMessage(), [
                'error' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);
        }
    }

    public function disable($slug)
    {
        try {
            $plugin = PluginHelper::get($slug);
            if (!$plugin) {
                throw new Exception("Plugin not found: {$slug}");
            }

            PluginHelper::updateStatus($slug, false);

            // Log::info("🔌 Plugin disabled: {$slug}");

            return formatApiResponse(false, "Plugin disabled successfully: {$slug}", ['slug' => $slug]);
        } catch (Exception $e) {
            Log::error("❌ Error disabling plugin {$slug}: " . $e->getMessage());
            return formatApiResponse(true, "Error disabling plugin {$slug}: " . $e->getMessage(), [
                'error' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);
        }
    }


    public function uninstall($slug)
    {
        try {
            $plugin = PluginHelper::get($slug);
            if (!$plugin) {
                throw new Exception("Plugin not found: {$slug}");
            }

            PluginHelper::delete($slug);

            Log::info("🗑️ Plugin uninstalled: {$slug}");

            return formatApiResponse(false, "Plugin uninstalled successfully: {$slug}", ['slug' => $slug]);
        } catch (Exception $e) {
            Log::error("❌ Error uninstalling plugin {$slug}: " . $e->getMessage());
            return formatApiResponse(true, "Error uninstalling plugin {$slug}: " . $e->getMessage(), [
                'error' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine(),
            ]);
        }
    }

    public function download($slug)
    {
        try {
            $plugin = PluginHelper::get($slug);
            if (!$plugin) {
                return redirect()->back()->with('error', "Plugin not found: {$slug}");
            }

            $pluginPath = base_path('plugins');
            $dirs = glob($pluginPath . '/*', GLOB_ONLYDIR);
            $targetDir = null;

            foreach ($dirs as $dir) {
                if (File::exists($dir . '/plugin.json')) {
                    $jsonContent = File::get($dir . '/plugin.json');
                    $json = json_decode($jsonContent, true);
                    $foundSlug = $json['slug'] ?? '';
                    
                    // Relaxed comparison: check if found slug matches requested slug (case-insensitive)
                    // OR if the directory name matches the requested slug (case-insensitive)
                    if (strcasecmp($foundSlug, $slug) === 0 || strcasecmp(basename($dir), $slug) === 0) {
                        $targetDir = $dir;
                        break;
                    }
                }
            }

            if (!$targetDir) {
                return redirect()->back()->with('error', "Plugin directory not found for slug: {$slug}");
            }

            $zipFileName = $slug . '_v' . ($plugin['version'] ?? '1.0.0') . '.zip';
            $zipFilePath = storage_path('app/public/temp/' . $zipFileName);
            
            if (!File::exists(dirname($zipFilePath))) {
                File::makeDirectory(dirname($zipFilePath), 0755, true);
            }

            $zip = new \ZipArchive;
            if ($zip->open($zipFilePath, \ZipArchive::CREATE | \ZipArchive::OVERWRITE) === TRUE) {
                $files = new \RecursiveIteratorIterator(
                    new \RecursiveDirectoryIterator($targetDir),
                    \RecursiveIteratorIterator::LEAVES_ONLY
                );

                foreach ($files as $name => $file) {
                    if (!$file->isDir()) {
                        $filePath = $file->getRealPath();
                        $relativePath = substr($filePath, strlen($targetDir) + 1);
                        $zip->addFile($filePath, $relativePath);
                    }
                }
                $zip->close();
            } else {
                 return redirect()->back()->with('error', "Failed to create zip file");
            }

            return response()->download($zipFilePath)->deleteFileAfterSend(true);

        } catch (Exception $e) {
            Log::error("❌ Error downloading plugin {$slug}: " . $e->getMessage());
            return redirect()->back()->with('error', "Error downloading plugin: " . $e->getMessage());
        }
    }
}
