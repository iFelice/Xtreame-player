package com.google.android.gms.internal.ads;

import android.os.Parcel;
import androidx.leanback.widget.C0484j;
import java.util.concurrent.atomic.AtomicReference;
import p090l3.C3117z0;

/* JADX INFO: loaded from: classes.dex */
public final class Gv implements p189y3.a, InterfaceC0779Ij, InterfaceC1993sj, InterfaceC1838pj, InterfaceC2305yj, InterfaceC0924Sj, InterfaceC2005sv, InterfaceC0869Ok {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1591kw f13655G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicReference f13656H = new AtomicReference();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final AtomicReference f13657I = new AtomicReference();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final AtomicReference f13658J = new AtomicReference();

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final AtomicReference f13659K = new AtomicReference();

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final AtomicReference f13660L = new AtomicReference();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicReference f13661M = new AtomicReference();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final AtomicReference f13662N = new AtomicReference();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Gv f13663O = null;

    public Gv(C1591kw c1591kw) {
        this.f13655G = c1591kw;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.a();
        } else {
            U2.m.f(this.f13659K, new p021c4.A(7));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.b();
        } else {
            U2.m.f(this.f13659K, new p021c4.A(15));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2005sv
    public final void c(InterfaceC2005sv interfaceC2005sv) {
        this.f13663O = (Gv) interfaceC2005sv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final void d(C3117z0 c3117z0) {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.d(c3117z0);
            return;
        }
        AtomicReference atomicReference = this.f13658J;
        U2.m.f(atomicReference, new C1890qj(12, c3117z0));
        U2.m.f(atomicReference, new C1890qj(13, c3117z0));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0924Sj
    public final void e(p090l3.e1 e1Var) {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.e(e1Var);
        } else {
            U2.m.f(this.f13662N, new C1115bk(e1Var, 6));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(final InterfaceC1211dd interfaceC1211dd, String str, String str2) {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.g(interfaceC1211dd, str, str2);
            return;
        }
        final int i8 = 1;
        U2.m.f(this.f13658J, new InterfaceC1746nv() { // from class: com.google.android.gms.internal.ads.Ev
            @Override // com.google.android.gms.internal.ads.InterfaceC1746nv
            /* JADX INFO: renamed from: zza */
            public final void mo8zza(Object obj) {
                int i9 = i8;
                InterfaceC1211dd interfaceC1211dd2 = interfaceC1211dd;
                switch (i9) {
                    case 0:
                        C1314fd c1314fd = (C1314fd) ((InterfaceC1366gd) obj);
                        Parcel parcelJ0 = c1314fd.j0();
                        A5.e(parcelJ0, interfaceC1211dd2);
                        c1314fd.O2(5, parcelJ0);
                        break;
                    default:
                        BinderC1108bd binderC1108bd = (BinderC1108bd) interfaceC1211dd2;
                        ((InterfaceC2039td) obj).Y1(new BinderC0683Cd(binderC1108bd.f18055G, binderC1108bd.f18056H));
                        break;
                }
            }
        });
        U2.m.f(this.f13660L, new C0719Ej(interfaceC1211dd, str, str2, 2));
        final int i9 = 0;
        U2.m.f(this.f13659K, new InterfaceC1746nv() { // from class: com.google.android.gms.internal.ads.Ev
            @Override // com.google.android.gms.internal.ads.InterfaceC1746nv
            /* JADX INFO: renamed from: zza */
            public final void mo8zza(Object obj) {
                int i10 = i9;
                InterfaceC1211dd interfaceC1211dd2 = interfaceC1211dd;
                switch (i10) {
                    case 0:
                        C1314fd c1314fd = (C1314fd) ((InterfaceC1366gd) obj);
                        Parcel parcelJ0 = c1314fd.j0();
                        A5.e(parcelJ0, interfaceC1211dd2);
                        c1314fd.O2(5, parcelJ0);
                        break;
                    default:
                        BinderC1108bd binderC1108bd = (BinderC1108bd) interfaceC1211dd2;
                        ((InterfaceC2039td) obj).Y1(new BinderC0683Cd(binderC1108bd.f18055G, binderC1108bd.f18056H));
                        break;
                }
            }
        });
        U2.m.f(this.f13661M, new C0719Ej(interfaceC1211dd, str, str2, 3));
    }

    @Override // p189y3.a
    public final void i() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.i();
        } else {
            U2.m.f(this.f13656H, new p021c4.A(13));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.n();
        } else {
            U2.m.f(this.f13657I, new p021c4.A(11));
            U2.m.f(this.f13659K, new p021c4.A(12));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void q() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.q();
        } else {
            U2.m.f(this.f13658J, new p021c4.A(14));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0869Ok
    public final void u() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.y(c3117z0);
            return;
        }
        int i8 = c3117z0.f26629G;
        AtomicReference atomicReference = this.f13657I;
        U2.m.f(atomicReference, new C1890qj(14, c3117z0));
        U2.m.f(atomicReference, new C0484j(i8, 7));
        U2.m.f(this.f13659K, new C0484j(i8, 8));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.zza();
            return;
        }
        Xu xu = this.f13655G.f19672a;
        if (xu != null) {
            C2266xw c2266xw = (C2266xw) xu.f17529H;
            synchronized (c2266xw) {
                c2266xw.f21955e = 1;
                c2266xw.b();
            }
        }
        U2.m.f(this.f13658J, new p021c4.A(16));
        U2.m.f(this.f13659K, new p021c4.A(17));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.zzb();
        } else {
            U2.m.f(this.f13659K, new p021c4.A(18));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
        Gv gv = this.f13663O;
        if (gv != null) {
            gv.zzc();
            return;
        }
        AtomicReference atomicReference = this.f13658J;
        U2.m.f(atomicReference, new p021c4.A(8));
        U2.m.f(this.f13659K, new p021c4.A(9));
        U2.m.f(atomicReference, new p021c4.A(10));
    }
}
