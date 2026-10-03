package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ne, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0849Ne {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f14920a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14921b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f14922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f14923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14924e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f14925f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f14926g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f14927h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f14928i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f14929j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f14930k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final boolean f14931l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f14932m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final long f14933n;

    public C0849Ne(String str) {
        long jLongValue;
        long jLongValue2;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.f14920a = a(jSONObject, "aggressive_media_codec_release", Q7.f15621G);
        this.f14921b = b(jSONObject, "byte_buffer_precache_limit", Q7.f15848i);
        this.f14922c = b(jSONObject, "exo_cache_buffer_size", Q7.f15914q);
        this.f14923d = b(jSONObject, "exo_connect_timeout_millis", Q7.f15812e);
        J7 j8 = Q7.f15804d;
        if (jSONObject != null) {
            try {
                jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
            }
        }
        this.f14924e = b(jSONObject, "exo_read_timeout_millis", Q7.f15821f);
        this.f14925f = b(jSONObject, "load_check_interval_bytes", Q7.f15830g);
        this.f14926g = b(jSONObject, "player_precache_limit", Q7.f15839h);
        this.f14927h = b(jSONObject, "socket_receive_buffer_size", Q7.f15857j);
        this.f14928i = a(jSONObject, "use_cache_data_source", Q7.f15751W3);
        b(jSONObject, "min_retry_count", Q7.f15866k);
        this.f14929j = a(jSONObject, "treat_load_exception_as_non_fatal", Q7.f15883m);
        this.f14930k = a(jSONObject, "enable_multiple_video_playback", Q7.f15647J1);
        this.f14931l = a(jSONObject, "use_range_http_data_source", Q7.f15662L1);
        J7 j9 = Q7.f15670M1;
        if (jSONObject != null) {
            try {
                jLongValue = jSONObject.getLong("range_http_data_source_high_water_mark");
            } catch (JSONException unused3) {
                jLongValue = ((Long) C3099q.f26624d.f26627c.a(j9)).longValue();
            }
        } else {
            jLongValue = ((Long) C3099q.f26624d.f26627c.a(j9)).longValue();
        }
        this.f14932m = jLongValue;
        J7 j10 = Q7.f15678N1;
        if (jSONObject != null) {
            try {
                jLongValue2 = jSONObject.getLong("range_http_data_source_low_water_mark");
            } catch (JSONException unused4) {
                jLongValue2 = ((Long) C3099q.f26624d.f26627c.a(j10)).longValue();
            }
        } else {
            jLongValue2 = ((Long) C3099q.f26624d.f26627c.a(j10)).longValue();
        }
        this.f14933n = jLongValue2;
    }

    public static final boolean a(JSONObject jSONObject, String str, J7 j8) {
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(j8)).booleanValue();
        if (jSONObject == null) {
            return zBooleanValue;
        }
        try {
            return jSONObject.getBoolean(str);
        } catch (JSONException unused) {
            return zBooleanValue;
        }
    }

    public static final int b(JSONObject jSONObject, String str, J7 j8) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) C3099q.f26624d.f26627c.a(j8)).intValue();
    }
}
