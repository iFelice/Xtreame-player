package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1459iH {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1407hH f19290a;

    public C1459iH(AbstractC1407hH abstractC1407hH) {
        Charset charset = AbstractC2288yH.f22010a;
        if (abstractC1407hH == null) {
            throw new NullPointerException("output");
        }
        this.f19290a = abstractC1407hH;
        abstractC1407hH.f19077c = this;
    }

    public final void a(int i8, int i9) {
        this.f19290a.b0(i8, (i9 >> 31) ^ (i9 + i9));
    }

    public final void b(int i8, long j8) {
        this.f19290a.d0(i8, (j8 >> 63) ^ (j8 + j8));
    }

    public final void c(int i8, int i9) {
        this.f19290a.b0(i8, i9);
    }

    public final void d(int i8, long j8) {
        this.f19290a.d0(i8, j8);
    }

    public final void e(int i8, boolean z7) {
        this.f19290a.Q(i8, z7);
    }

    public final void f(int i8, XG xg) {
        this.f19290a.R(i8, xg);
    }

    public final void g(int i8, double d6) {
        this.f19290a.U(i8, Double.doubleToRawLongBits(d6));
    }

    public final void h(int i8, int i9) {
        this.f19290a.W(i8, i9);
    }

    public final void i(int i8, int i9) {
        this.f19290a.S(i8, i9);
    }

    public final void j(int i8, long j8) {
        this.f19290a.U(i8, j8);
    }

    public final void k(int i8, float f8) {
        this.f19290a.S(i8, Float.floatToRawIntBits(f8));
    }

    public final void l(int i8, InterfaceC1098bI interfaceC1098bI, Object obj) {
        AbstractC1407hH abstractC1407hH = this.f19290a;
        abstractC1407hH.a0(i8, 3);
        interfaceC1098bI.b((NH) obj, abstractC1407hH.f19077c);
        abstractC1407hH.a0(i8, 4);
    }

    public final void m(int i8, int i9) {
        this.f19290a.W(i8, i9);
    }

    public final void n(int i8, long j8) {
        this.f19290a.d0(i8, j8);
    }

    public final void o(int i8, InterfaceC1098bI interfaceC1098bI, Object obj) {
        this.f19290a.Y(i8, (NH) obj, interfaceC1098bI);
    }

    public final void p(int i8, int i9) {
        this.f19290a.S(i8, i9);
    }

    public final void q(int i8, long j8) {
        this.f19290a.U(i8, j8);
    }
}
