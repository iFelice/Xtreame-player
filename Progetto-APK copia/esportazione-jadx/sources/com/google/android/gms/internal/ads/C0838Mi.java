package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import p090l3.InterfaceC3067a;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Mi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0838Mi implements InterfaceC0779Ij, InterfaceC3067a, InterfaceC1022Zj, InterfaceC0659Aj, InterfaceC1838pj, InterfaceC1787ok {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final P3.a f14780G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1315fe f14781H;

    public C0838Mi(P3.a aVar, C1315fe c1315fe) {
        this.f14780G = aVar;
        this.f14781H = c1315fe;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        P3.a aVar = this.f14780G;
        C1315fe c1315fe = this.f14781H;
        ((P3.b) aVar).getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        synchronized (c1315fe.f18769d) {
            try {
                c1315fe.f18776k = jElapsedRealtime;
                if (jElapsedRealtime != -1) {
                    c1315fe.f18767b.b(c1315fe);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void E(C1397h7 c1397h7) {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            c1315fe.f18767b.e();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
    }

    public final void c(p090l3.b1 b1Var) {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            ((P3.b) c1315fe.f18766a).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            c1315fe.f18775j = jElapsedRealtime;
            c1315fe.f18767b.g(b1Var, jElapsedRealtime);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void m(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            try {
                if (c1315fe.f18776k != -1) {
                    ((P3.b) c1315fe.f18766a).getClass();
                    c1315fe.f18773h = SystemClock.elapsedRealtime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void p(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void t(C1397h7 c1397h7) {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            c1315fe.f18767b.f();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void w(C1397h7 c1397h7) {
    }

    @Override // p090l3.InterfaceC3067a
    public final void x() {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            try {
                if (c1315fe.f18776k != -1) {
                    C1263ee c1263ee = new C1263ee(c1315fe);
                    ((P3.b) c1315fe.f18766a).getClass();
                    c1263ee.f18526a = SystemClock.elapsedRealtime();
                    c1315fe.f18768c.add(c1263ee);
                    c1315fe.f18774i++;
                    c1315fe.f18767b.c();
                    c1315fe.f18767b.b(c1315fe);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            try {
                if (c1315fe.f18776k != -1 && !c1315fe.f18768c.isEmpty()) {
                    C1263ee c1263ee = (C1263ee) c1315fe.f18768c.getLast();
                    if (c1263ee.f18527b == -1) {
                        ((P3.b) c1263ee.f18528c.f18766a).getClass();
                        c1263ee.f18527b = SystemClock.elapsedRealtime();
                        c1315fe.f18767b.b(c1315fe);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1787ok
    public final void zzh() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0659Aj
    public final void zzr() {
        C1315fe c1315fe = this.f14781H;
        synchronized (c1315fe.f18769d) {
            try {
                if (c1315fe.f18776k != -1 && c1315fe.f18772g == -1) {
                    ((P3.b) c1315fe.f18766a).getClass();
                    c1315fe.f18772g = SystemClock.elapsedRealtime();
                    c1315fe.f18767b.b(c1315fe);
                }
                c1315fe.f18767b.d();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
