package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Pair;
import android.view.View;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
import p021c4.C0621y;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rs, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1950rs implements InterfaceC1795os, p083k3.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f20795G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Object f20796H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f20797I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Object f20798J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f20799K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Object f20800L;

    public /* synthetic */ C1950rs() {
        this.f20796H = null;
        this.f20797I = null;
        this.f20795G = null;
        this.f20798J = null;
        this.f20799K = null;
        this.f20800L = VC.f16973d;
    }

    public static String d(C1950rs c1950rs) {
        String str = (String) C3099q.f26624d.f26627c.a(Q7.m9);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("objectId", (Long) c1950rs.f20796H);
            jSONObject.put("eventCategory", (String) c1950rs.f20797I);
            jSONObject.putOpt("event", (String) c1950rs.f20795G);
            jSONObject.putOpt("errorCode", (Integer) c1950rs.f20798J);
            jSONObject.putOpt("rewardType", (String) c1950rs.f20799K);
            jSONObject.putOpt("rewardAmount", (Integer) c1950rs.f20800L);
        } catch (JSONException unused) {
            p120p3.h.g("Could not convert parameters to JSON.");
        }
        return A0.O.B(str, "(\"h5adsEvent\",", jSONObject.toString(), ");");
    }

    public static /* bridge */ /* synthetic */ void p(C1950rs c1950rs) {
        synchronized (c1950rs.f20798J) {
            try {
                C1706n6 c1706n6 = (C1706n6) c1950rs.f20799K;
                if (c1706n6 == null) {
                    return;
                }
                if (c1706n6.isConnected() || ((C1706n6) c1950rs.f20799K).isConnecting()) {
                    ((C1706n6) c1950rs.f20799K).disconnect();
                }
                c1950rs.f20799K = null;
                c1950rs.f20800L = null;
                Binder.flushPendingCommands();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean a() {
        p048g0.a aVar = (p048g0.a) this.f20800L;
        return aVar != null && aVar.f25292a;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1795os
    public final boolean b(p090l3.b1 b1Var, String str, Q3.b bVar, InterfaceC1743ns interfaceC1743ns) {
        final int i8 = 1;
        final int i9 = 0;
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        if (p113o3.O.f((Context) this.f20795G) && b1Var.f26535Y == null) {
            p120p3.h.d("Failed to load the ad because app ID is missing.");
            ((AbstractC1317fg) this.f20797I).a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qs

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C1950rs f20647H;

                {
                    this.f20647H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i10 = i9;
                    C1950rs c1950rs = this.f20647H;
                    switch (i10) {
                        case 0:
                            ((InterfaceC1993sj) ((p004a3.b) c1950rs.f20798J).f8652J).y(p113o3.r.H(4, null, null));
                            break;
                        default:
                            ((InterfaceC1993sj) ((p004a3.b) c1950rs.f20798J).f8652J).y(p113o3.r.H(6, null, null));
                            break;
                    }
                }
            });
            return false;
        }
        if (str == null) {
            p120p3.h.d("Ad unit ID should not be null for NativeAdLoader.");
            ((AbstractC1317fg) this.f20797I).a().execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.qs

                /* JADX INFO: renamed from: H, reason: collision with root package name */
                public final /* synthetic */ C1950rs f20647H;

                {
                    this.f20647H = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    int i10 = i8;
                    C1950rs c1950rs = this.f20647H;
                    switch (i10) {
                        case 0:
                            ((InterfaceC1993sj) ((p004a3.b) c1950rs.f20798J).f8652J).y(p113o3.r.H(4, null, null));
                            break;
                        default:
                            ((InterfaceC1993sj) ((p004a3.b) c1950rs.f20798J).f8652J).y(p113o3.r.H(6, null, null));
                            break;
                    }
                }
            });
            return false;
        }
        AbstractC2987b.f0((Context) this.f20795G, b1Var.f26522L);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.h8)).booleanValue() && b1Var.f26522L) {
            ((C1895qo) ((C0671Bg) ((AbstractC1317fg) this.f20797I)).f12467w.zzb()).e(true);
        }
        int i10 = ((C1847ps) bVar).f20496c;
        lVar.f25990j.getClass();
        Long lValueOf = Long.valueOf(System.currentTimeMillis());
        Bundle bundleE = U2.m.e(new Pair("api-call", lValueOf), new Pair("dynamite-enter", lValueOf));
        Xv xv = (Xv) this.f20796H;
        xv.f17530a = b1Var;
        xv.f17549t = bundleE;
        xv.f17542m = i10;
        Context context = (Context) this.f20795G;
        Yv yvA = xv.a();
        Ow owO = U4.a.o(context, com.google.android.gms.internal.measurement.H1.M(yvA), 8, b1Var);
        p090l3.U u7 = yvA.f17687n;
        if (u7 != null) {
            ((C1433hs) ((p004a3.b) this.f20798J).f8651I).i(u7);
        }
        C0671Bg c0671Bg = ((C0671Bg) ((AbstractC1317fg) this.f20797I)).f12432c;
        C1217dj c1217dj = new C1217dj();
        c1217dj.f18346a = (Context) this.f20795G;
        c1217dj.f18347b = yvA;
        C1217dj c1217dj2 = new C1217dj(c1217dj);
        C1994sk c1994sk = new C1994sk();
        c1994sk.c((C1433hs) ((p004a3.b) this.f20798J).f8651I, ((AbstractC1317fg) this.f20797I).a());
        C2046tk c2046tk = new C2046tk(c1994sk);
        p004a3.b bVar2 = (p004a3.b) this.f20798J;
        C1632ll c1632ll = new C1632ll((C0856Nl) bVar2.f8650H, ((C1433hs) bVar2.f8651I).c());
        Tw tw = null;
        C2094ug c2094ug = new C2094ug(c0671Bg, new C0807Kh(null), c1632ll, new C0621y(4), c2046tk, c1217dj2, new C2053tr(), null, null);
        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue()) {
            tw = (Tw) c2094ug.f21296e.zzb();
            tw.i(8);
            tw.b(b1Var.f26532V);
            tw.f(b1Var.f26529S);
        }
        Tw tw2 = tw;
        ((C1437hw) ((C0671Bg) ((AbstractC1317fg) this.f20797I)).f12412J.zzb()).c(1);
        AbstractC1317fg abstractC1317fg = (AbstractC1317fg) this.f20797I;
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) ((C0671Bg) abstractC1317fg).f12436e.zzb();
        C0823Li c0823Li = (C0823Li) c2094ug.f21343y0.zzb();
        Fw fwA = c0823Li.a(c0823Li.b());
        p048g0.a aVar = new p048g0.a(fwA, c1936re, scheduledExecutorService);
        this.f20800L = aVar;
        Cw.h2(fwA, new C0673Bi(aVar, new Yu(this, interfaceC1743ns, tw2, owO, c2094ug, 5), i9), c1936re);
        return true;
    }

    public final Fw c() {
        Object obj = this.f20796H;
        String str = (String) this.f20797I;
        if (str == null) {
            ((Kw) ((Gw) this.f20800L)).getClass();
            str = ((Iw) obj).f14093G;
        }
        Fw fw = new Fw(obj, str, (D4.b) this.f20799K);
        C0720Ek c0720Ek = (C0720Ek) ((Gw) this.f20800L).f13667c;
        c0720Ek.getClass();
        c0720Ek.Z0(new Jw(fw, 1));
        D4.b bVar = (D4.b) this.f20795G;
        RunnableC1170co runnableC1170co = new RunnableC1170co(10, this, fw);
        C1936re c1936re = AbstractC1988se.f20911f;
        bVar.a(runnableC1170co, c1936re);
        Cw.h2(fw, new C0871Om(this, fw, 15), c1936re);
        return fw;
    }

    public final void e(int i8) {
        if (i8 != 16 && i8 != 24 && i8 != 32) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported", Integer.valueOf(i8)));
        }
        this.f20796H = Integer.valueOf(i8);
    }

    public final C1654m6 f(C1758o6 c1758o6) {
        synchronized (this.f20798J) {
            if (((C1810p6) this.f20800L) == null) {
                return new C1654m6();
            }
            try {
                if (((C1706n6) this.f20799K).d()) {
                    C1810p6 c1810p6 = (C1810p6) this.f20800L;
                    Parcel parcelJ0 = c1810p6.j0();
                    A5.c(parcelJ0, c1758o6);
                    Parcel parcelN2 = c1810p6.n2(2, parcelJ0);
                    C1654m6 c1654m6 = (C1654m6) A5.a(parcelN2, C1654m6.CREATOR);
                    parcelN2.recycle();
                    return c1654m6;
                }
                C1810p6 c1810p7 = (C1810p6) this.f20800L;
                Parcel parcelJ1 = c1810p7.j0();
                A5.c(parcelJ1, c1758o6);
                Parcel parcelN3 = c1810p7.n2(1, parcelJ1);
                C1654m6 c1654m7 = (C1654m6) A5.a(parcelN3, C1654m6.CREATOR);
                parcelN3.recycle();
                return c1654m7;
            } catch (RemoteException e8) {
                p120p3.h.e("Unable to call into cache service.", e8);
                return new C1654m6();
            }
        }
    }

    public final C1950rs g(Iw iw) {
        return ((Gw) this.f20800L).b(c(), iw);
    }

    public final void h(int i8) {
        if (i8 < 16) {
            throw new InvalidAlgorithmParameterException(String.format("Invalid key size in bytes %d; HMAC key must be at least 16 bytes", Integer.valueOf(i8)));
        }
        this.f20797I = Integer.valueOf(i8);
    }

    public final synchronized C1706n6 i(C1550k6 c1550k6, C1602l6 c1602l6) {
        return new C1706n6((Context) this.f20795G, p083k3.l.f25980A.f25998r.j(), c1550k6, c1602l6, 0);
    }

    public final void j(int i8) {
        if (i8 < 12 || i8 > 16) {
            throw new GeneralSecurityException(String.format("Invalid IV size in bytes %d; IV size must be between 12 and 16 bytes", Integer.valueOf(i8)));
        }
        this.f20795G = Integer.valueOf(i8);
    }

    public final C1950rs k(Dw dw) {
        return m(new No(dw, 18));
    }

    public final void l(int i8) {
        if (i8 < 10) {
            throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; must be at least 10 bytes", Integer.valueOf(i8)));
        }
        this.f20798J = Integer.valueOf(i8);
    }

    public final C1950rs m(RB rb) {
        return n(rb, ((Gw) this.f20800L).f13665a);
    }

    public final C1950rs n(RB rb, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC) {
        return new C1950rs((Gw) this.f20800L, this.f20796H, (String) this.f20797I, (D4.b) this.f20795G, (List) this.f20798J, Cw.d2((D4.b) this.f20799K, rb, interfaceExecutorServiceC1504jC));
    }

    public final WC o() {
        if (((Integer) this.f20796H) == null) {
            throw new GeneralSecurityException("AES key size is not set");
        }
        if (((Integer) this.f20797I) == null) {
            throw new GeneralSecurityException("HMAC key size is not set");
        }
        if (((Integer) this.f20795G) == null) {
            throw new GeneralSecurityException("iv size is not set");
        }
        Integer num = (Integer) this.f20798J;
        if (num == null) {
            throw new GeneralSecurityException("tag size is not set");
        }
        if (((UC) this.f20799K) == null) {
            throw new GeneralSecurityException("hash type is not set");
        }
        if (((VC) this.f20800L) == null) {
            throw new GeneralSecurityException("variant is not set");
        }
        int iIntValue = num.intValue();
        UC uc = (UC) this.f20799K;
        if (uc == UC.f16811b) {
            if (iIntValue > 20) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 20 bytes for SHA1", num));
            }
        } else if (uc == UC.f16812c) {
            if (iIntValue > 28) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 28 bytes for SHA224", num));
            }
        } else if (uc == UC.f16813d) {
            if (iIntValue > 32) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 32 bytes for SHA256", num));
            }
        } else if (uc == UC.f16814e) {
            if (iIntValue > 48) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 48 bytes for SHA384", num));
            }
        } else {
            if (uc != UC.f16815f) {
                throw new GeneralSecurityException("unknown hash type; must be SHA1, SHA224, SHA256, SHA384 or SHA512");
            }
            if (iIntValue > 64) {
                throw new GeneralSecurityException(String.format("Invalid tag size in bytes %d; can be at most 64 bytes for SHA512", num));
            }
        }
        return new WC(((Integer) this.f20796H).intValue(), ((Integer) this.f20797I).intValue(), ((Integer) this.f20795G).intValue(), ((Integer) this.f20798J).intValue(), (VC) this.f20800L, (UC) this.f20799K);
    }

    public final C1950rs q(long j8, TimeUnit timeUnit) {
        return new C1950rs((Gw) this.f20800L, this.f20796H, (String) this.f20797I, (D4.b) this.f20795G, (List) this.f20798J, Cw.e2((D4.b) this.f20799K, j8, timeUnit, ((Gw) this.f20800L).f13666b));
    }

    public final void r(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.f20798J) {
            try {
                if (((Context) this.f20795G) != null) {
                    return;
                }
                this.f20795G = context.getApplicationContext();
                J7 j8 = Q7.f15728T3;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                    s();
                } else {
                    if (((Boolean) c3099q.f26627c.a(Q7.f15720S3)).booleanValue()) {
                        p083k3.l.f25980A.f25986f.n(new C1498j6(this));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void s() {
        synchronized (this.f20798J) {
            try {
                if (((Context) this.f20795G) != null && ((C1706n6) this.f20799K) == null) {
                    C1706n6 c1706n6I = i(new C1550k6(this), new C1602l6(this));
                    this.f20799K = c1706n6I;
                    c1706n6I.checkAvailabilityAndConnect();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p083k3.e
    public final synchronized void zza(View view) {
        if (((AtomicBoolean) this.f20800L).compareAndSet(false, true)) {
            ((C0672Bh) this.f20799K).zzr();
            ((C0840Mk) this.f20798J).a1(view);
        }
    }

    @Override // p083k3.e
    public final void zzb() {
        if (((AtomicBoolean) this.f20800L).get()) {
            ((C1734nj) this.f20796H).x();
        }
    }

    @Override // p083k3.e
    public final void zzc() {
        if (((AtomicBoolean) this.f20800L).get()) {
            ((C2357zj) this.f20797I).zza();
            ((C0883Pk) this.f20795G).zza();
        }
    }

    public C1950rs(Gw gw, Object obj, String str, D4.b bVar, List list, D4.b bVar2) {
        this.f20800L = gw;
        this.f20796H = obj;
        this.f20797I = str;
        this.f20795G = bVar;
        this.f20798J = list;
        this.f20799K = bVar2;
    }

    public /* synthetic */ C1950rs(String str) {
        this.f20797I = str;
    }
}
