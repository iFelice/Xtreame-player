package p090l3;

import C2.C0091g;
import W0.C0374g;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Base64;
import com.google.android.gms.internal.ads.C1085b5;
import com.google.android.gms.internal.ads.C1180cy;
import com.google.android.gms.internal.ads.C1283ey;
import com.google.android.gms.internal.ads.C1496j4;
import com.google.android.gms.internal.ads.C1593ky;
import com.google.android.gms.internal.ads.C1645ly;
import com.google.android.gms.internal.ads.Cw;
import com.google.android.gms.internal.ads.InterfaceC1697my;
import com.google.android.gms.internal.ads.K4;
import com.google.android.gms.internal.ads.R4;
import com.google.android.gms.internal.ads.Xu;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p052g4.h;
import p052g4.r;
import p090l3.C3093n;
import p120p3.d;

/* JADX INFO: renamed from: l3.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3093n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f26609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f26610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26611c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f26612d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f26613e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f26614f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f26615g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Object f26616h;

    public static C3093n c(Context context, ExecutorService executorService, C1180cy c1180cy, C1283ey c1283ey) {
        C1593ky c1593ky = new C1593ky();
        C1645ly c1645ly = new C1645ly();
        final C3093n c3093n = new C3093n();
        c3093n.f26609a = context;
        c3093n.f26610b = executorService;
        c3093n.f26611c = c1180cy;
        c3093n.f26612d = c1283ey;
        c3093n.f26613e = c1593ky;
        c3093n.f26614f = c1645ly;
        int i8 = 14;
        if (c1283ey.f18627b) {
            final int i9 = 0;
            r rVarC = Cw.c(new Callable(c3093n) { // from class: com.google.android.gms.internal.ads.jy

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ C3093n f19537b;

                {
                    this.f19537b = c3093n;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() throws PackageManager.NameNotFoundException {
                    int i10 = i9;
                    C3093n c3093n2 = this.f19537b;
                    switch (i10) {
                        case 0:
                            c3093n2.getClass();
                            V3 v3A0 = C1496j4.a0();
                            p075j3.a aVarA = p075j3.b.a((Context) c3093n2.f26609a);
                            String strEncodeToString = aVarA.f25695a;
                            if (strEncodeToString != null && strEncodeToString.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                                UUID uuidFromString = UUID.fromString(strEncodeToString);
                                byte[] bArr = new byte[16];
                                ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                                byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
                                byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
                                strEncodeToString = Base64.encodeToString(bArr, 11);
                            }
                            if (strEncodeToString != null) {
                                v3A0.d();
                                C1496j4.g0((C1496j4) v3A0.f20255H, strEncodeToString);
                                v3A0.d();
                                C1496j4.h0((C1496j4) v3A0.f20255H, aVarA.f25696b);
                                v3A0.d();
                                C1496j4.t0((C1496j4) v3A0.f20255H);
                            }
                            return (C1496j4) v3A0.b();
                        default:
                            Context context2 = (Context) c3093n2.f26609a;
                            return com.google.android.gms.internal.measurement.H1.C(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
                    }
                }
            }, executorService);
            rVarC.b((Executor) c3093n.f26610b, new Xu(c3093n, i8));
            c3093n.f26615g = rVarC;
        } else {
            c3093n.f26615g = Cw.k(c1593ky.zza());
        }
        final int i10 = 1;
        r rVarC2 = Cw.c(new Callable(c3093n) { // from class: com.google.android.gms.internal.ads.jy

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ C3093n f19537b;

            {
                this.f19537b = c3093n;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws PackageManager.NameNotFoundException {
                int i11 = i10;
                C3093n c3093n2 = this.f19537b;
                switch (i11) {
                    case 0:
                        c3093n2.getClass();
                        V3 v3A0 = C1496j4.a0();
                        p075j3.a aVarA = p075j3.b.a((Context) c3093n2.f26609a);
                        String strEncodeToString = aVarA.f25695a;
                        if (strEncodeToString != null && strEncodeToString.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
                            UUID uuidFromString = UUID.fromString(strEncodeToString);
                            byte[] bArr = new byte[16];
                            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                            byteBufferWrap.putLong(uuidFromString.getMostSignificantBits());
                            byteBufferWrap.putLong(uuidFromString.getLeastSignificantBits());
                            strEncodeToString = Base64.encodeToString(bArr, 11);
                        }
                        if (strEncodeToString != null) {
                            v3A0.d();
                            C1496j4.g0((C1496j4) v3A0.f20255H, strEncodeToString);
                            v3A0.d();
                            C1496j4.h0((C1496j4) v3A0.f20255H, aVarA.f25696b);
                            v3A0.d();
                            C1496j4.t0((C1496j4) v3A0.f20255H);
                        }
                        return (C1496j4) v3A0.b();
                    default:
                        Context context2 = (Context) c3093n2.f26609a;
                        return com.google.android.gms.internal.measurement.H1.C(context2, context2.getPackageName(), Integer.toString(context2.getPackageManager().getPackageInfo(context2.getPackageName(), 0).versionCode));
                }
            }
        }, (Executor) c3093n.f26610b);
        rVarC2.b((Executor) c3093n.f26610b, new Xu(c3093n, i8));
        c3093n.f26616h = rVarC2;
        return c3093n;
    }

    public static void d(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        C3097p c3097p = C3097p.f26618f;
        d dVar = c3097p.f26619a;
        String str2 = c3097p.f26622d.f28196G;
        dVar.getClass();
        d.n(context, str2, bundle, new C0091g(dVar, 7));
    }

    public final HashMap a() {
        HashMap mapB = b();
        C3093n c3093n = (C3093n) this.f26610b;
        InterfaceC1697my interfaceC1697my = (InterfaceC1697my) c3093n.f26613e;
        h hVar = (h) c3093n.f26615g;
        C1496j4 c1496j4Zza = interfaceC1697my.zza();
        if (hVar.h()) {
            c1496j4Zza = (C1496j4) hVar.f();
        }
        mapB.put("gai", Boolean.valueOf(((C1283ey) this.f26609a).f18627b));
        mapB.put("did", c1496j4Zza.x0());
        mapB.put("dst", Integer.valueOf(c1496j4Zza.m0() - 1));
        mapB.put("doo", Boolean.valueOf(c1496j4Zza.j0()));
        K4 k8 = (K4) this.f26613e;
        if (k8 != null) {
            mapB.put("nt", Long.valueOf(k8.zza()));
        }
        C1085b5 c1085b5 = (C1085b5) this.f26614f;
        if (c1085b5 != null) {
            mapB.put("vs", Long.valueOf(c1085b5.f18016d ? c1085b5.f18014b - c1085b5.f18013a : -1L));
            C1085b5 c1085b6 = (C1085b5) this.f26614f;
            long j8 = c1085b6.f18015c;
            c1085b6.f18015c = -1L;
            mapB.put("vf", Long.valueOf(j8));
        }
        return mapB;
    }

    public final HashMap b() {
        boolean z7;
        HashMap map = new HashMap();
        C1283ey c1283ey = (C1283ey) this.f26609a;
        C3093n c3093n = (C3093n) this.f26610b;
        InterfaceC1697my interfaceC1697my = (InterfaceC1697my) c3093n.f26614f;
        h hVar = (h) c3093n.f26616h;
        C1496j4 c1496j4Zza = interfaceC1697my.zza();
        if (hVar.h()) {
            c1496j4Zza = (C1496j4) hVar.f();
        }
        map.put("v", c1283ey.f18626a);
        map.put("gms", Boolean.valueOf(((C1283ey) this.f26609a).f18628c));
        map.put("int", c1496j4Zza.y0());
        R4 r7 = (R4) this.f26612d;
        switch (r7.f16205a) {
            case 0:
                z7 = r7.f16206b;
                break;
            default:
                z7 = r7.f16206b;
                break;
        }
        map.put("up", Boolean.valueOf(z7));
        map.put("t", new Throwable());
        C0374g c0374g = (C0374g) this.f26615g;
        if (c0374g != null) {
            map.put("tcq", Long.valueOf(c0374g.f7412a));
            map.put("tpq", Long.valueOf(((C0374g) this.f26615g).f7413b));
            map.put("tcv", Long.valueOf(((C0374g) this.f26615g).f7414c));
            map.put("tpv", Long.valueOf(((C0374g) this.f26615g).f7415d));
            map.put("tchv", Long.valueOf(((C0374g) this.f26615g).f7416e));
            map.put("tphv", Long.valueOf(((C0374g) this.f26615g).f7417f));
            map.put("tcc", Long.valueOf(((C0374g) this.f26615g).f7418g));
            map.put("tpc", Long.valueOf(((C0374g) this.f26615g).f7419h));
        }
        return map;
    }
}
