package com.google.android.gms.internal.pal;

import android.net.NetworkCapabilities;

/* JADX INFO: loaded from: classes.dex */
public final class Q1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C2805r1 f23626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f23627i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f23628j;

    public Q1(A1 a8, L4 l4, int i8, C2805r1 c2805r1, long j8, long j9) {
        super(a8, "X9PgbTHLX0FFxbl3gdPDuVwcglfXy5CDrzo8siaVNaH+OIJ6JI34Wu3QK5rLega4", "JLulXGPEHVwHK+0FG96HP9my+NvwpTQbwIaIZrjn9OU=", l4, i8, 11);
        this.f23626h = c2805r1;
        this.f23627i = j8;
        this.f23628j = j9;
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        C2805r1 c2805r1 = this.f23626h;
        if (c2805r1 != null) {
            C2798q1 c2798q1 = new C2798q1((String) this.f23702e.invoke(null, (NetworkCapabilities) c2805r1.f23994H, Long.valueOf(this.f23627i), Long.valueOf(this.f23628j)), 0);
            synchronized (this.f23701d) {
                try {
                    L4 l4 = this.f23701d;
                    long jLongValue = c2798q1.f23985b.longValue();
                    if (l4.f23476I) {
                        l4.f();
                        l4.f23476I = false;
                    }
                    C2765m0.k0((C2765m0) l4.f23475H, jLongValue);
                    if (((Long) c2798q1.f23986c).longValue() >= 0) {
                        L4 l8 = this.f23701d;
                        long jLongValue2 = ((Long) c2798q1.f23986c).longValue();
                        if (l8.f23476I) {
                            l8.f();
                            l8.f23476I = false;
                        }
                        C2765m0.L((C2765m0) l8.f23475H, jLongValue2);
                    }
                    if (((Long) c2798q1.f23987d).longValue() >= 0) {
                        L4 l9 = this.f23701d;
                        long jLongValue3 = ((Long) c2798q1.f23987d).longValue();
                        if (l9.f23476I) {
                            l9.f();
                            l9.f23476I = false;
                        }
                        C2765m0.N((C2765m0) l9.f23475H, jLongValue3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
