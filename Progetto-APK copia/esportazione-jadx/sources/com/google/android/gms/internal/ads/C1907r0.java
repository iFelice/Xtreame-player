package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1907r0 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final L f20669b;

    public C1907r0(int i8) {
        this.f20668a = i8;
        if (i8 != 1) {
            this.f20669b = new C1028a0(16973, 2, "image/bmp");
        } else {
            this.f20669b = new C1028a0(35152, 2, "image/png");
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) {
        int i8 = this.f20668a;
        L l4 = this.f20669b;
        switch (i8) {
            case 0:
                return ((C1028a0) l4).c(m7, wVar);
            case 1:
                return ((C1028a0) l4).c(m7, wVar);
            default:
                return l4.c(m7, wVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) {
        int i8 = this.f20668a;
        L l4 = this.f20669b;
        switch (i8) {
            case 0:
                return ((C1028a0) l4).d(m7);
            case 1:
                return ((C1028a0) l4).d(m7);
            default:
                return l4.d(m7);
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        int i8 = this.f20668a;
        L l4 = this.f20669b;
        switch (i8) {
            case 0:
                ((C1028a0) l4).e(j8, j9);
                break;
            case 1:
                ((C1028a0) l4).e(j8, j9);
                break;
            default:
                l4.e(j8, j9);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        int i8 = this.f20668a;
        L l4 = this.f20669b;
        switch (i8) {
            case 0:
                ((C1028a0) l4).f(n7);
                break;
            case 1:
                ((C1028a0) l4).f(n7);
                break;
            default:
                l4.f(n7);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        switch (this.f20668a) {
            case 0:
                C1969sA c1969sA = AbstractC2073uA.f21207H;
                break;
            case 1:
                C1969sA c1969sA2 = AbstractC2073uA.f21207H;
                break;
            default:
                C1969sA c1969sA3 = AbstractC2073uA.f21207H;
                break;
        }
        return PA.f15340K;
    }

    public C1907r0() {
        this.f20668a = 2;
        this.f20669b = new C2271y0();
    }
}
