package p046f6;

import A0.Y;
import E3.j;
import H3.p;
import P3.b;
import U0.C0338d;
import U0.C0349o;
import U0.C0352s;
import U0.RunnableC0351q;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.AbstractC0873Pa;
import com.google.android.gms.internal.ads.AbstractC1988se;
import com.google.android.gms.internal.ads.C0650Aa;
import com.google.android.gms.internal.ads.C0738Fn;
import com.google.android.gms.internal.ads.C0871Om;
import com.google.android.gms.internal.ads.C0887Qa;
import com.google.android.gms.internal.ads.C0915Sa;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.C1367ge;
import com.google.android.gms.internal.ads.C1936re;
import com.google.android.gms.internal.ads.C2040te;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.J;
import com.google.android.gms.internal.ads.J7;
import com.google.android.gms.internal.ads.JB;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.Q7;
import com.google.android.gms.internal.ads.RB;
import com.google.android.gms.internal.ads.RunnableC0963Vg;
import com.google.android.gms.internal.ads.Uw;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p039f.RunnableC3004t;
import p046f6.c;
import p052g4.e;
import p083k3.l;
import p086l.RunnableC3036k;
import p090l3.C3099q;
import p094m0.o0;
import p094m0.r0;
import p113o3.I;
import p113o3.L;
import p120p3.a;
import p120p3.h;
import z4.d0;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements r0, e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25221G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public long f25222H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f25223I;

    public /* synthetic */ c(int i8) {
        this.f25221G = i8;
        this.f25222H = 0L;
    }

    public static final void l(C0738Fn c0738Fn, String str, long j8) {
        if (c0738Fn != null) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Tb)).booleanValue()) {
                C0871Om c0871OmA = c0738Fn.a();
                c0871OmA.n("action", "lat_init");
                c0871OmA.n(str, Long.toString(j8));
                c0871OmA.u();
            }
        }
    }

    public final void a(int i8) {
        if (i8 < 64) {
            this.f25222H &= ~(1 << i8);
            return;
        }
        Object obj = this.f25223I;
        if (((c) obj) != null) {
            ((c) obj).a(i8 - 64);
        }
    }

    public final int b(int i8) {
        Object obj = this.f25223I;
        if (((c) obj) == null) {
            return i8 >= 64 ? Long.bitCount(this.f25222H) : Long.bitCount(this.f25222H & ((1 << i8) - 1));
        }
        if (i8 < 64) {
            return Long.bitCount(this.f25222H & ((1 << i8) - 1));
        }
        return Long.bitCount(this.f25222H) + ((c) obj).b(i8 - 64);
    }

    public final void c() {
        if (((c) this.f25223I) == null) {
            this.f25223I = new c(3);
        }
    }

    public final boolean d(int i8) {
        if (i8 < 64) {
            return (this.f25222H & (1 << i8)) != 0;
        }
        c();
        return ((c) this.f25223I).d(i8 - 64);
    }

    public final void e(int i8, boolean z7) {
        if (i8 >= 64) {
            c();
            ((c) this.f25223I).e(i8 - 64, z7);
            return;
        }
        long j8 = this.f25222H;
        boolean z8 = (Long.MIN_VALUE & j8) != 0;
        long j9 = (1 << i8) - 1;
        this.f25222H = ((j8 & (~j9)) << 1) | (j8 & j9);
        if (z7) {
            j(i8);
        } else {
            a(i8);
        }
        if (z8 || ((c) this.f25223I) != null) {
            c();
            ((c) this.f25223I).e(0, z8);
        }
    }

    public final void f(o0 o0Var) {
        ((Y) this.f25223I).f103f.execute(new RunnableC3004t(12, this, o0Var));
    }

    public final void g(final long j8, final boolean z7) {
        if (j8 == 0) {
            ((Y) this.f25223I).getClass();
        }
        this.f25222H = j8;
        ((Y) this.f25223I).f103f.execute(new Runnable() { // from class: A0.W
            @Override // java.lang.Runnable
            public final void run() {
                U0.x xVar = (U0.x) ((Y) this.f93G.f25223I).f101d;
                if (xVar.f6874s > 0) {
                    return;
                }
                Iterator it = xVar.f6863h.iterator();
                while (it.hasNext()) {
                    C0352s c0352s = (C0352s) ((U0.t) it.next());
                    U0.O o4 = c0352s.f6845N;
                    Executor executor = c0352s.f6846O;
                    Objects.requireNonNull(o4);
                    executor.execute(new RunnableC0351q(o4, 0));
                }
                boolean z8 = z7;
                long j9 = j8;
                if (z8) {
                    U0.B b8 = xVar.f6870o;
                    if (b8 != null) {
                        b8.b(j9, -9223372036854775807L, xVar.f6865j, null);
                        return;
                    }
                    return;
                }
                xVar.f6876u = j9;
                U0.w wVar = (U0.w) xVar.f6864i.k(j9);
                if (wVar != null) {
                    xVar.f6871p = wVar.f6852a;
                    xVar.f6872q = wVar.f6853b;
                    xVar.c();
                }
                C0349o c0349o = xVar.f6861f;
                C0338d c0338d = xVar.f6860e;
                c0338d.r(j9, c0349o);
                long j10 = xVar.f6877v;
                if (j10 == -9223372036854775807L || j9 < j10) {
                    return;
                }
                c0338d.a();
                xVar.f6878w = true;
            }
        });
    }

    public final boolean h(int i8) {
        if (i8 >= 64) {
            c();
            return ((c) this.f25223I).h(i8 - 64);
        }
        long j8 = 1 << i8;
        long j9 = this.f25222H;
        boolean z7 = (j9 & j8) != 0;
        long j10 = j9 & (~j8);
        this.f25222H = j10;
        long j11 = j8 - 1;
        this.f25222H = (j10 & j11) | Long.rotateRight((~j11) & j10, 1);
        Object obj = this.f25223I;
        if (((c) obj) != null) {
            if (((c) obj).d(0)) {
                j(63);
            }
            ((c) this.f25223I).h(0);
        }
        return z7;
    }

    public final void i() {
        this.f25222H = 0L;
        Object obj = this.f25223I;
        if (((c) obj) != null) {
            ((c) obj).i();
        }
    }

    public final void j(int i8) {
        if (i8 < 64) {
            this.f25222H |= 1 << i8;
        } else {
            c();
            ((c) this.f25223I).j(i8 - 64);
        }
    }

    public final void k(Context context, a aVar, boolean z7, C1367ge c1367ge, String str, String str2, RunnableC0963Vg runnableC0963Vg, final Uw uw, final C0738Fn c0738Fn, final Long l4) {
        PackageInfo packageInfoC;
        l lVar = l.f25980A;
        lVar.f25990j.getClass();
        if (SystemClock.elapsedRealtime() - this.f25222H < 5000) {
            h.g("Not retrying to fetch app settings");
            return;
        }
        b bVar = lVar.f25990j;
        bVar.getClass();
        this.f25222H = SystemClock.elapsedRealtime();
        if (c1367ge != null && !TextUtils.isEmpty(c1367ge.f18944e)) {
            long j8 = c1367ge.f18945f;
            bVar.getClass();
            if (System.currentTimeMillis() - j8 <= ((Long) C3099q.f26624d.f26627c.a(Q7.f15704Q3)).longValue() && c1367ge.f18947h) {
                return;
            }
        }
        if (context == null) {
            h.g("Context not provided to fetch application settings");
            return;
        }
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            h.g("App settings could not be fetched. Required parameters missing");
            return;
        }
        Context applicationContext = context.getApplicationContext();
        if (applicationContext == null) {
            applicationContext = context;
        }
        this.f25223I = applicationContext;
        final Ow owH = U4.a.h(context, 4);
        owH.zzi();
        C0887Qa c0887QaB = lVar.f25996p.b((Context) this.f25223I, aVar, uw);
        C0650Aa c0650Aa = AbstractC0873Pa.f15389b;
        C0915Sa c0915SaA = c0887QaB.a("google.afma.config.fetchAppSettings", c0650Aa, c0650Aa);
        int i8 = 0;
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("app_id", str);
            } else if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("ad_unit_id", str2);
            }
            jSONObject.put("is_init", z7);
            jSONObject.put("pn", context.getPackageName());
            J7 j9 = Q7.f15777a;
            jSONObject.put("experiment_ids", TextUtils.join(",", C3099q.f26624d.f26625a.b()));
            jSONObject.put("js", aVar.f28196G);
            try {
                ApplicationInfo applicationInfo = ((Context) this.f25223I).getApplicationInfo();
                if (applicationInfo != null && (packageInfoC = Q3.c.a(context).c(0, applicationInfo.packageName)) != null) {
                    jSONObject.put("version", packageInfoC.versionCode);
                }
            } catch (PackageManager.NameNotFoundException unused) {
                I.k("Error fetching PackageInfo.");
            }
            D4.b bVarA = c0915SaA.a(jSONObject);
            RB rb = new RB() { // from class: k3.d
                @Override // com.google.android.gms.internal.ads.RB
                public final D4.b zza(Object obj) throws JSONException {
                    Long l8 = l4;
                    C0738Fn c0738Fn2 = c0738Fn;
                    Uw uw2 = uw;
                    Ow ow = owH;
                    JSONObject jSONObject2 = (JSONObject) obj;
                    boolean zOptBoolean = jSONObject2.optBoolean("isSuccessful", false);
                    if (zOptBoolean) {
                        String string = jSONObject2.getString("appSettingsJson");
                        l lVar2 = l.f25980A;
                        L lD = lVar2.f25987g.d();
                        lD.s();
                        synchronized (lD.f27894a) {
                            try {
                                lVar2.f25990j.getClass();
                                long jCurrentTimeMillis = System.currentTimeMillis();
                                if (string == null || string.equals(lD.f27907n.f18944e)) {
                                    lD.f27907n.f18945f = jCurrentTimeMillis;
                                } else {
                                    lD.f27907n = new C1367ge(jCurrentTimeMillis, string);
                                    SharedPreferences.Editor editor = lD.f27900g;
                                    if (editor != null) {
                                        editor.putString("app_settings_json", string);
                                        lD.f27900g.putLong("app_settings_last_update_ms", jCurrentTimeMillis);
                                        lD.f27900g.apply();
                                    }
                                    lD.t();
                                    Iterator it = lD.f27896c.iterator();
                                    while (it.hasNext()) {
                                        ((Runnable) it.next()).run();
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                        if (l8 != null) {
                            l.f25980A.f25990j.getClass();
                            c.l(c0738Fn2, "cld_s", SystemClock.elapsedRealtime() - l8.longValue());
                        }
                    }
                    ow.e(zOptBoolean);
                    uw2.b(ow.zzm());
                    return Cw.N1(null);
                }
            };
            C1936re c1936re = AbstractC1988se.f20911f;
            JB jbD2 = Cw.d2(bVarA, rb, c1936re);
            if (runnableC0963Vg != null) {
                ((C2040te) bVarA).a(runnableC0963Vg, c1936re);
            }
            if (l4 != null) {
                ((C2040te) bVarA).a(new RunnableC3036k(c0738Fn, l4, 19, i8), c1936re);
            }
            String str3 = "ConfigLoader.maybeFetchNewAppSettings";
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15794b7)).booleanValue()) {
                Cw.h2(jbD2, new J(str3, 2, i8), c1936re);
            } else {
                AbstractC2987b.d0(jbD2, "ConfigLoader.maybeFetchNewAppSettings");
            }
        } catch (Exception e8) {
            h.e("Error requesting application settings", e8);
            owH.d(e8);
            owH.e(false);
            uw.b(owH.zzm());
        }
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        switch (this.f25221G) {
            case 6:
                int i8 = exc instanceof com.google.android.gms.common.api.h ? ((com.google.android.gms.common.api.h) exc).f11763G.f11756G : 13;
                long j8 = this.f25222H;
                Iterator it = ((j) ((p004a3.b) this.f25223I).f8652J).f2904c.f3723d.iterator();
                while (it.hasNext()) {
                    ((p) it.next()).b(null, i8, j8);
                }
                break;
            default:
                ((AtomicLong) ((C1093bD) this.f25223I).f18027I).set(this.f25222H);
                break;
        }
    }

    public final String toString() {
        switch (this.f25221G) {
            case 3:
                if (((c) this.f25223I) == null) {
                    return Long.toBinaryString(this.f25222H);
                }
                return ((c) this.f25223I).toString() + "xx" + Long.toBinaryString(this.f25222H);
            default:
                return super.toString();
        }
    }

    public /* synthetic */ c(Object obj, int i8, long j8) {
        this.f25221G = i8;
        this.f25223I = obj;
        this.f25222H = j8;
    }

    public c(P3.a aVar) {
        this.f25221G = 8;
        com.bumptech.glide.c.h(aVar);
        this.f25223I = aVar;
    }

    public c(long j8, d0 d0Var) {
        this.f25221G = 2;
        this.f25222H = j8;
        this.f25223I = d0Var;
    }

    public c(Y y7) {
        this.f25221G = 1;
        this.f25223I = y7;
    }
}
