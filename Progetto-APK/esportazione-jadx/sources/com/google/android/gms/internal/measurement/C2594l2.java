package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.l2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2594l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C2588k2 f23193a;

    public C2594l2(C2588k2 c2588k2) {
        Charset charset = AbstractC2666z2.f23416a;
        this.f23193a = c2588k2;
        c2588k2.f23179H = this;
    }

    public final void a(int i8, int i9) throws I0.u {
        this.f23193a.z(i8, (i9 >> 31) ^ (i9 + i9));
    }

    public final void b(int i8, long j8) throws I0.u {
        this.f23193a.B(i8, (j8 >> 63) ^ (j8 + j8));
    }

    public final void c(int i8, List list) throws I0.u {
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.f23193a.x(i8, (String) list.get(i9));
        }
    }

    public final void d(int i8, int i9) throws I0.u {
        this.f23193a.z(i8, i9);
    }

    public final void e(int i8, long j8) throws I0.u {
        this.f23193a.B(i8, j8);
    }

    public final void f(int i8, boolean z7) throws I0.u {
        IndexOutOfBoundsException indexOutOfBoundsException;
        C2588k2 c2588k2 = this.f23193a;
        c2588k2.A(i8 << 3);
        int i9 = c2588k2.f23182K;
        try {
            int i10 = i9 + 1;
            try {
                c2588k2.f23180I[i9] = z7 ? (byte) 1 : (byte) 0;
                c2588k2.f23182K = i10;
            } catch (IndexOutOfBoundsException e8) {
                indexOutOfBoundsException = e8;
                i9 = i10;
                throw new I0.u(i9, c2588k2.f23181J, 1, indexOutOfBoundsException);
            }
        } catch (IndexOutOfBoundsException e9) {
            indexOutOfBoundsException = e9;
        }
    }

    public final void g(int i8, AbstractC2576i2 abstractC2576i2) {
        this.f23193a.q(i8, abstractC2576i2);
    }

    public final void h(int i8, List list) throws I0.u {
        for (int i9 = 0; i9 < list.size(); i9++) {
            this.f23193a.q(i8, (AbstractC2576i2) list.get(i9));
        }
    }

    public final void i(int i8, double d6) throws I0.u {
        this.f23193a.t(i8, Double.doubleToRawLongBits(d6));
    }

    public final void j(int i8, int i9) throws I0.u {
        this.f23193a.v(i8, i9);
    }

    public final void k(int i8, int i9) {
        this.f23193a.r(i8, i9);
    }

    public final void l(int i8, long j8) {
        this.f23193a.t(i8, j8);
    }

    public final void m(int i8, float f8) throws I0.u {
        this.f23193a.r(i8, Float.floatToRawIntBits(f8));
    }

    public final void n(int i8, Y2 y7, Object obj) {
        C2588k2 c2588k2 = this.f23193a;
        c2588k2.y(i8, 3);
        y7.b((P2) obj, c2588k2.f23179H);
        c2588k2.y(i8, 4);
    }

    public final void o(int i8, int i9) throws I0.u {
        this.f23193a.v(i8, i9);
    }

    public final void p(int i8, long j8) {
        this.f23193a.B(i8, j8);
    }

    public final void q(int i8, Y2 y7, Object obj) throws I0.u {
        P2 p7 = (P2) obj;
        C2588k2 c2588k2 = this.f23193a;
        c2588k2.A((i8 << 3) | 2);
        c2588k2.A(((AbstractC2540c2) p7).a(y7));
        y7.b(p7, c2588k2.f23179H);
    }

    public final void r(int i8, int i9) throws I0.u {
        this.f23193a.r(i8, i9);
    }

    public final void s(int i8, long j8) throws I0.u {
        this.f23193a.t(i8, j8);
    }
}
