package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1028a0 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f17827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public N f17830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public InterfaceC1234e0 f17831g;

    public C1028a0(int i8, int i9, String str) {
        this.f17825a = i8;
        this.f17826b = i9;
        this.f17827c = str;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) {
        int i8 = this.f17829e;
        if (i8 != 1) {
            if (i8 == 2) {
                return -1;
            }
            throw new IllegalStateException();
        }
        InterfaceC1234e0 interfaceC1234e0 = this.f17831g;
        interfaceC1234e0.getClass();
        int iE = interfaceC1234e0.e(m7, 1024, true);
        if (iE == -1) {
            this.f17829e = 2;
            this.f17831g.b(0L, 1, this.f17828d, 0, null);
            this.f17828d = 0;
        } else {
            this.f17828d += iE;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        int i8 = this.f17826b;
        int i9 = this.f17825a;
        p113o3.r.M((i9 == -1 || i8 == -1) ? false : true);
        C1534jr c1534jr = new C1534jr(i8);
        ((F) m7).d(c1534jr.f19515a, 0, i8, false);
        return c1534jr.A() == i9;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        if (j8 == 0 || this.f17829e == 1) {
            this.f17829e = 1;
            this.f17828d = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f17830f = n7;
        InterfaceC1234e0 interfaceC1234e0H = n7.h(1024, 4);
        this.f17831g = interfaceC1234e0H;
        K k8 = new K();
        k8.f(this.f17827c);
        interfaceC1234e0H.d(new C1804p0(k8));
        this.f17830f.f();
        this.f17830f.g(new C1080b0());
        this.f17829e = 1;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
