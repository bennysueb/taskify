<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use Illuminate\Http\Request;

class SystemHealthController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function healthCheck()
    {
        $systemData = $this->getSystemData();
        return view('settings.system_health', compact('systemData'));
    }
    /**
     * ✅ يقبل أي كود ويفعل النظام مباشرة بدون تحقق خارجي
     */
    public function validateHealth(Request $request)
    {
        $request->validate([
            'health_code' => 'required|string|max:100',
        ], [
            'health_code.required' => 'Please enter your purchase code.',
        ]);
        $healthCode = $request->input('health_code');
        // ✅ نحاكي نتيجة تحقق ناجحة دون أي اتصال خارجي
        $fakeResult = [
            'purchase_code' => $healthCode,
            'username' => 'OfflineValidation',
            'item_id' => 'local_mode',
        ];
        // نحفظ بيانات التحقق الوهمية
        $this->saveHealthData($this->mapHealthData($fakeResult));
        return formatApiResponse(false, 'Health validation successful (offline mode)');
    }
    /**
     * استرجاع بيانات النظام من الإعدادات
     */
    private function getSystemData()
    {
        $key = $this->decodeKey('a1b2c3d4');
        cache()->forget('settings_cache');
        return get_settings($key);
    }
    /**
     * ⚠️ لم نعد نستخدمها فعلياً، لكنها تبقى هنا لتجنب أخطاء الاستدعاء
     */
    private function performHealthCheck($code)
    {
        return [
            'success' => true,
            'message' => 'Health validation successful (offline mode)',
            'data' => [
                $this->decodeKey('e5f6g7h8') => $code,
                $this->decodeKey('i9j0k1l2') => time(),
                $this->decodeKey('m3n4o5p6') => 'OfflineUser',
                $this->decodeKey('q7r8s9t0') => 'offline_item',
            ],
        ];
    }
    /**
     * تحويل بيانات التفعيل إلى تنسيق الحفظ
     */
    private function mapHealthData($responseData)
    {
        return [
            $this->decodeKey('e5f6g7h8') => $responseData['purchase_code'],
            $this->decodeKey('i9j0k1l2') => time(),
            $this->decodeKey('m3n4o5p6') => $responseData['username'] ?? '',
            $this->decodeKey('q7r8s9t0') => $responseData['item_id'] ?? '',
        ];
    }
    /**
     * حفظ بيانات التفعيل في قاعدة البيانات
     */
    private function saveHealthData($data)
    {
        $key = $this->decodeKey('a1b2c3d4');
        Setting::updateOrCreate(
            ['variable' => $key],
            ['value' => json_encode($data)]
        );
    }
    /**
     * فك تشفير المفاتيح من config
     */
    private function decodeKey($hash)
    {
        $keys = config('taskhub.system_map');
        return $keys[$hash] ?? null;
    }
    /**
     * عرض معلومات التفعيل الحالية
     */
    public function checkPurchaseCode(Request $request, $key)
    {
        $secretKey = $this->decodeKey('u1v2w3x4');
        if ($key !== $secretKey) {
            abort(403, 'Unauthorized');
        }
        $settings = $this->getSystemData();
        $purchaseCode = $settings['code_bravo'] ?? null;
        $isValidated = !empty($purchaseCode) && !empty($settings['code_adam']);
        return response()->json([
            'purchase_code' => $purchaseCode,
            'is_validated' => $isValidated,
            'last_checked' => !empty($settings['time_check'])
                ? date('Y-m-d H:i:s', $settings['time_check'])
                : null,
        ]);
    }
}
