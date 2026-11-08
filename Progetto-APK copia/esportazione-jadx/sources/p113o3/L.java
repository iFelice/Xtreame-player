package p113o3;

import D4.b;
import K.a;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.AbstractC1552k8;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C1367ge;
import com.google.android.gms.internal.ads.Q5;
import com.google.android.gms.internal.ads.Q7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p000a.f;
import p083k3.l;
import p090l3.C3099q;
import p120p3.h;

/* JADX INFO: loaded from: classes.dex */
public final class L implements K {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f27895b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f27897d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SharedPreferences f27899f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public SharedPreferences.Editor f27900g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public String f27902i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public String f27903j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f27894a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f27896c = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Q5 f27898e = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f27901h = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f27904k = true;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f27905l = "-1";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f27906m = -1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C1367ge f27907n = new C1367ge(0, HttpUrl.FRAGMENT_ENCODE_SET);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f27908o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f27909p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f27910q = -1;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f27911r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Set f27912s = Collections.emptySet();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public JSONObject f27913t = new JSONObject();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f27914u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public boolean f27915v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public String f27916w = null;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f27917x = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public boolean f27918y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f27919z = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public String f27890A = "{}";

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public int f27891B = -1;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public int f27892C = -1;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public long f27893D = 0;

    public final String A() {
        String str;
        s();
        synchronized (this.f27894a) {
            str = this.f27903j;
        }
        return str;
    }

    public final String B() {
        String str;
        s();
        synchronized (this.f27894a) {
            str = this.f27916w;
        }
        return str;
    }

    public final String C() {
        String str;
        s();
        synchronized (this.f27894a) {
            str = this.f27917x;
        }
        return str;
    }

    public final String D() {
        String str;
        s();
        synchronized (this.f27894a) {
            str = this.f27890A;
        }
        return str;
    }

    public final JSONObject E() {
        JSONObject jSONObject;
        s();
        synchronized (this.f27894a) {
            jSONObject = this.f27913t;
        }
        return jSONObject;
    }

    public final void F(Context context) {
        synchronized (this.f27894a) {
            try {
                if (this.f27899f != null) {
                    return;
                }
                this.f27897d = AbstractC1988se.f20906a.a(new a(this, context));
                this.f27895b = true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void G() {
        s();
        synchronized (this.f27894a) {
            try {
                this.f27913t = new JSONObject();
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.remove("native_advanced_settings");
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void H(int i8) {
        s();
        synchronized (this.f27894a) {
            try {
                if (this.f27911r == i8) {
                    return;
                }
                this.f27911r = i8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putInt("version_code", i8);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void I(String str) {
        s();
        synchronized (this.f27894a) {
            try {
                if (str.equals(this.f27902i)) {
                    return;
                }
                this.f27902i = str;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putString("content_url_hashes", str);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void J(String str) {
        s();
        synchronized (this.f27894a) {
            try {
                if (str.equals(this.f27903j)) {
                    return;
                }
                this.f27903j = str;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putString("content_vertical_hashes", str);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void a(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue()) {
            s();
            synchronized (this.f27894a) {
                try {
                    if (this.f27919z.equals(str)) {
                        return;
                    }
                    this.f27919z = str;
                    SharedPreferences.Editor editor = this.f27900g;
                    if (editor != null) {
                        editor.putString("linked_ad_unit", str);
                        this.f27900g.apply();
                    }
                    t();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void b(boolean z7) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue()) {
            s();
            synchronized (this.f27894a) {
                try {
                    if (this.f27918y == z7) {
                        return;
                    }
                    this.f27918y = z7;
                    SharedPreferences.Editor editor = this.f27900g;
                    if (editor != null) {
                        editor.putBoolean("linked_device", z7);
                        this.f27900g.apply();
                    }
                    t();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void c(String str) {
        s();
        synchronized (this.f27894a) {
            try {
                if (TextUtils.equals(this.f27916w, str)) {
                    return;
                }
                this.f27916w = str;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putString("display_cutout", str);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d(long j8) {
        s();
        synchronized (this.f27894a) {
            try {
                if (this.f27909p == j8) {
                    return;
                }
                this.f27909p = j8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putLong("first_ad_req_time_ms", j8);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void e(int i8) {
        s();
        synchronized (this.f27894a) {
            try {
                this.f27906m = i8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    if (i8 == -1) {
                        editor.remove("gad_has_consent_for_cookies");
                    } else {
                        editor.putInt("gad_has_consent_for_cookies", i8);
                    }
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue()) {
            s();
            synchronized (this.f27894a) {
                try {
                    if (this.f27917x.equals(str)) {
                        return;
                    }
                    this.f27917x = str;
                    SharedPreferences.Editor editor = this.f27900g;
                    if (editor != null) {
                        editor.putString("inspector_info", str);
                        this.f27900g.apply();
                    }
                    t();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void g(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.J8)).booleanValue()) {
            s();
            synchronized (this.f27894a) {
                try {
                    if (this.f27890A.equals(str)) {
                        return;
                    }
                    this.f27890A = str;
                    SharedPreferences.Editor editor = this.f27900g;
                    if (editor != null) {
                        editor.putString("inspector_ui_storage", str);
                        this.f27900g.apply();
                    }
                    t();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final void h(boolean z7) {
        s();
        synchronized (this.f27894a) {
            try {
                if (z7 == this.f27904k) {
                    return;
                }
                this.f27904k = z7;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putBoolean("gad_idless", z7);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void i(boolean z7) {
        s();
        synchronized (this.f27894a) {
            try {
                long jCurrentTimeMillis = System.currentTimeMillis() + ((Long) C3099q.f26624d.f26627c.a(Q7.L9)).longValue();
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putBoolean("is_topics_ad_personalization_allowed", z7);
                    this.f27900g.putLong("topics_consent_expiry_time_ms", jCurrentTimeMillis);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void j(String str, String str2, boolean z7) {
        s();
        synchronized (this.f27894a) {
            try {
                JSONArray jSONArrayOptJSONArray = this.f27913t.optJSONArray(str);
                if (jSONArrayOptJSONArray == null) {
                    jSONArrayOptJSONArray = new JSONArray();
                }
                int length = jSONArrayOptJSONArray.length();
                for (int i8 = 0; i8 < jSONArrayOptJSONArray.length(); i8++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i8);
                    if (jSONObjectOptJSONObject == null) {
                        return;
                    }
                    if (str2.equals(jSONObjectOptJSONObject.optString("template_id"))) {
                        if (!z7 || !jSONObjectOptJSONObject.optBoolean("uses_media_view", false)) {
                            length = i8;
                            break;
                        }
                        return;
                    }
                }
                try {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("template_id", str2);
                    jSONObject.put("uses_media_view", z7);
                    l.f25980A.f25990j.getClass();
                    jSONObject.put("timestamp_ms", System.currentTimeMillis());
                    jSONArrayOptJSONArray.put(length, jSONObject);
                    this.f27913t.put(str, jSONArrayOptJSONArray);
                } catch (JSONException e8) {
                    h.h("Could not update native advanced settings", e8);
                }
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putString("native_advanced_settings", this.f27913t.toString());
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void k(int i8) {
        s();
        synchronized (this.f27894a) {
            try {
                if (this.f27910q == i8) {
                    return;
                }
                this.f27910q = i8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putInt("request_in_session_count", i8);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void l(int i8) {
        s();
        synchronized (this.f27894a) {
            try {
                if (this.f27892C == i8) {
                    return;
                }
                this.f27892C = i8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putInt("sd_app_measure_npa", i8);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void m(long j8) {
        s();
        synchronized (this.f27894a) {
            try {
                if (this.f27893D == j8) {
                    return;
                }
                this.f27893D = j8;
                SharedPreferences.Editor editor = this.f27900g;
                if (editor != null) {
                    editor.putLong("sd_app_measure_npa_ts", j8);
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void n(String str) {
        s();
        synchronized (this.f27894a) {
            try {
                this.f27905l = str;
                if (this.f27900g != null) {
                    if (str.equals("-1")) {
                        this.f27900g.remove("IABTCF_TCString");
                    } else {
                        this.f27900g.putString("IABTCF_TCString", str);
                    }
                    this.f27900g.apply();
                }
                t();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean o() {
        boolean z7;
        s();
        synchronized (this.f27894a) {
            z7 = this.f27914u;
        }
        return z7;
    }

    public final boolean p() {
        boolean z7;
        s();
        synchronized (this.f27894a) {
            z7 = this.f27915v;
        }
        return z7;
    }

    public final boolean q() {
        boolean z7;
        s();
        synchronized (this.f27894a) {
            z7 = this.f27918y;
        }
        return z7;
    }

    public final boolean r() {
        boolean z7;
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15915q0)).booleanValue()) {
            return false;
        }
        s();
        synchronized (this.f27894a) {
            z7 = this.f27904k;
        }
        return z7;
    }

    public final void s() {
        b bVar = this.f27897d;
        if (bVar == null || bVar.isDone()) {
            return;
        }
        try {
            this.f27897d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e8) {
            Thread.currentThread().interrupt();
            h.h("Interrupted while waiting for preferences loaded.", e8);
        } catch (CancellationException e9) {
            e = e9;
            h.e("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e10) {
            e = e10;
            h.e("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e11) {
            e = e11;
            h.e("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    public final void t() {
        AbstractC1988se.f20906a.execute(new f(this, 25));
    }

    public final int u() {
        int i8;
        s();
        synchronized (this.f27894a) {
            i8 = this.f27910q;
        }
        return i8;
    }

    public final long v() {
        long j8;
        s();
        synchronized (this.f27894a) {
            j8 = this.f27908o;
        }
        return j8;
    }

    public final long w() {
        long j8;
        s();
        synchronized (this.f27894a) {
            j8 = this.f27909p;
        }
        return j8;
    }

    public final Q5 x() {
        if (!this.f27895b) {
            return null;
        }
        if ((o() && p()) || !((Boolean) AbstractC1552k8.f19587b.l()).booleanValue()) {
            return null;
        }
        synchronized (this.f27894a) {
            try {
                if (Looper.getMainLooper() == null) {
                    return null;
                }
                if (this.f27898e == null) {
                    this.f27898e = new Q5();
                }
                this.f27898e.c();
                h.f("start fetching content...");
                return this.f27898e;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final C1367ge y() {
        C1367ge c1367ge;
        s();
        synchronized (this.f27894a) {
            try {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ya)).booleanValue() && this.f27907n.a()) {
                    Iterator it = this.f27896c.iterator();
                    while (it.hasNext()) {
                        ((Runnable) it.next()).run();
                    }
                }
                c1367ge = this.f27907n;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1367ge;
    }

    public final String z() {
        String str;
        s();
        synchronized (this.f27894a) {
            str = this.f27902i;
        }
        return str;
    }
}
