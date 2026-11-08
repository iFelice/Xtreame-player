package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class M1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f23600h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f23601i = new Object();

    public M1(A1 a8, L4 l4, int i8) {
        super(a8, "XFxH1z0dBuMDP7aWA+P/3WKwW9qr8sC2ASjEfciaKHfSLryjCNl4cmJgfsh2Tylb", "r0MNv9zqwvoUwASL1pBJjOA1OkDa8Kcs5NaA6VOkJEI=", l4, i8, 44);
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        if (f23600h == null) {
            synchronized (f23601i) {
                try {
                    if (f23600h == null) {
                        f23600h = (Long) this.f23702e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            long jLongValue = f23600h.longValue();
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.t((C2765m0) l4.f23475H, jLongValue);
        }
    }
}
