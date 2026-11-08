package K;

import A0.O;
import B0.C0041c;
import C2.C0091g;
import C3.E;
import C3.F;
import C3.InterfaceC0106f;
import F2.G;
import H3.x;
import K3.AbstractC0248v;
import K3.W;
import Y.C0396h;
import Y.C0397i;
import Y.d0;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.RemoteException;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.internal.ads.A5;
import com.google.android.gms.internal.ads.AN;
import com.google.android.gms.internal.ads.AbstractC1604l8;
import com.google.android.gms.internal.ads.AbstractC2073uA;
import com.google.android.gms.internal.ads.AbstractC2118v3;
import com.google.android.gms.internal.ads.BinderC1490iz;
import com.google.android.gms.internal.ads.C0744Ge;
import com.google.android.gms.internal.ads.C0783In;
import com.google.android.gms.internal.ads.C0864Of;
import com.google.android.gms.internal.ads.C0871Om;
import com.google.android.gms.internal.ads.C1129bz;
import com.google.android.gms.internal.ads.C1172cq;
import com.google.android.gms.internal.ads.C1203dK;
import com.google.android.gms.internal.ads.C1204dL;
import com.google.android.gms.internal.ads.C1232dz;
import com.google.android.gms.internal.ads.C1294f8;
import com.google.android.gms.internal.ads.C1367ge;
import com.google.android.gms.internal.ads.C1388gz;
import com.google.android.gms.internal.ads.C1488ix;
import com.google.android.gms.internal.ads.C1542jz;
import com.google.android.gms.internal.ads.C1721nL;
import com.google.android.gms.internal.ads.C1773oL;
import com.google.android.gms.internal.ads.C1804p0;
import com.google.android.gms.internal.ads.C1854pz;
import com.google.android.gms.internal.ads.C1917rA;
import com.google.android.gms.internal.ads.C1980sL;
import com.google.android.gms.internal.ads.C2032tL;
import com.google.android.gms.internal.ads.C2190wN;
import com.google.android.gms.internal.ads.C2218x;
import com.google.android.gms.internal.ads.C2222x3;
import com.google.android.gms.internal.ads.C2274y3;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.Et;
import com.google.android.gms.internal.ads.IK;
import com.google.android.gms.internal.ads.InterfaceC0684Ce;
import com.google.android.gms.internal.ads.InterfaceC0715Ef;
import com.google.android.gms.internal.ads.InterfaceC0959Vc;
import com.google.android.gms.internal.ads.InterfaceC1078az;
import com.google.android.gms.internal.ads.InterfaceC1119bo;
import com.google.android.gms.internal.ads.InterfaceC2170w3;
import com.google.android.gms.internal.ads.InterfaceC2270y;
import com.google.android.gms.internal.ads.Lq;
import com.google.android.gms.internal.ads.Ov;
import com.google.android.gms.internal.ads.Ow;
import com.google.android.gms.internal.ads.PA;
import com.google.android.gms.internal.ads.PL;
import com.google.android.gms.internal.ads.QK;
import com.google.android.gms.internal.ads.SurfaceHolderCallbackC1979sK;
import com.google.android.gms.internal.ads.TextureViewSurfaceTextureListenerC0669Be;
import com.google.android.gms.internal.ads.Tv;
import com.google.android.gms.internal.ads.Tw;
import com.google.android.gms.internal.ads.ViewTreeObserverOnGlobalLayoutListenerC0920Sf;
import com.google.android.gms.internal.ads.Yy;
import com.google.api.Service;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p034e2.r;
import p034e2.y;
import p039f.S;
import p090l3.C3099q;
import p096m2.u;
import p113o3.I;
import p113o3.L;
import p135r2.o;
import p167v3.C3193a;
import p167v3.z;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4263G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f4264H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f4265I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f4266J;

    public a(x xVar, String str, String str2) {
        this.f4263G = 13;
        this.f4264H = xVar;
        this.f4265I = str;
        this.f4266J = str2;
    }

    private void a() {
        p135r2.m mVar;
        ((p135r2.k) this.f4264H).j();
        Object obj = this.f4265I;
        if (((o) ((C0041c) obj).f916J) == null) {
            ((p135r2.k) this.f4264H).b(((C0041c) obj).f914H);
        } else {
            p135r2.k kVar = (p135r2.k) this.f4264H;
            o oVar = (o) ((C0041c) obj).f916J;
            synchronized (kVar.f29817K) {
                mVar = kVar.f29818L;
            }
            if (mVar != null) {
                mVar.b(oVar);
            }
        }
        if (((C0041c) this.f4265I).f913G) {
            ((p135r2.k) this.f4264H).a("intermediate-response");
        } else {
            ((p135r2.k) this.f4264H).c("done");
        }
        Runnable runnable = (Runnable) this.f4266J;
        if (runnable != null) {
            runnable.run();
        }
    }

    private final void b() {
        L l4 = (L) this.f4264H;
        Context context = (Context) this.f4265I;
        l4.getClass();
        SharedPreferences sharedPreferences = context.getSharedPreferences("admob", 0);
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        try {
            synchronized (l4.f27894a) {
                try {
                    l4.f27899f = sharedPreferences;
                    l4.f27900g = editorEdit;
                    if (Build.VERSION.SDK_INT >= 23) {
                        NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
                    }
                    l4.f27901h = l4.f27899f.getBoolean("use_https", l4.f27901h);
                    l4.f27914u = l4.f27899f.getBoolean("content_url_opted_out", l4.f27914u);
                    l4.f27902i = l4.f27899f.getString("content_url_hashes", l4.f27902i);
                    l4.f27904k = l4.f27899f.getBoolean("gad_idless", l4.f27904k);
                    l4.f27915v = l4.f27899f.getBoolean("content_vertical_opted_out", l4.f27915v);
                    l4.f27903j = l4.f27899f.getString("content_vertical_hashes", l4.f27903j);
                    l4.f27911r = l4.f27899f.getInt("version_code", l4.f27911r);
                    if (((Boolean) AbstractC1604l8.f19718g.l()).booleanValue() && C3099q.f26624d.f26627c.f15142j) {
                        l4.f27907n = new C1367ge(0L, HttpUrl.FRAGMENT_ENCODE_SET);
                    } else {
                        l4.f27907n = new C1367ge(l4.f27899f.getLong("app_settings_last_update_ms", l4.f27907n.f18945f), l4.f27899f.getString("app_settings_json", l4.f27907n.f18944e));
                    }
                    l4.f27908o = l4.f27899f.getLong("app_last_background_time_ms", l4.f27908o);
                    l4.f27910q = l4.f27899f.getInt("request_in_session_count", l4.f27910q);
                    l4.f27909p = l4.f27899f.getLong("first_ad_req_time_ms", l4.f27909p);
                    l4.f27912s = l4.f27899f.getStringSet("never_pool_slots", l4.f27912s);
                    l4.f27916w = l4.f27899f.getString("display_cutout", l4.f27916w);
                    l4.f27891B = l4.f27899f.getInt("app_measurement_npa", l4.f27891B);
                    l4.f27892C = l4.f27899f.getInt("sd_app_measure_npa", l4.f27892C);
                    l4.f27893D = l4.f27899f.getLong("sd_app_measure_npa_ts", l4.f27893D);
                    l4.f27917x = l4.f27899f.getString("inspector_info", l4.f27917x);
                    l4.f27918y = l4.f27899f.getBoolean("linked_device", l4.f27918y);
                    l4.f27919z = l4.f27899f.getString("linked_ad_unit", l4.f27919z);
                    l4.f27890A = l4.f27899f.getString("inspector_ui_storage", l4.f27890A);
                    l4.f27905l = l4.f27899f.getString("IABTCF_TCString", l4.f27905l);
                    l4.f27906m = l4.f27899f.getInt("gad_has_consent_for_cookies", l4.f27906m);
                    try {
                        l4.f27913t = new JSONObject(l4.f27899f.getString("native_advanced_settings", "{}"));
                    } catch (JSONException e8) {
                        p120p3.h.h("Could not convert native advanced settings to json object", e8);
                    }
                    l4.t();
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            p083k3.l.f25980A.f25987g.i("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread", th2);
            I.l("AdSharedPreferenceManagerImpl.initializeOnBackgroundThread, errorMessage = ", th2);
        }
    }

    private final void c() {
        InterfaceC0106f interfaceC0106f;
        synchronized (((x) this.f4264H).f3741d) {
            interfaceC0106f = (InterfaceC0106f) ((x) this.f4264H).f3741d.get((String) this.f4265I);
        }
        if (interfaceC0106f == null) {
            x.f3735t.b("Discarded message for unknown namespace '%s'", (String) this.f4265I);
        } else {
            x xVar = (x) this.f4264H;
            String str = (String) this.f4266J;
            CastDevice castDevice = xVar.f3739b;
            ((E3.j) interfaceC0106f).n(str);
        }
    }

    private final void d() {
        InterfaceC0106f interfaceC0106f;
        E e8 = (E) this.f4264H;
        HashMap map = e8.f1440H.f1461s;
        String str = (String) this.f4265I;
        synchronized (map) {
            interfaceC0106f = (InterfaceC0106f) e8.f1440H.f1461s.get(str);
        }
        if (interfaceC0106f == null) {
            F.f1441w.b("Discarded message for unknown namespace '%s'", str);
            return;
        }
        String str2 = (String) this.f4266J;
        CastDevice castDevice = e8.f1440H.f1459q;
        ((E3.j) interfaceC0106f).n(str2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC2170w3 interfaceC2170w3;
        int i8 = 4;
        int i9 = 3;
        Object objCall = null;
        int i10 = 2;
        boolean zBooleanValue = true;
        zAcceptThirdPartyCookies = false;
        boolean zAcceptThirdPartyCookies = false;
        switch (this.f4263G) {
            case 0:
                S s7 = (S) this.f4264H;
                Typeface typeface = (Typeface) this.f4265I;
                p016c.g gVar = (p016c.g) s7.f24988H;
                if (gVar != null) {
                    gVar.h(typeface);
                    return;
                }
                return;
            case 1:
                ((M.a) this.f4264H).accept(this.f4265I);
                return;
            case 2:
                try {
                    objCall = ((Callable) this.f4264H).call();
                    break;
                } catch (Exception unused) {
                }
                ((Handler) this.f4266J).post(new a(this, (M.a) this.f4265I, objCall, true ? 1 : 0));
                return;
            case 3:
                if (((List) this.f4264H).contains((d0) this.f4265I)) {
                    ((List) this.f4264H).remove((d0) this.f4265I);
                    C0397i c0397i = (C0397i) this.f4266J;
                    d0 d0Var = (d0) this.f4265I;
                    c0397i.getClass();
                    O.c(d0Var.f7861a, d0Var.f7863c.f7963m0);
                    return;
                }
                return;
            case 4:
                ((C0396h) this.f4264H).c();
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Transition for operation " + ((d0) this.f4265I) + "has completed");
                    return;
                }
                return;
            case 5:
                try {
                    zBooleanValue = ((Boolean) ((D4.b) this.f4266J).get()).booleanValue();
                    break;
                } catch (InterruptedException | ExecutionException unused2) {
                }
                ((p034e2.c) this.f4264H).b((p096m2.j) this.f4265I, zBooleanValue);
                return;
            case 6:
                ((y) this.f4264H).f24847f.j((r) this.f4265I, (u) this.f4266J);
                return;
            case 7:
                a();
                return;
            case 8:
                p000a.x xVar = (p000a.x) this.f4264H;
                String str = (String) this.f4265I;
                Map map = (Map) this.f4266J;
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) xVar.f8622d;
                if (interfaceC0715Ef != null) {
                    interfaceC0715Ef.w(str, map);
                    return;
                }
                return;
            case 9:
                b();
                return;
            case 10:
                C3193a c3193a = (C3193a) this.f4264H;
                Bundle bundle = (Bundle) this.f4265I;
                p182x3.a aVar = (p182x3.a) this.f4266J;
                c3193a.getClass();
                G g8 = p083k3.l.f25980A.f25985e;
                Context context = c3193a.f30586a;
                g8.getClass();
                CookieManager cookieManagerL = G.L();
                bundle.putBoolean("accept_3p_cookie", cookieManagerL != null ? cookieManagerL.acceptThirdPartyCookies(c3193a.f30587b) : false);
                C0091g.s(context, new p043f3.f((p043f3.e) new p043f3.e(3).e(bundle)), aVar);
                return;
            case 11:
                p167v3.x xVar2 = (p167v3.x) this.f4264H;
                Object obj = this.f4265I;
                Pair pair = (Pair) this.f4266J;
                xVar2.getClass();
                if (obj instanceof WebView) {
                    p083k3.l.f25980A.f25985e.getClass();
                    CookieManager cookieManagerL2 = G.L();
                    if (cookieManagerL2 != null) {
                        zAcceptThirdPartyCookies = cookieManagerL2.acceptThirdPartyCookies((WebView) obj);
                    }
                }
                HashMap map2 = xVar2.f30702a;
                Boolean boolValueOf = Boolean.valueOf(zAcceptThirdPartyCookies);
                z zVar = (z) map2.get(boolValueOf);
                if (zVar != null) {
                    p083k3.l.f25980A.f25990j.getClass();
                    if (zVar.f30715c > System.currentTimeMillis()) {
                        xVar2.d(zVar, pair, true);
                        return;
                    }
                }
                HashMap map3 = xVar2.f30703b;
                List arrayList = (List) map3.get(boolValueOf);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    map3.put(boolValueOf, arrayList);
                }
                arrayList.add(pair);
                return;
            case 12:
                C0783In c0783In = (C0783In) this.f4264H;
                String str2 = (String) this.f4265I;
                Pair[] pairArr = (Pair[]) this.f4266J;
                c0783In.getClass();
                ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap(c0783In.f14203a);
                if (!TextUtils.isEmpty("action") && !TextUtils.isEmpty(str2)) {
                    concurrentHashMap.put("action", str2);
                }
                for (Pair pair2 : pairArr) {
                    String str3 = (String) pair2.first;
                    String str4 = (String) pair2.second;
                    if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str4)) {
                        concurrentHashMap.put(str3, str4);
                    }
                }
                c0783In.a(concurrentHashMap, false);
                return;
            case 13:
                c();
                return;
            case 14:
                d();
                return;
            case 15:
                F.d dVar = (F.d) this.f4266J;
                if (dVar.f2961H > 0) {
                    W w7 = (W) this.f4264H;
                    Bundle bundle2 = (Bundle) dVar.f2963J;
                    w7.b(bundle2 != null ? bundle2.getBundle((String) this.f4265I) : null);
                }
                if (((F.d) this.f4266J).f2961H >= 2) {
                    AbstractC0248v abstractC0248v = (AbstractC0248v) ((W) this.f4264H);
                    abstractC0248v.f4522G = true;
                    abstractC0248v.e();
                }
                if (((F.d) this.f4266J).f2961H >= 3) {
                    ((AbstractC0248v) ((W) this.f4264H)).e();
                }
                if (((F.d) this.f4266J).f2961H >= 4) {
                    ((W) this.f4264H).c();
                }
                if (((F.d) this.f4266J).f2961H >= 5) {
                    ((W) this.f4264H).getClass();
                    return;
                }
                return;
            case 16:
                ((InterfaceC2270y) this.f4265I).getClass();
                return;
            case 17:
                C2218x c2218x = (C2218x) this.f4264H;
                final C1804p0 c1804p0 = (C1804p0) this.f4265I;
                final C1203dK c1203dK = (C1203dK) this.f4266J;
                c2218x.getClass();
                int i11 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) c2218x.f21780I).f20880G.f21498p;
                final C1204dL c1204dLL = c2032tL.l();
                final int i12 = false ? 1 : 0;
                c2032tL.i(c1204dLL, 1017, new InterfaceC1119bo(c1204dLL, c1804p0, c1203dK, i12) { // from class: com.google.android.gms.internal.ads.pL

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f20442G;

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C1804p0 f20443H;

                    {
                        this.f20442G = i12;
                        this.f20443H = c1804p0;
                    }

                    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
                    public final void zza(Object obj2) {
                        int i13 = this.f20442G;
                        C1804p0 c1804p1 = this.f20443H;
                        switch (i13) {
                            case 0:
                                ((InterfaceC1255eL) obj2).a(c1804p1);
                                break;
                            default:
                                ((InterfaceC1255eL) obj2).k(c1804p1);
                                break;
                        }
                    }
                });
                return;
            case 18:
                ((AbstractC2118v3) this.f4264H).l();
                C2222x3 c2222x3 = (C2222x3) this.f4265I;
                Object obj2 = c2222x3.f21829J;
                if (((C2274y3) obj2) == null) {
                    ((AbstractC2118v3) this.f4264H).e(c2222x3.f21827H);
                } else {
                    AbstractC2118v3 abstractC2118v3 = (AbstractC2118v3) this.f4264H;
                    C2274y3 c2274y3 = (C2274y3) obj2;
                    synchronized (abstractC2118v3.f21433K) {
                        interfaceC2170w3 = abstractC2118v3.f21434L;
                        break;
                    }
                    interfaceC2170w3.d(c2274y3);
                }
                if (((C2222x3) this.f4265I).f21826G) {
                    ((AbstractC2118v3) this.f4264H).d("intermediate-response");
                } else {
                    ((AbstractC2118v3) this.f4264H).f("done");
                }
                Runnable runnable = (Runnable) this.f4266J;
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            case 19:
                InterfaceC0684Ce interfaceC0684Ce = ((TextureViewSurfaceTextureListenerC0669Be) this.f4266J).f12398V;
                if (interfaceC0684Ce != null) {
                    ((C0744Ge) interfaceC0684Ce).c("error", "what", (String) this.f4264H, "extra", (String) this.f4265I);
                    return;
                }
                return;
            case 20:
                ((ViewTreeObserverOnGlobalLayoutListenerC0920Sf) this.f4264H).K((String) this.f4265I, (ValueCallback) this.f4266J);
                return;
            case 21:
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) this.f4264H;
                String str5 = (String) this.f4265I;
                p120p3.k kVar = (p120p3.k) this.f4266J;
                int i13 = C1172cq.f18245I;
                ContentValues contentValues = new ContentValues();
                contentValues.put("event_state", (Integer) 1);
                sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str5});
                C1172cq.O(sQLiteDatabase, kVar);
                return;
            case 22:
                Lq lq = (Lq) this.f4264H;
                Tv tv = (Tv) this.f4265I;
                Ov ov = (Ov) this.f4266J;
                Cw.h2(Cw.e2(lq.f14560b.a(tv, ov), ov.f15237R, TimeUnit.SECONDS, lq.f14563e), new C0864Of(lq, 23), lq.f14561c);
                return;
            case 23:
                C1488ix c1488ix = (C1488ix) this.f4264H;
                String str6 = (String) this.f4265I;
                Tw tw = (Tw) this.f4266J;
                Ow owH = U4.a.h(c1488ix.f19390a, 14);
                owH.zzi();
                owH.e(c1488ix.f19392c.c(str6));
                if (tw == null) {
                    c1488ix.f19393d.b(owH.zzm());
                    return;
                } else {
                    tw.a(owH);
                    tw.h();
                    return;
                }
            case 24:
                C1542jz c1542jz = (C1542jz) this.f4264H;
                C1129bz c1129bz = (C1129bz) this.f4265I;
                C0091g c0091g = (C0091g) this.f4266J;
                String str7 = c1542jz.f19541b;
                try {
                    C1854pz c1854pz = c1542jz.f19540a;
                    c1854pz.getClass();
                    InterfaceC1078az interfaceC1078az = (InterfaceC1078az) c1854pz.f20517j;
                    if (interfaceC1078az == null) {
                        return;
                    }
                    Bundle bundle3 = new Bundle();
                    bundle3.putString("callerPackage", str7);
                    C1542jz.b(c1129bz.f18139a, new C1388gz(bundle3, 6));
                    C1542jz.b(c1129bz.f18140b, new C1388gz(bundle3, 7));
                    BinderC1490iz binderC1490iz = new BinderC1490iz(c1542jz, c0091g);
                    Yy yy = (Yy) interfaceC1078az;
                    Parcel parcelJ0 = yy.j0();
                    A5.c(parcelJ0, bundle3);
                    A5.e(parcelJ0, binderC1490iz);
                    yy.k3(2, parcelJ0);
                    return;
                } catch (RemoteException e8) {
                    C1542jz.f19538c.c(e8, "dismiss overlay display from: %s", str7);
                    return;
                }
            case 25:
                C1542jz c1542jz2 = (C1542jz) this.f4264H;
                C1232dz c1232dz = (C1232dz) this.f4265I;
                C0091g c0091g2 = (C0091g) this.f4266J;
                String str8 = c1542jz2.f19541b;
                try {
                    C1854pz c1854pz2 = c1542jz2.f19540a;
                    c1854pz2.getClass();
                    InterfaceC1078az interfaceC1078az2 = (InterfaceC1078az) c1854pz2.f20517j;
                    if (interfaceC1078az2 == null) {
                        return;
                    }
                    Bundle bundle4 = new Bundle();
                    bundle4.putString("callerPackage", str8);
                    bundle4.putBinder("windowToken", c1232dz.f18403a);
                    C1542jz.b(c1232dz.f18408f, new C1388gz(bundle4, 8));
                    bundle4.putInt("layoutGravity", c1232dz.f18405c);
                    bundle4.putFloat("layoutVerticalMargin", c1232dz.f18406d);
                    bundle4.putInt("displayMode", 0);
                    bundle4.putInt("triggerMode", 0);
                    bundle4.putInt("windowWidthPx", c1232dz.f18407e);
                    C1542jz.b(null, new C1388gz(bundle4, true ? 1 : 0));
                    C1542jz.b(null, new C1388gz(bundle4, i10));
                    C1542jz.b(c1232dz.f18404b, new C1388gz(bundle4, i9));
                    C1542jz.b(null, new C1388gz(bundle4, i8));
                    bundle4.putBoolean("stableSessionToken", true);
                    BinderC1490iz binderC1490iz2 = new BinderC1490iz(c1542jz2, c0091g2);
                    Yy yy2 = (Yy) interfaceC1078az2;
                    Parcel parcelJ1 = yy2.j0();
                    parcelJ1.writeString(str8);
                    A5.c(parcelJ1, bundle4);
                    A5.e(parcelJ1, binderC1490iz2);
                    yy2.k3(1, parcelJ1);
                    return;
                } catch (RemoteException e9) {
                    C1542jz.f19538c.c(e9, "show overlay display from: %s", str8);
                    return;
                }
            case Service.BILLING_FIELD_NUMBER /* 26 */:
                IK ik = (IK) this.f4264H;
                C1917rA c1917rA = (C1917rA) this.f4265I;
                C2190wN c2190wN = (C2190wN) this.f4266J;
                ik.getClass();
                PA paH = c1917rA.h();
                C2032tL c2032tL2 = (C2032tL) ik.f13865c;
                InterfaceC0959Vc interfaceC0959Vc = c2032tL2.f21062M;
                interfaceC0959Vc.getClass();
                C1980sL c1980sL = c2032tL2.f21059J;
                c1980sL.getClass();
                c1980sL.f20882b = AbstractC2073uA.t(paH);
                if (!paH.isEmpty()) {
                    c1980sL.f20885e = (C2190wN) paH.get(0);
                    c2190wN.getClass();
                    c1980sL.f20886f = c2190wN;
                }
                if (c1980sL.f20884d == null) {
                    c1980sL.f20884d = C1980sL.a(interfaceC0959Vc, c1980sL.f20882b, c1980sL.f20885e, c1980sL.f20881a);
                }
                c1980sL.c(interfaceC0959Vc.zzn());
                return;
            case 27:
                Pair pair3 = (Pair) this.f4265I;
                ((C2032tL) ((QK) ((C0871Om) this.f4264H).f15197I).f16015h).c(((Integer) pair3.first).intValue(), (C2190wN) pair3.second, (C1721nL) this.f4266J);
                return;
            case Service.MONITORING_FIELD_NUMBER /* 28 */:
                C1773oL c1773oL = (C1773oL) this.f4264H;
                final C1804p0 c1804p1 = (C1804p0) this.f4265I;
                final C1203dK c1203dK2 = (C1203dK) this.f4266J;
                c1773oL.getClass();
                int i14 = Et.f13234a;
                C2032tL c2032tL3 = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                final C1204dL c1204dLL2 = c2032tL3.l();
                final boolean z7 = true ? 1 : 0;
                c2032tL3.i(c1204dLL2, 1009, new InterfaceC1119bo(c1204dLL2, c1804p1, c1203dK2, z7) { // from class: com.google.android.gms.internal.ads.pL

                    /* JADX INFO: renamed from: G, reason: collision with root package name */
                    public final /* synthetic */ int f20442G;

                    /* JADX INFO: renamed from: H, reason: collision with root package name */
                    public final /* synthetic */ C1804p0 f20443H;

                    {
                        this.f20442G = z7;
                        this.f20443H = c1804p1;
                    }

                    @Override // com.google.android.gms.internal.ads.InterfaceC1119bo
                    public final void zza(Object obj3) {
                        int i15 = this.f20442G;
                        C1804p0 c1804p2 = this.f20443H;
                        switch (i15) {
                            case 0:
                                ((InterfaceC1255eL) obj3).a(c1804p2);
                                break;
                            default:
                                ((InterfaceC1255eL) obj3).k(c1804p2);
                                break;
                        }
                    }
                });
                return;
            default:
                ((AN) this.f4265I).c(0, (C2190wN) ((C1294f8) this.f4264H).f18727I, (C1721nL) this.f4266J);
                return;
        }
    }

    public /* synthetic */ a(C0783In c0783In, String str, Pair[] pairArr) {
        this.f4263G = 12;
        this.f4264H = c0783In;
        this.f4265I = str;
        this.f4266J = pairArr;
    }

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i8) {
        this.f4263G = i8;
        this.f4266J = obj;
        this.f4264H = obj2;
        this.f4265I = obj3;
    }

    public /* synthetic */ a(Object obj, Object obj2, Object obj3, int i8, int i9) {
        this.f4263G = i8;
        this.f4264H = obj;
        this.f4265I = obj2;
        this.f4266J = obj3;
    }

    public /* synthetic */ a(L l4, Context context) {
        this.f4263G = 9;
        this.f4264H = l4;
        this.f4265I = context;
        this.f4266J = "admob";
    }
}
