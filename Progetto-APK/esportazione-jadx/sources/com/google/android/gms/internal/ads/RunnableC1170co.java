package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import java.io.IOException;
import java.io.InputStream;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.co, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC1170co implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18240G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f18241H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f18242I;

    public /* synthetic */ RunnableC1170co(int i8, Object obj, Object obj2) {
        this.f18240G = i8;
        this.f18242I = obj;
        this.f18241H = obj2;
    }

    private final void a() {
        final C1273eo c1273eo = (C1273eo) ((C0864Of) this.f18242I).f15180H;
        String str = (String) this.f18241H;
        int i8 = 5;
        Ow owH = U4.a.h(c1273eo.f18592f, 5);
        owH.zzi();
        try {
            ArrayList arrayList = new ArrayList();
            JSONObject jSONObject = new JSONObject(str).getJSONObject("initializer_settings").getJSONObject("config");
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                final String next = itKeys.next();
                final Ow owH2 = U4.a.h(c1273eo.f18592f, i8);
                owH2.zzi();
                owH2.s(next);
                final Object obj = new Object();
                final C2040te c2040te = new C2040te();
                D4.b bVarE2 = Cw.e2(c2040te, ((Long) C3099q.f26624d.f26627c.a(Q7.f15623G1)).longValue(), TimeUnit.SECONDS, c1273eo.f18597k);
                c1273eo.f18598l.b(next);
                c1273eo.f18601o.i(next);
                p083k3.l.f25980A.f25990j.getClass();
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                bVarE2.a(new Runnable() { // from class: com.google.android.gms.internal.ads.ao
                    @Override // java.lang.Runnable
                    public final void run() {
                        C1273eo c1273eo2 = c1273eo;
                        Object obj2 = obj;
                        C2040te c2040te2 = c2040te;
                        String str2 = next;
                        long j8 = jElapsedRealtime;
                        Ow ow = owH2;
                        c1273eo2.getClass();
                        synchronized (obj2) {
                            try {
                                if (!c2040te2.f21082G.isDone()) {
                                    p083k3.l.f25980A.f25990j.getClass();
                                    c1273eo2.d(str2, (int) (SystemClock.elapsedRealtime() - j8), "Timeout.", false);
                                    c1273eo2.f18598l.a(str2, "timeout");
                                    c1273eo2.f18601o.d(str2, "timeout");
                                    Uw uw = c1273eo2.f18602p;
                                    ow.i("Timeout");
                                    ow.e(false);
                                    uw.b(ow.zzm());
                                    c2040te2.b(Boolean.FALSE);
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    }
                }, c1273eo.f18595i);
                arrayList.add(bVarE2);
                Cdo cdo = new Cdo(jElapsedRealtime, c2040te, c1273eo, owH2, obj, next);
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(next);
                ArrayList arrayList2 = new ArrayList();
                if (jSONObjectOptJSONObject != null) {
                    try {
                        JSONArray jSONArray = jSONObjectOptJSONObject.getJSONArray("data");
                        for (int i9 = 0; i9 < jSONArray.length(); i9++) {
                            JSONObject jSONObject2 = jSONArray.getJSONObject(i9);
                            String strOptString = jSONObject2.optString("format", HttpUrl.FRAGMENT_ENCODE_SET);
                            JSONObject jSONObjectOptJSONObject2 = jSONObject2.optJSONObject("data");
                            Bundle bundle = new Bundle();
                            if (jSONObjectOptJSONObject2 != null) {
                                Iterator<String> itKeys2 = jSONObjectOptJSONObject2.keys();
                                while (itKeys2.hasNext()) {
                                    String next2 = itKeys2.next();
                                    bundle.putString(next2, jSONObjectOptJSONObject2.optString(next2, HttpUrl.FRAGMENT_ENCODE_SET));
                                }
                            }
                            arrayList2.add(new C1569ka(strOptString, bundle));
                        }
                    } catch (JSONException unused) {
                    }
                }
                c1273eo.d(next, 0, HttpUrl.FRAGMENT_ENCODE_SET, false);
                try {
                    try {
                        c1273eo.f18596j.execute(new Cif(c1273eo, next, cdo, c1273eo.f18594h.b(new JSONObject(), next), arrayList2));
                    } catch (RemoteException e8) {
                        p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
                    }
                } catch (C1075aw unused2) {
                    cdo.o("Failed to create Adapter.");
                }
                i8 = 5;
            }
            AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(arrayList);
            CallableC1497j5 callableC1497j5 = new CallableC1497j5(3, c1273eo, owH);
            Executor executor = c1273eo.f18595i;
            WB wb = new WB(abstractC2073uAT, false, false);
            wb.f17176V = new UB(wb, callableC1497j5, executor);
            wb.x();
        } catch (JSONException e9) {
            p113o3.I.l("Malformed CLD response", e9);
            c1273eo.f18601o.c("MalformedJson");
            C0813Kn c0813Kn = c1273eo.f18598l;
            synchronized (c0813Kn) {
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15710R1)).booleanValue()) {
                    HashMap mapE = c0813Kn.e();
                    mapE.put("action", "aaia");
                    mapE.put("aair", "MalformedJson");
                    c0813Kn.f14404b.add(mapE);
                }
                c1273eo.f18591e.c(e9);
                p083k3.l.f25980A.f25987g.i("AdapterInitializer.updateAdapterStatus", e9);
                Uw uw = c1273eo.f18602p;
                owH.d(e9);
                owH.e(false);
                uw.b(owH.zzm());
            }
        }
    }

    private final void b() {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        C1998so c1998so = (C1998so) this.f18242I;
        String str = (String) this.f18241H;
        C1895qo c1895qo = c1998so.f20977I;
        synchronized (c1895qo) {
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put("platform", "ANDROID");
                    if (!TextUtils.isEmpty(c1895qo.f20627k)) {
                        jSONObject.put("sdkVersion", "afma-sdk-a-v" + c1895qo.f20627k);
                    }
                    jSONObject.put("internalSdkVersion", c1895qo.f20625i);
                    jSONObject.put("osVersion", Build.VERSION.RELEASE);
                    jSONObject.put("adapters", c1895qo.f20620d.a());
                    J7 j8 = Q7.H8;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        String str2 = p083k3.l.f25980A.f25987g.f19811g;
                        if (!TextUtils.isEmpty(str2)) {
                            jSONObject.put("plugin", str2);
                        }
                    }
                    long j9 = c1895qo.f20633q;
                    p083k3.l lVar = p083k3.l.f25980A;
                    lVar.f25990j.getClass();
                    if (j9 < System.currentTimeMillis() / 1000) {
                        c1895qo.f20631o = "{}";
                    }
                    jSONObject.put("networkExtras", c1895qo.f20631o);
                    jSONObject.put("adSlots", c1895qo.h());
                    jSONObject.put("appInfo", c1895qo.f20621e.b());
                    String str3 = lVar.f25987g.d().y().f18944e;
                    if (!TextUtils.isEmpty(str3)) {
                        jSONObject.put("cld", new JSONObject(str3));
                    }
                    if (((Boolean) c3099q.f26627c.a(Q7.x8)).booleanValue() && (jSONObject2 = c1895qo.f20632p) != null) {
                        p120p3.h.b("Server data: " + jSONObject2.toString());
                        jSONObject.put("serverData", c1895qo.f20632p);
                    }
                    if (((Boolean) c3099q.f26627c.a(Q7.w8)).booleanValue()) {
                        jSONObject.put("openAction", c1895qo.f20638v);
                        jSONObject.put("gesture", c1895qo.f20634r);
                    }
                    jSONObject.put("isGamRegisteredTestDevice", lVar.f25993m.h());
                    p120p3.d dVar = C3097p.f26618f.f26619a;
                    jSONObject.put("isSimulator", p120p3.d.m());
                    if (((Boolean) c3099q.f26627c.a(Q7.J8)).booleanValue()) {
                        jSONObject.put("uiStorage", new JSONObject(c1895qo.f20640x));
                    }
                    if (!TextUtils.isEmpty((CharSequence) c3099q.f26627c.a(Q7.L8))) {
                        jSONObject.put("gmaDisk", c1895qo.f20624h.f20778a);
                    }
                    if (!TextUtils.isEmpty((CharSequence) c3099q.f26627c.a(Q7.K8))) {
                        jSONObject.put("userDisk", c1895qo.f20623g.f20778a);
                    }
                } catch (JSONException e8) {
                    p083k3.l.f25980A.f25987g.h("Inspector.toJson", e8);
                    p120p3.h.h("Ad inspector encountered an error", e8);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObject.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        c1998so.f20978J.d("window.inspectorInfo", jSONObject.toString());
    }

    private final void c() {
        C0860Ob c0860Ob;
        Uw uw = (Uw) this.f18242I;
        Qw qw = (Qw) this.f18241H;
        uw.getClass();
        synchronized (Uw.f16908Q) {
            try {
                if (!uw.f16917N) {
                    uw.f16917N = true;
                    if (Uw.a()) {
                        try {
                            p113o3.O o4 = p083k3.l.f25980A.f25983c;
                            uw.f16913J = p113o3.O.E(uw.f16910G);
                        } catch (RemoteException | RuntimeException e8) {
                            p083k3.l.f25980A.f25987g.i("CuiMonitor.gettingAppIdFromManifest", e8);
                        }
                        J3.f fVar = J3.f.f4145b;
                        Context context = uw.f16910G;
                        fVar.getClass();
                        uw.f16914K = J3.f.a(context);
                        J7 j8 = Q7.Y7;
                        C3099q c3099q = C3099q.f26624d;
                        int iIntValue = ((Integer) c3099q.f26627c.a(j8)).intValue();
                        if (((Boolean) c3099q.f26627c.a(Q7.eb)).booleanValue()) {
                            long j9 = iIntValue;
                            AbstractC1988se.f20909d.scheduleWithFixedDelay(uw, j9, j9, TimeUnit.MILLISECONDS);
                        } else {
                            long j10 = iIntValue;
                            AbstractC1988se.f20909d.scheduleAtFixedRate(uw, j10, j10, TimeUnit.MILLISECONDS);
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (Uw.a() && qw != null) {
            synchronized (Uw.f16907P) {
                try {
                    int iA = ((C1076ax) uw.f16912I.f20255H).A();
                    J7 j11 = Q7.Z7;
                    C3099q c3099q2 = C3099q.f26624d;
                    if (iA >= ((Integer) c3099q2.f26627c.a(j11)).intValue()) {
                        return;
                    }
                    Vw vwA = Ww.A();
                    int i8 = qw.f16181m;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzd = i8 - 2;
                    boolean z7 = qw.f16170b;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzk = z7;
                    long j12 = qw.f16169a;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzl = j12;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzp = 1;
                    String str = uw.f16911H.f28196G;
                    vwA.d();
                    Ww.L((Ww) vwA.f20255H, str);
                    String str2 = uw.f16913J;
                    vwA.d();
                    Ww.M((Ww) vwA.f20255H, str2);
                    String str3 = Build.VERSION.RELEASE;
                    vwA.d();
                    Ww.N((Ww) vwA.f20255H, str3);
                    int i9 = Build.VERSION.SDK_INT;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzA = i9;
                    int i10 = qw.f16183o;
                    vwA.d();
                    Ww.W((Ww) vwA.f20255H, i10);
                    int i11 = qw.f16171c;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzG = i11;
                    long j13 = uw.f16914K;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzH = j13;
                    int i12 = qw.f16182n;
                    vwA.d();
                    Ww.X((Ww) vwA.f20255H, i12);
                    String str4 = qw.f16172d;
                    vwA.d();
                    Ww.S((Ww) vwA.f20255H, str4);
                    String str5 = qw.f16173e;
                    vwA.d();
                    Ww.T((Ww) vwA.f20255H, str5);
                    String str6 = qw.f16174f;
                    vwA.d();
                    Ww.B((Ww) vwA.f20255H, str6);
                    C1790on c1790onA = uw.f16915L.a(qw.f16174f);
                    String string = (c1790onA == null || (c0860Ob = c1790onA.f20332b) == null) ? HttpUrl.FRAGMENT_ENCODE_SET : c0860Ob.toString();
                    vwA.d();
                    ((Ww) vwA.f20255H).zzW = string;
                    String str7 = qw.f16175g;
                    vwA.d();
                    Ww.D((Ww) vwA.f20255H, str7);
                    int i13 = qw.f16176h;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzae = AbstractC2090uc.a(i13);
                    String str8 = qw.f16179k;
                    vwA.d();
                    Ww.G((Ww) vwA.f20255H, str8);
                    String str9 = qw.f16177i;
                    vwA.d();
                    Ww.E((Ww) vwA.f20255H, str9);
                    String str10 = qw.f16178j;
                    vwA.d();
                    Ww.F((Ww) vwA.f20255H, str10);
                    long j14 = qw.f16180l;
                    vwA.d();
                    ((Ww) vwA.f20255H).zzm = j14;
                    if (((Boolean) c3099q2.f26627c.a(Q7.d8)).booleanValue()) {
                        AbstractCollection abstractCollection = uw.f16916M;
                        vwA.d();
                        Ww.P((Ww) vwA.f20255H, abstractCollection);
                    }
                    Xw xw = uw.f16912I;
                    Yw ywA = Zw.A();
                    ywA.d();
                    Zw.B((Zw) ywA.f20255H, (Ww) vwA.b());
                    xw.d();
                    C1076ax.D((C1076ax) xw.f20255H, (Zw) ywA.b());
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Runnable
    public final void run() {
        Throwable thB;
        long j8;
        boolean z7;
        InterfaceC1078az yy = null;
        long j9 = -9223372036854775807L;
        boolean z8 = false;
        int i8 = 1;
        switch (this.f18240G) {
            case 0:
                a();
                return;
            case 1:
                b();
                return;
            case 2:
                EO.b(((DO) this.f18241H).f12830a, ((Kq) this.f18242I).b());
                return;
            case 3:
                Bx bx = (Bx) this.f18242I;
                EnumC2371zx enumC2371zx = EnumC2371zx.f22235G;
                View view = (View) this.f18241H;
                for (C2267xx c2267xx : bx.f12519c.values()) {
                    if (!c2267xx.f21961f) {
                        c2267xx.f21957b.a(view, enumC2371zx);
                    }
                }
                bx.f12520d.a(view, enumC2371zx);
                return;
            case 4:
                Bx bx2 = (Bx) this.f18242I;
                C0864Of c0864Of = (C0864Of) this.f18241H;
                Iterator it = bx2.f12519c.values().iterator();
                while (it.hasNext()) {
                    ((C2267xx) it.next()).a();
                }
                Timer timer = new Timer();
                timer.schedule(new C1379gq(bx2, c0864Of, timer), 1000L);
                return;
            case 5:
                Eq eq = (Eq) this.f18242I;
                InterfaceC0715Ef interfaceC0715Ef = (InterfaceC0715Ef) this.f18241H;
                eq.getClass();
                interfaceC0715Ef.N0();
                BinderC0948Uf binderC0948UfZzq = interfaceC0715Ef.zzq();
                p090l3.Y0 y7 = eq.f13225d.f17674a;
                if (y7 != null && binderC0948UfZzq != null) {
                    binderC0948UfZzq.B3(y7);
                }
                if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15788b1)).booleanValue() || interfaceC0715Ef.isAttachedToWindow()) {
                    return;
                }
                interfaceC0715Ef.onPause();
                interfaceC0715Ef.p0();
                return;
            case 6:
                ((InterfaceC1993sj) ((p004a3.b) ((C1950rs) ((Yu) this.f18242I).f17673L).f20798J).f8652J).y((C3117z0) this.f18241H);
                return;
            case 7:
                ((C1126bv) ((Yu) this.f18242I).f17673L).f18126J.y((C3117z0) this.f18241H);
                return;
            case 8:
                ((Jv) ((Yu) this.f18242I).f17673L).f14242J.y((C3117z0) this.f18241H);
                return;
            case 9:
                InputStream inputStream = (InputStream) this.f18242I;
                try {
                    try {
                        ParcelFileDescriptor.AutoCloseOutputStream autoCloseOutputStream = new ParcelFileDescriptor.AutoCloseOutputStream((ParcelFileDescriptor) this.f18241H);
                        try {
                            AbstractC2987b.f(inputStream, autoCloseOutputStream, false);
                            autoCloseOutputStream.close();
                            inputStream.close();
                            return;
                        } catch (Throwable th) {
                            try {
                                autoCloseOutputStream.close();
                                throw th;
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                                throw th;
                            }
                        }
                    } catch (Throwable th3) {
                        if (inputStream == null) {
                            throw th3;
                        }
                        try {
                            inputStream.close();
                            throw th3;
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                            throw th3;
                        }
                    }
                } catch (IOException unused) {
                    return;
                }
            case 10:
                Hw hw = ((Gw) ((C1950rs) this.f18242I).f20800L).f13667c;
                Fw fw = (Fw) this.f18241H;
                C0720Ek c0720Ek = (C0720Ek) hw;
                c0720Ek.getClass();
                c0720Ek.Z0(new Jw(fw, 2));
                return;
            case 11:
                c();
                return;
            case 12:
                ((C1488ix) this.f18242I).f19392c.c((String) this.f18241H);
                return;
            case 13:
                Cw.T1((WebView) this.f18242I, (String) this.f18241H);
                return;
            case 14:
                ((WebView) this.f18242I).destroy();
                return;
            case 15:
                ((p052g4.i) this.f18241H).b(Gy.a((Context) this.f18242I, "GLAS"));
                return;
            case 16:
                IBinder iBinder = (IBinder) this.f18241H;
                int i9 = Zy.f17817G;
                if (iBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.play.core.lmd.protocol.ILmdOverlayService");
                    yy = iInterfaceQueryLocalInterface instanceof InterfaceC1078az ? (InterfaceC1078az) iInterfaceQueryLocalInterface : new Yy(iBinder, "com.google.android.play.core.lmd.protocol.ILmdOverlayService", 0);
                }
                ServiceConnectionC1802oz serviceConnectionC1802oz = (ServiceConnectionC1802oz) this.f18242I;
                C1854pz c1854pz = serviceConnectionC1802oz.f20361a;
                c1854pz.f20517j = yy;
                c1854pz.f20510c.d("linkToDeath", new Object[0]);
                try {
                    IInterface iInterface = serviceConnectionC1802oz.f20361a.f20517j;
                    iInterface.getClass();
                    iInterface.asBinder().linkToDeath(serviceConnectionC1802oz.f20361a.f20515h, 0);
                    break;
                } catch (RemoteException e8) {
                    serviceConnectionC1802oz.f20361a.f20510c.c(e8, "linkToDeath failed", new Object[0]);
                }
                C1854pz c1854pz2 = serviceConnectionC1802oz.f20361a;
                c1854pz2.f20513f = false;
                synchronized (c1854pz2.f20512e) {
                    try {
                        Iterator it2 = serviceConnectionC1802oz.f20361a.f20512e.iterator();
                        while (it2.hasNext()) {
                            ((Runnable) it2.next()).run();
                        }
                        serviceConnectionC1802oz.f20361a.f20512e.clear();
                    } catch (Throwable th5) {
                        throw th5;
                    }
                    break;
                }
                return;
            case 17:
                ((MB) this.f18242I).r((AbstractC1814pA) this.f18241H);
                return;
            case 18:
                Object obj = this.f18242I;
                Object obj2 = (Future) obj;
                boolean z9 = obj2 instanceof AbstractC2075uC;
                Object obj3 = this.f18241H;
                if (z9 && (thB = ((AbstractC2075uC) obj2).b()) != null) {
                    ((InterfaceC1195dC) obj3).zza(thB);
                    return;
                }
                try {
                    ((InterfaceC1195dC) obj3).mo3zzb(Cw.f2((Future) obj));
                    return;
                } catch (ExecutionException e9) {
                    ((InterfaceC1195dC) obj3).zza(e9.getCause());
                    return;
                } catch (Throwable th6) {
                    ((InterfaceC1195dC) obj3).zza(th6);
                    return;
                }
            case 19:
                C2135vK c2135vK = (C2135vK) this.f18242I;
                B0.U u7 = (B0.U) this.f18241H;
                int i10 = c2135vK.f21506x - u7.f830b;
                c2135vK.f21506x = i10;
                if (u7.f833e) {
                    c2135vK.f21507y = u7.f831c;
                    c2135vK.f21508z = true;
                }
                if (i10 == 0) {
                    AbstractC0774Ie abstractC0774Ie = ((RK) u7.f834f).f16239a;
                    if (!c2135vK.f21479P.f16239a.o() && abstractC0774Ie.o()) {
                        c2135vK.f21480Q = -1;
                        c2135vK.f21481R = 0L;
                    }
                    if (!abstractC0774Ie.o()) {
                        List listAsList = Arrays.asList(((WK) abstractC0774Ie).f17206h);
                        p113o3.r.M(listAsList.size() == c2135vK.f21496n.size());
                        for (int i11 = 0; i11 < listAsList.size(); i11++) {
                            ((C2083uK) c2135vK.f21496n.get(i11)).f21217b = (AbstractC0774Ie) listAsList.get(i11);
                        }
                    }
                    if (c2135vK.f21508z) {
                        if (((RK) u7.f834f).f16240b.equals(c2135vK.f21479P.f16240b) && ((RK) u7.f834f).f16242d == c2135vK.f21479P.f16256r) {
                            i8 = 0;
                        }
                        if (i8 != 0) {
                            if (abstractC0774Ie.o() || ((RK) u7.f834f).f16240b.b()) {
                                j9 = ((RK) u7.f834f).f16242d;
                            } else {
                                RK rk = (RK) u7.f834f;
                                C2190wN c2190wN = rk.f16240b;
                                j9 = rk.f16242d;
                                abstractC0774Ie.n(c2190wN.f21690a, c2135vK.f21495m);
                            }
                        }
                        j8 = j9;
                        z7 = i8;
                    } else {
                        j8 = -9223372036854775807L;
                        z7 = 0;
                    }
                    c2135vK.f21508z = false;
                    c2135vK.q((RK) u7.f834f, 1, z7, c2135vK.f21507y, j8, -1);
                    return;
                }
                return;
            case 20:
                C1773oL c1773oL = (C1773oL) this.f18242I;
                c1773oL.getClass();
                int i12 = Et.f13234a;
                C2032tL c2032tL = (C2032tL) ((SurfaceHolderCallbackC1979sK) ((PL) c1773oL.f20260I)).f20880G.f21498p;
                c2032tL.i(c2032tL.l(), 1012, new C1301fF(28, yy));
                return;
            case 21:
                C1773oL c1773oL2 = ((C1722nM) this.f18242I).f20167a.f20273y0;
                GH gh = (GH) this.f18241H;
                Handler handler = (Handler) c1773oL2.f20259H;
                if (handler != null) {
                    handler.post(new NL(c1773oL2, gh, i8));
                    return;
                }
                return;
            default:
                KN kn = (KN) this.f18242I;
                Y y8 = (Y) this.f18241H;
                kn.f14359d0 = kn.f14351V == null ? y8 : new P(-9223372036854775807L, 0L);
                kn.f14360e0 = y8.zza();
                if (!kn.f14366k0 && y8.zza() == -9223372036854775807L) {
                    z8 = true;
                }
                kn.f14361f0 = z8;
                kn.f14362g0 = true == z8 ? 7 : 1;
                if (kn.f14355Z) {
                    kn.f14341L.s(kn.f14360e0, y8.zzh(), kn.f14361f0);
                    return;
                } else {
                    kn.q();
                    return;
                }
        }
    }

    public final String toString() {
        switch (this.f18240G) {
            case 18:
                p004a3.b bVar = new p004a3.b(RunnableC1170co.class.getSimpleName(), 0);
                InterfaceC1195dC interfaceC1195dC = (InterfaceC1195dC) this.f18241H;
                C0871Om c0871Om = new C0871Om(22, (Object) null);
                ((C0871Om) bVar.f8652J).f15197I = c0871Om;
                bVar.f8652J = c0871Om;
                c0871Om.f15196H = interfaceC1195dC;
                return bVar.toString();
            default:
                return super.toString();
        }
    }

    public RunnableC1170co(WebView webView, String str) {
        this.f18240G = 13;
        this.f18242I = webView;
        this.f18241H = str;
    }

    public RunnableC1170co(Rx rx) {
        this.f18240G = 14;
        this.f18241H = rx;
        this.f18242I = rx.f16377e;
    }
}
