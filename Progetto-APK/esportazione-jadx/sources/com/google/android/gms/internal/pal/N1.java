package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class N1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f23607h;

    public N1(A1 a8, L4 l4, long j8, int i8) {
        super(a8, "zwwnNjW/9dn+p0q/2u+mmA6XQB8+gtknmtJMKP3tBmoncBehPCILsKxRnck9yFjA", "vpqgk7W2OO4+emKKnTSxckIsP1c64LGVSWcdsnDvr3w=", l4, i8, 25);
        this.f23607h = j8;
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        long jLongValue = ((Long) this.f23702e.invoke(null, new Object[0])).longValue();
        synchronized (this.f23701d) {
            try {
                L4 l4 = this.f23701d;
                if (l4.f23476I) {
                    l4.f();
                    l4.f23476I = false;
                }
                C2765m0.T((C2765m0) l4.f23475H, jLongValue);
                long j8 = this.f23607h;
                if (j8 != 0) {
                    L4 l8 = this.f23701d;
                    long j9 = jLongValue - j8;
                    if (l8.f23476I) {
                        l8.f();
                        l8.f23476I = false;
                    }
                    C2765m0.p0((C2765m0) l8.f23475H, j9);
                    L4 l9 = this.f23701d;
                    long j10 = this.f23607h;
                    if (l9.f23476I) {
                        l9.f();
                        l9.f23476I = false;
                    }
                    C2765m0.s0((C2765m0) l9.f23475H, j10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
