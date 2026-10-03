package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;
import p090l3.C3099q;
import p090l3.C3117z0;
import p090l3.InterfaceC3086j0;

/* JADX INFO: loaded from: classes.dex */
public final class Yu implements InterfaceC1195dC, p083k3.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f17668G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Object f17669H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Object f17670I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f17671J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f17672K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Object f17673L;

    public Yu(C2224x5 c2224x5, File file, File file2, File file3) {
        this.f17668G = 7;
        this.f17669H = c2224x5;
        this.f17670I = file;
        this.f17671J = file3;
        this.f17672K = file2;
    }

    private final void a(Throwable th) {
        InterfaceC1165cj interfaceC1165cjA;
        Tw tw;
        p120p3.h.e("App open ad failed to load", th);
        AbstractC0747Gh abstractC0747Gh = (AbstractC0747Gh) ((C1126bv) this.f17673L).f18127K.zzd();
        C3117z0 c3117z0V = abstractC0747Gh == null ? p113o3.r.v(th, null) : p113o3.r.v(th, ((C0716Eg) abstractC0747Gh).zzb().f14542l);
        synchronized (((C1126bv) this.f17673L)) {
            try {
                Object obj = this.f17673L;
                ((C1126bv) obj).f18132P = null;
                if (abstractC0747Gh != null) {
                    ((C1941rj) ((C0716Eg) abstractC0747Gh).f13150r0.zzb()).y(c3117z0V);
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.x7)).booleanValue()) {
                        ((C1126bv) this.f17673L).f18124H.execute(new RunnableC1170co(7, this, c3117z0V));
                    }
                } else {
                    ((C1126bv) obj).f18126J.y(c3117z0V);
                    C0701Dg c0701DgD = ((C1126bv) this.f17673L).d((Zu) this.f17672K);
                    switch (c0701DgD.f12838a) {
                        case 0:
                            interfaceC1165cjA = c0701DgD.a();
                            break;
                        default:
                            interfaceC1165cjA = c0701DgD.b();
                            break;
                    }
                    ((C0716Eg) ((AbstractC0747Gh) interfaceC1165cjA)).zzb().f14536f.zzh();
                }
                AbstractC2987b.s0("AppOpenAdLoader.onFailure", c3117z0V.f26629G, th);
                ((InterfaceC1743ns) this.f17669H).zza();
                if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                    Uw uw = ((C1126bv) this.f17673L).f18130N;
                    Ow ow = (Ow) this.f17671J;
                    ow.g(c3117z0V);
                    ow.d(th);
                    ow.e(false);
                    uw.b(ow.zzm());
                } else {
                    tw.c(c3117z0V);
                    Ow ow2 = (Ow) this.f17671J;
                    ow2.d(th);
                    ow2.e(false);
                    tw.a(ow2);
                    tw.h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void b(Throwable th) {
        Tw tw;
        p120p3.h.e("Rewarded ad failed to load", th);
        C0893Qg c0893Qg = (C0893Qg) ((Jv) this.f17673L).f14243K.zzd();
        C3117z0 c3117z0V = c0893Qg == null ? p113o3.r.v(th, null) : p113o3.r.v(th, c0893Qg.zzb().f14542l);
        synchronized (((Jv) this.f17673L)) {
            try {
                if (c0893Qg != null) {
                    ((C1941rj) c0893Qg.f16043A.zzb()).y(c3117z0V);
                    ((Jv) this.f17673L).f14240H.execute(new RunnableC1170co(8, this, c3117z0V));
                } else {
                    ((Jv) this.f17673L).f14242J.y(c3117z0V);
                    ((Jv) this.f17673L).c((Iv) this.f17672K).b().zzb().f14536f.zzh();
                }
                AbstractC2987b.s0("RewardedAdLoader.onFailure", c3117z0V.f26629G, th);
                ((InterfaceC1743ns) this.f17669H).zza();
                if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                    Uw uw = ((Jv) this.f17673L).f14245M;
                    Ow ow = (Ow) this.f17671J;
                    ow.g(c3117z0V);
                    ow.d(th);
                    ow.e(false);
                    uw.b(ow.zzm());
                } else {
                    tw.c(c3117z0V);
                    Ow ow2 = (Ow) this.f17671J;
                    ow2.d(th);
                    ow2.e(false);
                    tw.a(ow2);
                    tw.h();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void c(Object obj) {
        Tw tw;
        AbstractC2252xi abstractC2252xi = (AbstractC2252xi) obj;
        synchronized (((C1950rs) this.f17673L)) {
            try {
                ((C1269ek) abstractC2252xi.f21918g.f18546G.f15180H).f18547H = (C1433hs) ((p004a3.b) ((C1950rs) this.f17673L).f20798J).f8651I;
                ((InterfaceC1743ns) this.f17669H).mo3zzb(abstractC2252xi);
                ((AbstractC1317fg) ((C1950rs) this.f17673L).f20797I).a().execute(new RunnableC1026Zn(this, 7));
                if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                    Uw uw = (Uw) ((C1950rs) this.f17673L).f20799K;
                    Ow ow = (Ow) this.f17671J;
                    ow.c(abstractC2252xi.f21912a.f16755b);
                    ow.s(abstractC2252xi.f21917f.f19824G);
                    ow.e(true);
                    uw.b(ow.zzm());
                } else {
                    tw.g(abstractC2252xi.f21912a.f16755b);
                    tw.e(abstractC2252xi.f21917f.f19824G);
                    Ow ow2 = (Ow) this.f17671J;
                    ow2.e(true);
                    tw.a(ow2);
                    tw.h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void d(Object obj) {
        Tw tw;
        AbstractC2252xi abstractC2252xi = (AbstractC2252xi) obj;
        synchronized (((C1126bv) this.f17673L)) {
            try {
                ((C1126bv) this.f17673L).f18132P = null;
                if (((Boolean) C3099q.f26624d.f26627c.a(Q7.x7)).booleanValue()) {
                    ((C1269ek) abstractC2252xi.f21918g.f18546G.f15180H).f18549J = ((C1126bv) this.f17673L).f18126J;
                }
                ((InterfaceC1743ns) this.f17669H).mo3zzb(abstractC2252xi);
                if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                    Uw uw = ((C1126bv) this.f17673L).f18130N;
                    Ow ow = (Ow) this.f17671J;
                    ow.c(abstractC2252xi.f21912a.f16755b);
                    ow.s(abstractC2252xi.f21917f.f19824G);
                    ow.e(true);
                    uw.b(ow.zzm());
                } else {
                    tw.g(abstractC2252xi.f21912a.f16755b);
                    tw.e(abstractC2252xi.f21917f.f19824G);
                    Ow ow2 = (Ow) this.f17671J;
                    ow2.e(true);
                    tw.a(ow2);
                    tw.h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void e(Object obj) {
        Tw tw;
        C1118bn c1118bn = (C1118bn) obj;
        synchronized (((Jv) this.f17673L)) {
            try {
                ((C1269ek) c1118bn.f21918g.f18546G.f15180H).f18550K = ((Jv) this.f17673L).f14242J;
                ((InterfaceC1743ns) this.f17669H).mo3zzb(c1118bn);
                Jv jv = (Jv) this.f17673L;
                Executor executor = jv.f14240H;
                Gv gv = jv.f14242J;
                Objects.requireNonNull(gv);
                executor.execute(new RunnableC1026Zn(gv, 14));
                ((Jv) this.f17673L).f14242J.i();
                if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                    Uw uw = ((Jv) this.f17673L).f14245M;
                    Ow ow = (Ow) this.f17671J;
                    ow.c(c1118bn.f21912a.f16755b);
                    ow.s(c1118bn.f21917f.f19824G);
                    ow.e(true);
                    uw.b(ow.zzm());
                } else {
                    tw.g(c1118bn.f21912a.f16755b);
                    tw.e(c1118bn.f21917f.f19824G);
                    Ow ow2 = (Ow) this.f17671J;
                    ow2.e(true);
                    tw.a(ow2);
                    tw.h();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void f(Object obj, C1458iG c1458iG, boolean z7) {
        byte[] bArrB;
        if (((Map) this.f17670I) == null) {
            throw new IllegalStateException("addEntry cannot be called after build");
        }
        if (obj == null) {
            throw new NullPointerException("`fullPrimitive` must not be null");
        }
        if (c1458iG.I() != 3) {
            throw new GeneralSecurityException("only ENABLED key is allowed");
        }
        int iOrdinal = c1458iG.D().ordinal();
        if (iOrdinal == 1) {
            bArrB = AbstractC2025tE.b(c1458iG.A()).b();
        } else if (iOrdinal == 2) {
            bArrB = AbstractC2025tE.a(c1458iG.A()).b();
        } else if (iOrdinal != 3) {
            if (iOrdinal != 4) {
                throw new GeneralSecurityException("unknown output prefix type");
            }
            bArrB = AbstractC2025tE.a(c1458iG.A()).b();
        } else {
            bArrB = Cw.f12721e;
        }
        NG ngA = NG.a(bArrB);
        DE de = new DE(obj, ngA, c1458iG.I(), c1458iG.D(), c1458iG.A(), c1458iG.B().E());
        Map map = (Map) this.f17670I;
        List list = (List) this.f17671J;
        ArrayList arrayList = new ArrayList();
        arrayList.add(de);
        List list2 = (List) map.put(ngA, Collections.unmodifiableList(arrayList));
        if (list2 != null) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.addAll(list2);
            arrayList2.add(de);
            map.put(ngA, Collections.unmodifiableList(arrayList2));
        }
        list.add(de);
        if (z7) {
            if (((DE) this.f17672K) != null) {
                throw new IllegalStateException("you cannot set two primary primitives");
            }
            this.f17672K = de;
        }
    }

    public final byte[] g() throws Throwable {
        FileInputStream fileInputStream;
        byte[] bArrB;
        FileInputStream fileInputStream2 = null;
        if (((byte[]) this.f17673L) == null) {
            try {
                fileInputStream = new FileInputStream((File) this.f17672K);
                try {
                    ArrayList arrayList = new ArrayList();
                    int iMin = 256;
                    while (true) {
                        byte[] bArr = new byte[iMin];
                        int i8 = 0;
                        while (i8 < iMin) {
                            int i9 = fileInputStream.read(bArr, i8, iMin - i8);
                            if (i9 == -1) {
                                break;
                            }
                            i8 += i9;
                        }
                        VG vgY = i8 == 0 ? null : XG.y(0, bArr, i8);
                        if (vgY == null) {
                            break;
                        }
                        arrayList.add(vgY);
                        iMin = Math.min(iMin + iMin, 8192);
                    }
                    bArrB = XG.x(arrayList).b();
                    AbstractC2987b.e(fileInputStream);
                } catch (IOException unused) {
                    AbstractC2987b.e(fileInputStream);
                    bArrB = null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    AbstractC2987b.e(fileInputStream2);
                    throw th;
                }
            } catch (IOException unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.f17673L = bArrB;
        }
        byte[] bArr2 = (byte[]) this.f17673L;
        if (bArr2 == null) {
            return null;
        }
        return Arrays.copyOf(bArr2, bArr2.length);
    }

    @Override // p083k3.e
    public final void zza(View view) {
        Tr tr = (Tr) this.f17672K;
        Ur ur = (Ur) ((Jq) this.f17673L).f14222e;
        Tv tv = (Tv) this.f17670I;
        Ov ov = (Ov) this.f17671J;
        ur.getClass();
        C1169cn c1169cn = new C1169cn(new C2272y1());
        C0836Mg c0836MgC = ur.f16899a.c(new p004a3.b(tv, ov, (String) null), c1169cn);
        C0864Of c0864Of = new C0864Of(24, c0836MgC);
        synchronized (tr) {
            tr.f16748G = c0864Of;
        }
        ((C2040te) this.f17669H).b(c0836MgC.G0());
    }

    @Override // p083k3.e
    public final void zzb() {
    }

    @Override // p083k3.e
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    /* JADX INFO: renamed from: zzb */
    public final void mo3zzb(Object obj) {
        Tw tw;
        switch (this.f17668G) {
            case 0:
                d(obj);
                return;
            case 1:
                e(obj);
                return;
            case 5:
                c(obj);
                return;
            default:
                C0967Vk c0967Vk = (C0967Vk) obj;
                synchronized (((Dv) this.f17673L)) {
                    try {
                        ((Dv) this.f17673L).f12905O = null;
                        J7 j8 = Q7.y7;
                        C3099q c3099q = C3099q.f26624d;
                        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                            C0864Of c0864Of = c0967Vk.f21918g.f18546G;
                            Object obj2 = this.f17673L;
                            C1433hs c1433hs = ((Dv) obj2).f12900J;
                            Object obj3 = c0864Of.f15180H;
                            ((C1269ek) obj3).f18547H = c1433hs;
                            ((C1269ek) obj3).f18550K = ((Dv) obj2).f12901K;
                        }
                        ((InterfaceC1743ns) this.f17669H).mo3zzb(c0967Vk);
                        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
                        final int i8 = 1;
                        if (zBooleanValue) {
                            final int i9 = 0;
                            ((Dv) this.f17673L).f12898H.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Cv

                                /* JADX INFO: renamed from: H, reason: collision with root package name */
                                public final /* synthetic */ Yu f12716H;

                                {
                                    this.f12716H = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i10 = i9;
                                    Yu yu = this.f12716H;
                                    switch (i10) {
                                        case 0:
                                            ((Dv) yu.f17673L).f12900J.n();
                                            break;
                                        default:
                                            ((Dv) yu.f17673L).f12901K.n();
                                            break;
                                    }
                                }
                            });
                            ((Dv) this.f17673L).f12898H.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Cv

                                /* JADX INFO: renamed from: H, reason: collision with root package name */
                                public final /* synthetic */ Yu f12716H;

                                {
                                    this.f12716H = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i10 = i8;
                                    Yu yu = this.f12716H;
                                    switch (i10) {
                                        case 0:
                                            ((Dv) yu.f17673L).f12900J.n();
                                            break;
                                        default:
                                            ((Dv) yu.f17673L).f12901K.n();
                                            break;
                                    }
                                }
                            });
                        }
                        if (!((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() || (tw = (Tw) this.f17670I) == null) {
                            Uw uw = ((Dv) this.f17673L).f12903M;
                            Ow ow = (Ow) this.f17671J;
                            ow.c(c0967Vk.f21912a.f16755b);
                            ow.s(c0967Vk.f21917f.f19824G);
                            ow.e(true);
                            uw.b(ow.zzm());
                        } else {
                            tw.g(c0967Vk.f21912a.f16755b);
                            tw.e(c0967Vk.f21917f.f19824G);
                            Ow ow2 = (Ow) this.f17671J;
                            ow2.e(true);
                            tw.a(ow2);
                            tw.h();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }

    public /* synthetic */ Yu(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i8) {
        this.f17668G = i8;
        this.f17669H = obj2;
        this.f17670I = obj3;
        this.f17671J = obj4;
        this.f17672K = obj5;
        this.f17673L = obj;
    }

    public Yu(B9 b9) {
        T8 s8;
        IBinder iBinder;
        this.f17668G = 2;
        this.f17670I = new ArrayList();
        this.f17672K = new p004a3.b(1);
        this.f17673L = new ArrayList();
        this.f17669H = b9;
        U8 u8 = null;
        try {
            List listU = b9.u();
            if (listU != null) {
                for (Object obj : listU) {
                    if (!(obj instanceof IBinder) || (iBinder = (IBinder) obj) == null) {
                        s8 = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                        s8 = iInterfaceQueryLocalInterface instanceof T8 ? (T8) iInterfaceQueryLocalInterface : new S8(iBinder);
                    }
                    if (s8 != null) {
                        ((List) this.f17670I).add(new U8(s8));
                    }
                }
            }
        } catch (RemoteException e8) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e8);
        }
        try {
            List listG = ((B9) this.f17669H).g();
            if (listG != null) {
                for (Object obj2 : listG) {
                    InterfaceC3086j0 interfaceC3086j0Z3 = obj2 instanceof IBinder ? p090l3.K0.z3((IBinder) obj2) : null;
                    if (interfaceC3086j0Z3 != null) {
                        ((List) this.f17673L).add(new com.google.android.gms.internal.atv_ads_framework.x0(interfaceC3086j0Z3));
                    }
                }
            }
        } catch (RemoteException e9) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e9);
        }
        try {
            T8 t8Zzk = ((B9) this.f17669H).zzk();
            if (t8Zzk != null) {
                u8 = new U8(t8Zzk);
            }
        } catch (RemoteException e10) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e10);
        }
        this.f17671J = u8;
        try {
            if (((B9) this.f17669H).zzi() != null) {
                new p004a3.b(((B9) this.f17669H).zzi());
            }
        } catch (RemoteException e11) {
            p120p3.h.e(HttpUrl.FRAGMENT_ENCODE_SET, e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1195dC
    public final void zza(Throwable th) {
        Tw tw;
        Tw tw2;
        final int i8 = 0;
        switch (this.f17668G) {
            case 0:
                a(th);
                return;
            case 1:
                b(th);
                return;
            case 5:
                p120p3.h.e("Native ad failed to load", th);
                C3117z0 c3117z0V = p113o3.r.v(th, ((C0823Li) ((C2094ug) this.f17672K).f21343y0.zzb()).f14542l);
                ((C1941rj) ((C2094ug) this.f17672K).f21333t0.zzb()).y(c3117z0V);
                ((AbstractC1317fg) ((C1950rs) this.f17673L).f20797I).a().execute(new RunnableC1170co(6, this, c3117z0V));
                AbstractC2987b.s0("NativeAdLoader.onFailure", c3117z0V.f26629G, th);
                ((InterfaceC1743ns) this.f17669H).zza();
                if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() && (tw = (Tw) this.f17670I) != null) {
                    tw.c(c3117z0V);
                    Ow ow = (Ow) this.f17671J;
                    ow.d(th);
                    ow.e(false);
                    tw.a(ow);
                    tw.h();
                    return;
                }
                C1950rs c1950rs = (C1950rs) this.f17673L;
                Ow ow2 = (Ow) this.f17671J;
                Uw uw = (Uw) c1950rs.f20799K;
                ow2.g(c3117z0V);
                ow2.d(th);
                ow2.e(false);
                uw.b(ow2.zzm());
                return;
            default:
                p120p3.h.e("Interstitial ad failed to load", th);
                final C3117z0 c3117z0V2 = p113o3.r.v(th, ((C0823Li) ((C0851Ng) this.f17672K).f14937A0.zzb()).f14542l);
                synchronized (((Dv) this.f17673L)) {
                    try {
                        ((Dv) this.f17673L).f12905O = null;
                        ((C1941rj) ((C0851Ng) this.f17672K).f15031p0.zzb()).y(c3117z0V2);
                        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.y7)).booleanValue()) {
                            ((Dv) this.f17673L).f12898H.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Bv

                                /* JADX INFO: renamed from: H, reason: collision with root package name */
                                public final /* synthetic */ Yu f12514H;

                                {
                                    this.f12514H = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i9 = i8;
                                    C3117z0 c3117z0 = c3117z0V2;
                                    Yu yu = this.f12514H;
                                    switch (i9) {
                                        case 0:
                                            ((Dv) yu.f17673L).f12900J.y(c3117z0);
                                            break;
                                        default:
                                            ((Dv) yu.f17673L).f12901K.y(c3117z0);
                                            break;
                                    }
                                }
                            });
                            final int i9 = 1;
                            ((Dv) this.f17673L).f12898H.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.Bv

                                /* JADX INFO: renamed from: H, reason: collision with root package name */
                                public final /* synthetic */ Yu f12514H;

                                {
                                    this.f12514H = this;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    int i10 = i9;
                                    C3117z0 c3117z0 = c3117z0V2;
                                    Yu yu = this.f12514H;
                                    switch (i10) {
                                        case 0:
                                            ((Dv) yu.f17673L).f12900J.y(c3117z0);
                                            break;
                                        default:
                                            ((Dv) yu.f17673L).f12901K.y(c3117z0);
                                            break;
                                    }
                                }
                            });
                        }
                        AbstractC2987b.s0("InterstitialAdLoader.onFailure", c3117z0V2.f26629G, th);
                        ((InterfaceC1743ns) this.f17669H).zza();
                        if (((Boolean) AbstractC1656m8.f19913c.l()).booleanValue() && (tw2 = (Tw) this.f17670I) != null) {
                            tw2.c(c3117z0V2);
                            Ow ow3 = (Ow) this.f17671J;
                            ow3.d(th);
                            ow3.e(false);
                            tw2.a(ow3);
                            tw2.h();
                        } else {
                            Uw uw2 = ((Dv) this.f17673L).f12903M;
                            Ow ow4 = (Ow) this.f17671J;
                            ow4.g(c3117z0V2);
                            ow4.d(th);
                            ow4.e(false);
                            uw2.b(ow4.zzm());
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                    break;
                }
                return;
        }
    }

    public /* synthetic */ Yu(Class cls) {
        this.f17668G = 8;
        this.f17670I = new HashMap();
        this.f17671J = new ArrayList();
        this.f17669H = cls;
        this.f17673L = C1352gE.f18916b;
    }
}
