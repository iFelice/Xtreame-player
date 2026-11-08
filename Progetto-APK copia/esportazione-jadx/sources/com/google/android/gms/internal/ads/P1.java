package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class P1 extends p118p1.j {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final byte[] f15305o = {79, 112, 117, 115, 72, 101, 97, 100};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final byte[] f15306p = {79, 112, 117, 115, 84, 97, 103, 115};

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15307n;

    public static boolean i(C1534jr c1534jr, byte[] bArr) {
        if (c1534jr.o() < 8) {
            return false;
        }
        int i8 = c1534jr.f19516b;
        byte[] bArr2 = new byte[8];
        c1534jr.f(0, bArr2, 8);
        c1534jr.j(i8);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // p118p1.j
    public final long e(C1534jr c1534jr) {
        byte[] bArr = c1534jr.f19515a;
        return (((long) this.f28175e) * Q3.b.X(bArr[0], bArr.length > 1 ? bArr[1] : (byte) 0)) / 1000000;
    }

    @Override // p118p1.j
    public final void f(boolean z7) {
        super.f(z7);
        if (z7) {
            this.f15307n = false;
        }
    }

    @Override // p118p1.j
    public final boolean g(C1534jr c1534jr, long j8, C2218x c2218x) {
        if (i(c1534jr, f15305o)) {
            byte[] bArrCopyOf = Arrays.copyOf(c1534jr.f19515a, c1534jr.f19517c);
            int i8 = bArrCopyOf[9] & 255;
            ArrayList arrayListS = Q3.b.S(bArrCopyOf);
            if (((C1804p0) c2218x.f21779H) == null) {
                K k8 = new K();
                k8.f("audio/opus");
                k8.f14285z = i8;
                k8.f14253A = 48000;
                k8.f14274o = arrayListS;
                c2218x.f21779H = new C1804p0(k8);
                return true;
            }
        } else {
            if (!i(c1534jr, f15306p)) {
                p113o3.r.x((C1804p0) c2218x.f21779H);
                return false;
            }
            p113o3.r.x((C1804p0) c2218x.f21779H);
            if (!this.f15307n) {
                this.f15307n = true;
                c1534jr.k(8);
                Q9 q9P = a7.b.p(AbstractC2073uA.u((String[]) a7.b.r(c1534jr, false, false).f14301H));
                if (q9P != null) {
                    C1804p0 c1804p0 = (C1804p0) c2218x.f21779H;
                    c1804p0.getClass();
                    K k9 = new K(c1804p0);
                    k9.f14269j = q9P.e(((C1804p0) c2218x.f21779H).f20381k);
                    c2218x.f21779H = new C1804p0(k9);
                }
            }
        }
        return true;
    }
}
