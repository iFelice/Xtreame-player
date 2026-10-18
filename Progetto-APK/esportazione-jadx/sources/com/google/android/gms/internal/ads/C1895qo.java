package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.RemoteException;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p090l3.InterfaceC3092m0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qo, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1895qo implements InterfaceC2362zo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1998so f20617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0664Ao f20618b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1377go f20619c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1635lo f20620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Z2 f20621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BinderC2258xo f20622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final SharedPreferencesOnSharedPreferenceChangeListenerC1946ro f20623g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SharedPreferencesOnSharedPreferenceChangeListenerC1946ro f20624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f20625i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f20626j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f20627k;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public JSONObject f20632p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f20635s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f20636t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f20637u;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final HashMap f20628l = new HashMap();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final HashMap f20629m = new HashMap();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final HashMap f20630n = new HashMap();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public String f20631o = "{}";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public long f20633q = Long.MAX_VALUE;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public EnumC1687mo f20634r = EnumC1687mo.f19996G;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public EnumC1843po f20638v = EnumC1843po.f20486G;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public long f20639w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public String f20640x = HttpUrl.FRAGMENT_ENCODE_SET;

    public C1895qo(C1998so c1998so, C0664Ao c0664Ao, C1377go c1377go, Context context, p120p3.a aVar, C1635lo c1635lo, BinderC2258xo binderC2258xo, SharedPreferencesOnSharedPreferenceChangeListenerC1946ro sharedPreferencesOnSharedPreferenceChangeListenerC1946ro, SharedPreferencesOnSharedPreferenceChangeListenerC1946ro sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2, String str) {
        this.f20617a = c1998so;
        this.f20618b = c0664Ao;
        this.f20619c = c1377go;
        this.f20621e = new Z2(context);
        this.f20625i = aVar.f28196G;
        this.f20627k = str;
        this.f20620d = c1635lo;
        this.f20622f = binderC2258xo;
        this.f20623g = sharedPreferencesOnSharedPreferenceChangeListenerC1946ro;
        this.f20624h = sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2;
        this.f20626j = context;
        p083k3.l.f25980A.f25993m.f27983g = this;
    }

    public final synchronized C2040te a(String str) {
        C2040te c2040te;
        try {
            c2040te = new C2040te();
            if (this.f20629m.containsKey(str)) {
                c2040te.b((C1480io) this.f20629m.get(str));
            } else {
                if (!this.f20630n.containsKey(str)) {
                    this.f20630n.put(str, new ArrayList());
                }
                ((List) this.f20630n.get(str)).add(c2040te);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c2040te;
    }

    public final synchronized void b(String str, C1480io c1480io) {
        J7 j8 = Q7.h8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && f()) {
            if (this.f20636t >= ((Integer) c3099q.f26627c.a(Q7.j8)).intValue()) {
                p120p3.h.g("Maximum number of ad requests stored reached. Dropping the current request.");
                return;
            }
            if (!this.f20628l.containsKey(str)) {
                this.f20628l.put(str, new ArrayList());
            }
            this.f20636t++;
            ((List) this.f20628l.get(str)).add(c1480io);
            if (((Boolean) c3099q.f26627c.a(Q7.F8)).booleanValue()) {
                String str2 = c1480io.f19338I;
                this.f20629m.put(str2, c1480io);
                if (this.f20630n.containsKey(str2)) {
                    List list = (List) this.f20630n.get(str2);
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((C2040te) it.next()).b(c1480io);
                    }
                    list.clear();
                }
            }
        }
    }

    public final void c() {
        J7 j8 = Q7.h8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            if (((Boolean) c3099q.f26627c.a(Q7.w8)).booleanValue() && p083k3.l.f25980A.f25987g.d().q()) {
                i();
                return;
            }
            String strC = p083k3.l.f25980A.f25987g.d().C();
            if (TextUtils.isEmpty(strC)) {
                return;
            }
            try {
                if (new JSONObject(strC).optBoolean("isTestMode", false)) {
                    i();
                }
            } catch (JSONException unused) {
            }
        }
    }

    public final synchronized void d(InterfaceC3092m0 interfaceC3092m0, EnumC1843po enumC1843po) {
        if (!f()) {
            try {
                interfaceC3092m0.s0(p113o3.r.H(18, null, null));
                return;
            } catch (RemoteException unused) {
                p120p3.h.g("Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information.");
                return;
            }
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue()) {
            this.f20638v = enumC1843po;
            this.f20617a.a(interfaceC3092m0, new O9(this, 1), new E9(this.f20622f, 3), new O9(this, 0));
            return;
        } else {
            try {
                interfaceC3092m0.s0(p113o3.r.H(1, null, null));
                return;
            } catch (RemoteException unused2) {
                p120p3.h.g("Ad inspector had an internal error.");
                return;
            }
        }
        throw th;
    }

    public final void e(boolean z7) {
        if (!this.f20637u && z7) {
            i();
        }
        l(z7, true);
    }

    public final synchronized boolean f() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue()) {
            return this.f20635s || p083k3.l.f25980A.f25993m.h();
        }
        return this.f20635s;
    }

    public final synchronized boolean g() {
        return this.f20635s;
    }

    public final synchronized JSONObject h() {
        JSONObject jSONObject;
        try {
            jSONObject = new JSONObject();
            for (Map.Entry entry : this.f20628l.entrySet()) {
                JSONArray jSONArray = new JSONArray();
                for (C1480io c1480io : (List) entry.getValue()) {
                    if (c1480io.f19340K != EnumC1429ho.f19142G) {
                        jSONArray.put(c1480io.a());
                    }
                }
                if (jSONArray.length() > 0) {
                    jSONObject.put((String) entry.getKey(), jSONArray);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return jSONObject;
    }

    public final void i() {
        this.f20637u = true;
        C1635lo c1635lo = this.f20620d;
        c1635lo.getClass();
        BinderC1531jo binderC1531jo = new BinderC1531jo(c1635lo);
        C1273eo c1273eo = c1635lo.f19844a;
        c1273eo.getClass();
        c1273eo.f18591e.a(new RunnableC0755Ha(29, c1273eo, binderC1531jo), c1273eo.f18596j);
        this.f20617a.f20977I = this;
        this.f20618b.f12039f = this;
        this.f20619c.f19003i = this;
        this.f20622f.f21932L = this;
        J7 j8 = Q7.K8;
        C3099q c3099q = C3099q.f26624d;
        if (!TextUtils.isEmpty((CharSequence) c3099q.f26627c.a(j8))) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.f20626j);
            List listAsList = Arrays.asList(((String) c3099q.f26627c.a(j8)).split(","));
            SharedPreferencesOnSharedPreferenceChangeListenerC1946ro sharedPreferencesOnSharedPreferenceChangeListenerC1946ro = this.f20623g;
            sharedPreferencesOnSharedPreferenceChangeListenerC1946ro.f20779b = listAsList;
            defaultSharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC1946ro);
            Iterator it = listAsList.iterator();
            while (it.hasNext()) {
                sharedPreferencesOnSharedPreferenceChangeListenerC1946ro.onSharedPreferenceChanged(defaultSharedPreferences, (String) it.next());
            }
        }
        J7 j9 = Q7.L8;
        if (!TextUtils.isEmpty((CharSequence) c3099q.f26627c.a(j9))) {
            SharedPreferences sharedPreferences = this.f20626j.getSharedPreferences("admob", 0);
            List listAsList2 = Arrays.asList(((String) c3099q.f26627c.a(j9)).split(","));
            SharedPreferencesOnSharedPreferenceChangeListenerC1946ro sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2 = this.f20624h;
            sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2.f20779b = listAsList2;
            sharedPreferences.registerOnSharedPreferenceChangeListener(sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2);
            Iterator it2 = listAsList2.iterator();
            while (it2.hasNext()) {
                sharedPreferencesOnSharedPreferenceChangeListenerC1946ro2.onSharedPreferenceChanged(sharedPreferences, (String) it2.next());
            }
        }
        String strC = p083k3.l.f25980A.f25987g.d().C();
        synchronized (this) {
            if (!TextUtils.isEmpty(strC)) {
                try {
                    JSONObject jSONObject = new JSONObject(strC);
                    l(jSONObject.optBoolean("isTestMode", false), false);
                    k((EnumC1687mo) Enum.valueOf(EnumC1687mo.class, jSONObject.optString("gesture", "NONE")), false);
                    this.f20631o = jSONObject.optString("networkExtras", "{}");
                    this.f20633q = jSONObject.optLong("networkExtrasExpirationSecs", Long.MAX_VALUE);
                } catch (JSONException unused) {
                }
            }
        }
        this.f20640x = p083k3.l.f25980A.f25987g.d().D();
    }

    public final void j() {
        String string;
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.L lD = lVar.f25987g.d();
        synchronized (this) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("isTestMode", this.f20635s);
                jSONObject.put("gesture", this.f20634r);
                long j8 = this.f20633q;
                lVar.f25990j.getClass();
                if (j8 > System.currentTimeMillis() / 1000) {
                    jSONObject.put("networkExtras", this.f20631o);
                    jSONObject.put("networkExtrasExpirationSecs", this.f20633q);
                }
            } catch (JSONException unused) {
            }
            string = jSONObject.toString();
        }
        lD.f(string);
    }

    public final synchronized void k(EnumC1687mo enumC1687mo, boolean z7) {
        try {
            if (this.f20634r != enumC1687mo) {
                if (f()) {
                    m();
                }
                this.f20634r = enumC1687mo;
                if (f()) {
                    n();
                }
                if (z7) {
                    j();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002d A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:6:0x0006, B:8:0x000a, B:10:0x001c, B:15:0x0029, B:20:0x0038, B:16:0x002d, B:18:0x0033), top: B:27:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0033 A[Catch: all -> 0x0027, TryCatch #0 {all -> 0x0027, blocks: (B:3:0x0001, B:6:0x0006, B:8:0x000a, B:10:0x001c, B:15:0x0029, B:20:0x0038, B:16:0x002d, B:18:0x0033), top: B:27:0x0001 }] */
    public final synchronized void l(boolean z7, boolean z8) {
        try {
            if (this.f20635s != z7) {
                this.f20635s = z7;
                if (z7) {
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.w8)).booleanValue() || !p083k3.l.f25980A.f25993m.h()) {
                        n();
                    } else if (!f()) {
                        m();
                    }
                } else if (!f()) {
                    m();
                }
                if (z8) {
                    j();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void m() {
        int iOrdinal = this.f20634r.ordinal();
        if (iOrdinal == 1) {
            this.f20618b.b();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.f20619c.b();
        }
    }

    public final synchronized void n() {
        int iOrdinal = this.f20634r.ordinal();
        if (iOrdinal == 1) {
            this.f20618b.c();
        } else {
            if (iOrdinal != 2) {
                return;
            }
            this.f20619c.c();
        }
    }
}
