package com.google.android.gms.internal.cast;

import android.content.SharedPreferences;
import android.os.Looper;
import com.google.api.Service;
import com.google.protobuf.DescriptorProtos$FileOptions;
import com.google.protobuf.DescriptorProtos$MethodOptions;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;

/* JADX INFO: loaded from: classes.dex */
public final class D0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final H3.b f22422i = new H3.b("FeatureUsageAnalytics", null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f22423j = "21.4.0";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static D0 f22424k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f22425a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedPreferences f22426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f22427c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f22432h;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f22430f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final HashSet f22431g = new HashSet();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final X3.d f22429e = new X3.d(Looper.getMainLooper(), 1);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final X f22428d = new X(this, 1);

    public D0(SharedPreferences sharedPreferences, N n7, String str) {
        this.f22426b = sharedPreferences;
        this.f22425a = n7;
        this.f22427c = str;
    }

    public static void a(EnumC2435d0 enumC2435d0) {
        D0 d6;
        if (!N.f22495j || (d6 = f22424k) == null) {
            return;
        }
        String string = Integer.toString(enumC2435d0.f22723G);
        SharedPreferences sharedPreferences = d6.f22426b;
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        String strC = p148t.a.c("feature_usage_timestamp_reported_feature_", string);
        if (!sharedPreferences.contains(strC)) {
            strC = p148t.a.c("feature_usage_timestamp_detected_feature_", string);
        }
        editorEdit.putLong(strC, System.currentTimeMillis()).apply();
        d6.f22430f.add(enumC2435d0);
        d6.f22429e.post(d6.f22428d);
    }

    public static EnumC2435d0 b(String str) {
        EnumC2435d0 enumC2435d0 = EnumC2435d0.DEVELOPER_FEATURE_FLAG_UNKNOWN;
        try {
            switch (Integer.parseInt(str)) {
                case 0:
                    break;
                case 1:
                    enumC2435d0 = EnumC2435d0.CAF_CAST_BUTTON;
                    break;
                case 2:
                    enumC2435d0 = EnumC2435d0.CAF_EXPANDED_CONTROLLER;
                    break;
                case 3:
                    enumC2435d0 = EnumC2435d0.CAF_MINI_CONTROLLER;
                    break;
                case 4:
                    enumC2435d0 = EnumC2435d0.CAF_CONTAINER_CONTROLLER;
                    break;
                case 5:
                    enumC2435d0 = EnumC2435d0.CAST_CONTEXT;
                    break;
                case 6:
                    enumC2435d0 = EnumC2435d0.IMAGE_CACHE;
                    break;
                case 7:
                    enumC2435d0 = EnumC2435d0.IMAGE_PICKER;
                    break;
                case 8:
                    enumC2435d0 = EnumC2435d0.AD_BREAK_PARSER;
                    break;
                case 9:
                    enumC2435d0 = EnumC2435d0.UI_STYLE;
                    break;
                case 10:
                    enumC2435d0 = EnumC2435d0.HARDWARE_VOLUME_BUTTON;
                    break;
                case 11:
                    enumC2435d0 = EnumC2435d0.NON_CAST_DEVICE_PROVIDER;
                    break;
                case 12:
                    enumC2435d0 = EnumC2435d0.PAUSE_CONTROLLER;
                    break;
                case 13:
                    enumC2435d0 = EnumC2435d0.SEEK_CONTROLLER;
                    break;
                case 14:
                    enumC2435d0 = EnumC2435d0.STREAM_VOLUME;
                    break;
                case 15:
                    enumC2435d0 = EnumC2435d0.UI_MEDIA_CONTROLLER;
                    break;
                case 16:
                    enumC2435d0 = EnumC2435d0.PLAYBACK_RATE_CONTROLLER;
                    break;
                case 17:
                    enumC2435d0 = EnumC2435d0.PRECACHE;
                    break;
                case 18:
                    enumC2435d0 = EnumC2435d0.INSTRUCTIONS_VIEW;
                    break;
                case 19:
                    enumC2435d0 = EnumC2435d0.OPTION_SUSPEND_SESSIONS_WHEN_BACKGROUNDED;
                    break;
                case 20:
                    enumC2435d0 = EnumC2435d0.OPTION_STOP_RECEIVER_APPLICATION_WHEN_ENDING_SESSION;
                    break;
                case 21:
                    enumC2435d0 = EnumC2435d0.OPTION_DISABLE_DISCOVERY_AUTOSTART;
                    break;
                case 22:
                    enumC2435d0 = EnumC2435d0.OPTION_DISABLE_ANALYTICS_LOGGING;
                    break;
                case 23:
                    enumC2435d0 = EnumC2435d0.OPTION_PHYSICAL_VOLUME_BUTTONS_WILL_CONTROL_DEVICE_VOLUME;
                    break;
                case 24:
                    enumC2435d0 = EnumC2435d0.CAF_EXPANDED_CONTROLLER_HIDE_STREAM_POSITION_CONTROLS_FOR_LIVE_CONTENT;
                    break;
                case 25:
                    enumC2435d0 = EnumC2435d0.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT;
                    break;
                case Service.BILLING_FIELD_NUMBER /* 26 */:
                    enumC2435d0 = EnumC2435d0.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_OPTIONS;
                    break;
                case 27:
                    enumC2435d0 = EnumC2435d0.REMOTE_MEDIA_CLIENT_QUEUE_LOAD_ITEMS_WITH_OPTIONS;
                    break;
                case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    enumC2435d0 = EnumC2435d0.REMOTE_MEDIA_CLIENT_LOAD_MEDIA_WITH_LOAD_REQUEST_DATA;
                    break;
                case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    enumC2435d0 = EnumC2435d0.LAUNCH_OPTION_ANDROID_RECEIVER_COMPATIBLE;
                    break;
                case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                    enumC2435d0 = EnumC2435d0.CAST_CONTEXT_SET_LAUNCH_CREDENTIALS_DATA;
                    break;
                case DescriptorProtos$FileOptions.CC_ENABLE_ARENAS_FIELD_NUMBER /* 31 */:
                    enumC2435d0 = EnumC2435d0.START_DISCOVERY_AFTER_FIRST_TAP_ON_CAST_BUTTON;
                    break;
                case 32:
                    enumC2435d0 = EnumC2435d0.CAST_UNAVAILABLE_BUTTON_VISIBLE;
                    break;
                case 33:
                    enumC2435d0 = EnumC2435d0.CAST_DEFAULT_MEDIA_ROUTER_DIALOG;
                    break;
                case DescriptorProtos$MethodOptions.IDEMPOTENCY_LEVEL_FIELD_NUMBER /* 34 */:
                    enumC2435d0 = EnumC2435d0.CAST_CUSTOM_MEDIA_ROUTER_DIALOG;
                    break;
                case 35:
                    enumC2435d0 = EnumC2435d0.CAST_OUTPUT_SWITCHER_ENABLED;
                    break;
                case DescriptorProtos$FileOptions.OBJC_CLASS_PREFIX_FIELD_NUMBER /* 36 */:
                    enumC2435d0 = EnumC2435d0.CAST_TRANSFER_TO_LOCAL_ENABLED;
                    break;
                case 37:
                    enumC2435d0 = EnumC2435d0.CAST_BUTTON_IS_TRIGGERED_DEFAULT_CAST_DIALOG_FALSE;
                    break;
                case 38:
                    enumC2435d0 = EnumC2435d0.CAST_BUTTON_DELEGATE;
                    break;
                case DescriptorProtos$FileOptions.SWIFT_PREFIX_FIELD_NUMBER /* 39 */:
                    enumC2435d0 = EnumC2435d0.CAST_BUTTON_DELEGATE_PRESENT_LNA_PERMISSION_CUSTOM_DIALOG;
                    break;
                case DescriptorProtos$FileOptions.PHP_CLASS_PREFIX_FIELD_NUMBER /* 40 */:
                    enumC2435d0 = EnumC2435d0.CAST_BUTTON_DELEGATE_PRESENT_CAST_STATE_CUSTOM_DIALOG;
                    break;
                case DescriptorProtos$FileOptions.PHP_NAMESPACE_FIELD_NUMBER /* 41 */:
                    enumC2435d0 = EnumC2435d0.CAST_TRANSFER_TO_LOCAL_USED;
                    break;
                case DescriptorProtos$FileOptions.PHP_GENERIC_SERVICES_FIELD_NUMBER /* 42 */:
                    enumC2435d0 = EnumC2435d0.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                    break;
                case 43:
                    enumC2435d0 = EnumC2435d0.MEDIA_REQUEST_ITEM_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case DescriptorProtos$FileOptions.PHP_METADATA_NAMESPACE_FIELD_NUMBER /* 44 */:
                    enumC2435d0 = EnumC2435d0.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_TO_STRING;
                    break;
                case DescriptorProtos$FileOptions.RUBY_PACKAGE_FIELD_NUMBER /* 45 */:
                    enumC2435d0 = EnumC2435d0.HLS_SEGMENT_MAP_HLS_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case 46:
                    enumC2435d0 = EnumC2435d0.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_TO_STRING;
                    break;
                case 47:
                    enumC2435d0 = EnumC2435d0.HLS_VIDEO_SEGMENT_MAP_HLS_VIDEO_SEGMENT_FORMAT_STRING_TO_ENUM;
                    break;
                case 48:
                    enumC2435d0 = EnumC2435d0.CAST_SLIDER_SET_AD_BLOCK_POSITIONS;
                    break;
                case 49:
                    enumC2435d0 = EnumC2435d0.CAF_NOTIFICATION_SERVICE;
                    break;
                case 50:
                    enumC2435d0 = EnumC2435d0.HARDWARE_VOLUME_BUTTON_PRESS;
                    break;
                case 51:
                    enumC2435d0 = EnumC2435d0.CAST_SDK_DEFAULT_DEVICE_DIALOG;
                    break;
                case 52:
                    enumC2435d0 = EnumC2435d0.CAST_SDK_CUSTOM_DEVICE_DIALOG;
                    break;
                case 53:
                    enumC2435d0 = EnumC2435d0.PERSISTENT_CAST_BUTTON_DISCOVERY_DISABLED_WITH_CONFLICT_TYPES;
                    break;
                case 54:
                    enumC2435d0 = EnumC2435d0.CAST_DEVICE_DIALOG_FACTORY_INSTANTIATED;
                    break;
                case 55:
                    enumC2435d0 = EnumC2435d0.CAF_MEDIA_NOTIFICATION_PROXY;
                    break;
                default:
                    enumC2435d0 = null;
                    break;
            }
        } catch (NumberFormatException unused) {
        }
        return enumC2435d0;
    }

    public final void c(HashSet hashSet) {
        if (hashSet.isEmpty()) {
            return;
        }
        SharedPreferences.Editor editorEdit = this.f22426b.edit();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            editorEdit.remove((String) it.next());
        }
        editorEdit.apply();
    }
}
