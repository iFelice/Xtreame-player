package com.google.android.gms.internal.ads;

import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class B2 implements L {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1534jr f12088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1286f0 f12089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public N f12090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f12091f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f12093h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f12094i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2 f12086a = new C2(0, null, true);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1534jr f12087b = new C1534jr(2048);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f12092g = -1;

    public B2() {
        C1534jr c1534jr = new C1534jr(10);
        this.f12088c = c1534jr;
        byte[] bArr = c1534jr.f19515a;
        this.f12089d = new C1286f0(bArr, bArr.length);
    }

    @Override // com.google.android.gms.internal.ads.L
    public final int c(M m7, W0.w wVar) throws C0800Ka {
        p113o3.r.x(this.f12090e);
        C1534jr c1534jr = this.f12087b;
        int iE = m7.e(c1534jr.f19515a, 0, 2048);
        if (!this.f12094i) {
            this.f12090e.g(new P(-9223372036854775807L, 0L));
            this.f12094i = true;
        }
        if (iE == -1) {
            return -1;
        }
        c1534jr.j(0);
        c1534jr.i(iE);
        boolean z7 = this.f12093h;
        C2 c8 = this.f12086a;
        if (!z7) {
            c8.f12558t = this.f12091f;
            this.f12093h = true;
        }
        c8.b(c1534jr);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final boolean d(M m7) throws EOFException, InterruptedIOException {
        C1534jr c1534jr;
        int i8 = 0;
        while (true) {
            c1534jr = this.f12088c;
            F f8 = (F) m7;
            f8.d(c1534jr.f19515a, 0, 10, false);
            c1534jr.j(0);
            if (c1534jr.y() != 4801587) {
                break;
            }
            c1534jr.k(3);
            int iV = c1534jr.v();
            i8 += iV + 10;
            f8.i(iV, false);
        }
        m7.zzj();
        F f9 = (F) m7;
        f9.i(i8, false);
        if (this.f12092g == -1) {
            this.f12092g = i8;
        }
        int i9 = i8;
        int i10 = 0;
        int i11 = 0;
        do {
            f9.d(c1534jr.f19515a, 0, 2, false);
            c1534jr.j(0);
            if ((c1534jr.A() & 65526) == 65520) {
                i10++;
                if (i10 >= 4 && i11 > 188) {
                    return true;
                }
                f9.d(c1534jr.f19515a, 0, 4, false);
                C1286f0 c1286f0 = this.f12089d;
                c1286f0.t(14);
                int iG = c1286f0.g(13);
                if (iG <= 6) {
                    i9++;
                    m7.zzj();
                    f9.i(i9, false);
                } else {
                    f9.i(iG - 6, false);
                    i11 += iG;
                }
            } else {
                i9++;
                m7.zzj();
                f9.i(i9, false);
            }
            i10 = 0;
            i11 = 0;
        } while (i9 - i8 < 8192);
        return false;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void e(long j8, long j9) {
        this.f12093h = false;
        this.f12086a.zze();
        this.f12091f = j9;
    }

    @Override // com.google.android.gms.internal.ads.L
    public final void f(N n7) {
        this.f12090e = n7;
        this.f12086a.c(n7, new A1.I(Integer.MIN_VALUE, 0, 1, 1));
        n7.f();
    }

    @Override // com.google.android.gms.internal.ads.L
    public final List zzd() {
        C1969sA c1969sA = AbstractC2073uA.f21207H;
        return PA.f15340K;
    }
}
