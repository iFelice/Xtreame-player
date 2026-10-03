package com.google.android.gms.internal.atv_ads_framework;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public final class M {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final L f22280a;

    public M(L l4) {
        Charset charset = Z.f22301a;
        this.f22280a = l4;
        l4.f22276c = this;
    }

    public final void a(int i8, long j8) {
        this.f22280a.U(i8, (j8 >> 63) ^ (j8 + j8));
    }

    public final void b(int i8, int i9) {
        L l4 = this.f22280a;
        l4.T(i8 << 3);
        l4.T(i9);
    }

    public final void c(int i8, long j8) {
        this.f22280a.U(i8, j8);
    }

    public final void d(int i8, boolean z7) {
        L l4 = this.f22280a;
        l4.T(i8 << 3);
        l4.K(z7 ? (byte) 1 : (byte) 0);
    }

    public final void e(int i8, J j8) {
        this.f22280a.M(i8, j8);
    }

    public final void f(int i8, double d6) {
        this.f22280a.P(i8, Double.doubleToRawLongBits(d6));
    }

    public final void g(int i8, int i9) {
        L l4 = this.f22280a;
        l4.T(i8 << 3);
        if (i9 >= 0) {
            l4.T(i9);
        } else {
            l4.V(i9);
        }
    }

    public final void h(int i8, int i9) {
        this.f22280a.N(i8, i9);
    }

    public final void i(int i8, long j8) {
        this.f22280a.P(i8, j8);
    }

    public final void j(int i8, float f8) {
        this.f22280a.N(i8, Float.floatToRawIntBits(f8));
    }

    public final void k(int i8, InterfaceC2418w0 interfaceC2418w0, Object obj) {
        L l4 = this.f22280a;
        l4.S(i8, 3);
        interfaceC2418w0.d((E) obj, l4.f22276c);
        l4.S(i8, 4);
    }

    public final void l(int i8, int i9) {
        L l4 = this.f22280a;
        l4.T(i8 << 3);
        if (i9 >= 0) {
            l4.T(i9);
        } else {
            l4.V(i9);
        }
    }

    public final void m(int i8, long j8) {
        this.f22280a.U(i8, j8);
    }

    public final void n(int i8, InterfaceC2418w0 interfaceC2418w0, Object obj) {
        E e8 = (E) obj;
        L l4 = this.f22280a;
        l4.T((i8 << 3) | 2);
        l4.T(e8.a(interfaceC2418w0));
        interfaceC2418w0.d(e8, l4.f22276c);
    }

    public final void o(int i8, int i9) {
        this.f22280a.N(i8, i9);
    }

    public final void p(int i8, long j8) {
        this.f22280a.P(i8, j8);
    }

    public final void q(int i8, int i9) {
        int i10 = (i9 >> 31) ^ (i9 + i9);
        L l4 = this.f22280a;
        l4.T(i8 << 3);
        l4.T(i10);
    }
}
