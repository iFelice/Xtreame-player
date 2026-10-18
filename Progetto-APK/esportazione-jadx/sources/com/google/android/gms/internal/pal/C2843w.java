package com.google.android.gms.internal.pal;

import java.nio.charset.Charset;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2843w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2835v f24050a;

    public C2843w(C2835v c2835v) {
        Charset charset = J.f23560a;
        this.f24050a = c2835v;
        c2835v.f24028Q = this;
    }

    public final void a(int i8, int i9) throws I0.u {
        int i10 = (i9 >> 31) ^ (i9 + i9);
        C2835v c2835v = this.f24050a;
        c2835v.T0(i8 << 3);
        c2835v.T0(i10);
    }

    public final void b(int i8, long j8) throws I0.u {
        this.f24050a.U0(i8, (j8 >> 63) ^ (j8 + j8));
    }

    public final void c(int i8, int i9) throws I0.u {
        C2835v c2835v = this.f24050a;
        c2835v.T0(i8 << 3);
        c2835v.T0(i9);
    }

    public final void d(int i8, long j8) throws I0.u {
        this.f24050a.U0(i8, j8);
    }

    public final void e(int i8, boolean z7) throws I0.u {
        C2835v c2835v = this.f24050a;
        c2835v.T0(i8 << 3);
        c2835v.K0(z7 ? (byte) 1 : (byte) 0);
    }

    public final void f(int i8, r rVar) {
        this.f24050a.M0(i8, rVar);
    }

    public final void g(int i8, double d6) throws I0.u {
        this.f24050a.P0(i8, Double.doubleToRawLongBits(d6));
    }

    public final void h(int i8, int i9) throws I0.u {
        C2835v c2835v = this.f24050a;
        c2835v.T0(i8 << 3);
        if (i9 >= 0) {
            c2835v.T0(i9);
        } else {
            c2835v.V0(i9);
        }
    }

    public final void i(int i8, int i9) {
        this.f24050a.N0(i8, i9);
    }

    public final void j(int i8, long j8) {
        this.f24050a.P0(i8, j8);
    }

    public final void k(int i8, float f8) throws I0.u {
        this.f24050a.N0(i8, Float.floatToRawIntBits(f8));
    }

    public final void l(int i8, InterfaceC2749k0 interfaceC2749k0, Object obj) {
        C2835v c2835v = this.f24050a;
        c2835v.S0(i8, 3);
        interfaceC2749k0.b((AbstractC2740j) obj, c2835v.f24028Q);
        c2835v.S0(i8, 4);
    }

    public final void m(int i8, int i9) throws I0.u {
        C2835v c2835v = this.f24050a;
        c2835v.T0(i8 << 3);
        if (i9 >= 0) {
            c2835v.T0(i9);
        } else {
            c2835v.V0(i9);
        }
    }

    public final void n(int i8, long j8) {
        this.f24050a.U0(i8, j8);
    }

    public final void o(int i8, InterfaceC2749k0 interfaceC2749k0, Object obj) throws I0.u {
        AbstractC2740j abstractC2740j = (AbstractC2740j) obj;
        C2835v c2835v = this.f24050a;
        c2835v.T0((i8 << 3) | 2);
        D d6 = (D) abstractC2740j;
        int iZza = d6.zzd;
        if (iZza == -1) {
            iZza = interfaceC2749k0.zza(abstractC2740j);
            d6.zzd = iZza;
        }
        c2835v.T0(iZza);
        interfaceC2749k0.b(abstractC2740j, c2835v.f24028Q);
    }

    public final void p(int i8, int i9) throws I0.u {
        this.f24050a.N0(i8, i9);
    }

    public final void q(int i8, long j8) throws I0.u {
        this.f24050a.P0(i8, j8);
    }
}
