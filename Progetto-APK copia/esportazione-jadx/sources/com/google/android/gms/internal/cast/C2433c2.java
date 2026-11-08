package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.c2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2433c2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2429b2 f22664a;

    public C2433c2(C2429b2 c2429b2) {
        Charset charset = AbstractC2481o2.f22763a;
        this.f22664a = c2429b2;
        c2429b2.f22651c = this;
    }

    public final void a(int i8, long j8) {
        this.f22664a.q0(i8, (j8 >> 63) ^ (j8 + j8));
    }

    public final void b(int i8, List list) {
        boolean z7 = list instanceof InterfaceC2492r2;
        int i9 = 0;
        C2429b2 c2429b2 = this.f22664a;
        if (!z7) {
            while (i9 < list.size()) {
                c2429b2.n0(i8, (String) list.get(i9));
                i9++;
            }
            return;
        }
        InterfaceC2492r2 interfaceC2492r2 = (InterfaceC2492r2) list;
        while (i9 < list.size()) {
            Object objD = interfaceC2492r2.d(i9);
            if (objD instanceof String) {
                c2429b2.n0(i8, (String) objD);
            } else {
                c2429b2.i0(i8, (Z1) objD);
            }
            i9++;
        }
    }

    public final void c(int i8, int i9) {
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0(i8 << 3);
        c2429b2.p0(i9);
    }

    public final void d(int i8, long j8) {
        this.f22664a.q0(i8, j8);
    }

    public final void e(int i8, boolean z7) {
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0(i8 << 3);
        c2429b2.g0(z7 ? (byte) 1 : (byte) 0);
    }

    public final void f(int i8, Z1 z7) {
        this.f22664a.i0(i8, z7);
    }

    public final void g(int i8, List list) {
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.f22664a.i0(i8, (Z1) list.get(i9));
        }
    }

    public final void h(int i8, double d6) {
        this.f22664a.l0(i8, Double.doubleToRawLongBits(d6));
    }

    public final void i(int i8, int i9) {
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0(i8 << 3);
        if (i9 >= 0) {
            c2429b2.p0(i9);
        } else {
            c2429b2.r0(i9);
        }
    }

    public final void j(int i8, int i9) {
        this.f22664a.j0(i8, i9);
    }

    public final void k(int i8, long j8) {
        this.f22664a.l0(i8, j8);
    }

    public final void l(int i8, float f8) {
        this.f22664a.j0(i8, Float.floatToRawIntBits(f8));
    }

    public final void m(int i8, M2 m7, Object obj) {
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.o0(i8, 3);
        m7.d((U1) obj, c2429b2.f22651c);
        c2429b2.o0(i8, 4);
    }

    public final void n(int i8, int i9) {
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0(i8 << 3);
        if (i9 >= 0) {
            c2429b2.p0(i9);
        } else {
            c2429b2.r0(i9);
        }
    }

    public final void o(int i8, long j8) {
        this.f22664a.q0(i8, j8);
    }

    public final void p(int i8, M2 m7, Object obj) {
        U1 u7 = (U1) obj;
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0((i8 << 3) | 2);
        c2429b2.p0(u7.a(m7));
        m7.d(u7, c2429b2.f22651c);
    }

    public final void q(int i8, int i9) {
        this.f22664a.j0(i8, i9);
    }

    public final void r(int i8, long j8) {
        this.f22664a.l0(i8, j8);
    }

    public final void s(int i8, int i9) {
        int i10 = (i9 >> 31) ^ (i9 + i9);
        C2429b2 c2429b2 = this.f22664a;
        c2429b2.p0(i8 << 3);
        c2429b2.p0(i10);
    }
}
