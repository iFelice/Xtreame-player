package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1856q0 implements L {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f20520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f20521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1028a0 f20522c;

    public C1856q0(int i8) {
        this.f20520a = i8;
        if (i8 == 1) {
            this.f20521b = new C1534jr(4);
            this.f20522c = new C1028a0(-1, -1, "image/heif");
        } else if (i8 != 2) {
            this.f20521b = new C1534jr(4);
            this.f20522c = new C1028a0(-1, -1, "image/avif");
        } else {
            this.f20521b = new C1534jr(4);
            this.f20522c = new C1028a0(-1, -1, "image/webp");
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) {
        int i8 = this.f20520a;
        C1028a0 c1028a0 = this.f20522c;
        switch (i8) {
            case 0:
                break;
            case 1:
                break;
        }
        return c1028a0.c(m7, wVar);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        C1534jr c1534jr = this.f20521b;
        switch (this.f20520a) {
            case 0:
                F f8 = (F) m7;
                f8.i(4, false);
                c1534jr.g(4);
                f8.d(c1534jr.f19515a, 0, 4, false);
                if (c1534jr.E() == 1718909296) {
                    c1534jr.g(4);
                    f8.d(c1534jr.f19515a, 0, 4, false);
                    if (c1534jr.E() == 1635150182) {
                        return true;
                    }
                }
                return false;
            case 1:
                F f9 = (F) m7;
                f9.i(4, false);
                c1534jr.g(4);
                f9.d(c1534jr.f19515a, 0, 4, false);
                if (c1534jr.E() == 1718909296) {
                    c1534jr.g(4);
                    f9.d(c1534jr.f19515a, 0, 4, false);
                    if (c1534jr.E() == 1751476579) {
                        return true;
                    }
                }
                return false;
            default:
                c1534jr.g(4);
                F f10 = (F) m7;
                f10.d(c1534jr.f19515a, 0, 4, false);
                if (c1534jr.E() == 1380533830) {
                    f10.i(4, false);
                    c1534jr.g(4);
                    f10.d(c1534jr.f19515a, 0, 4, false);
                    if (c1534jr.E() == 1464156752) {
                        return true;
                    }
                }
                return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        int i8 = this.f20520a;
        C1028a0 c1028a0 = this.f20522c;
        switch (i8) {
            case 0:
                c1028a0.e(j8, j9);
                break;
            case 1:
                c1028a0.e(j8, j9);
                break;
            default:
                c1028a0.e(j8, j9);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        int i8 = this.f20520a;
        C1028a0 c1028a0 = this.f20522c;
        switch (i8) {
            case 0:
                c1028a0.f(n7);
                break;
            case 1:
                c1028a0.f(n7);
                break;
            default:
                c1028a0.f(n7);
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        switch (this.f20520a) {
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
}
