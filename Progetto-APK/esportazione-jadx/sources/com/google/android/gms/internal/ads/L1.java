package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class L1 extends p118p1.j {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Q f14452n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public J1 f14453o;

    @Override // p118p1.j
    public final long e(C1534jr c1534jr) {
        byte[] bArr = c1534jr.f19515a;
        if (bArr[0] != -1) {
            return -1L;
        }
        int i8 = (bArr[2] & 255) >> 4;
        if (i8 == 6) {
            c1534jr.k(4);
            c1534jr.G();
        } else if (i8 == 7) {
            i8 = 7;
            c1534jr.k(4);
            c1534jr.G();
        }
        int iK = p113o3.r.k(i8, c1534jr);
        c1534jr.j(0);
        return iK;
    }

    @Override // p118p1.j
    public final void f(boolean z7) {
        super.f(z7);
        if (z7) {
            this.f14452n = null;
            this.f14453o = null;
        }
    }

    @Override // p118p1.j
    public final boolean g(C1534jr c1534jr, long j8, C2218x c2218x) {
        byte[] bArr = c1534jr.f19515a;
        Q q7 = this.f14452n;
        if (q7 == null) {
            Q q8 = new Q(bArr, 17);
            this.f14452n = q8;
            c2218x.f21779H = q8.b(Arrays.copyOfRange(bArr, 9, c1534jr.f19517c), null);
            return true;
        }
        byte b8 = bArr[0];
        if ((b8 & 127) == 3) {
            C2218x c2218xI = U2.m.i(c1534jr);
            Q q9 = new Q(q7.f15528a, q7.f15529b, q7.f15530c, q7.f15531d, q7.f15532e, q7.f15534g, q7.f15535h, q7.f15537j, c2218xI, q7.f15539l);
            this.f14452n = q9;
            this.f14453o = new J1(q9, c2218xI);
            return true;
        }
        if (b8 != -1) {
            return true;
        }
        J1 j9 = this.f14453o;
        if (j9 != null) {
            j9.f14106I = j8;
            c2218x.f21780I = j9;
        }
        ((C1804p0) c2218x.f21779H).getClass();
        return false;
    }
}
