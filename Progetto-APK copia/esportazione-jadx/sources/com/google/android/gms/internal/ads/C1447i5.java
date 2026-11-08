package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.i5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1447i5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f19232h;

    public C1447i5(V4 v5, V3 v7, long j8, int i8) {
        super(v5, "MyezUX/G4B4IwyhTDkP3w1lDN+jx4NQ6UyU5K5beVZyubOhn8Q7qD9UAXT+3eaCC", "vDxCHtRyDtZtywG/lqG2i2wEAK0QRlsYMxcEu2Y9QxY=", v7, i8, 25);
        this.f19232h = j8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        long jLongValue = ((Long) this.f21036e.invoke(null, new Object[0])).longValue();
        synchronized (this.f21035d) {
            try {
                V3 v5 = this.f21035d;
                v5.d();
                C1496j4.i0((C1496j4) v5.f20255H, jLongValue);
                long j8 = this.f19232h;
                if (j8 != 0) {
                    V3 v7 = this.f21035d;
                    v7.d();
                    C1496j4.J0((C1496j4) v7.f20255H, jLongValue - j8);
                    V3 v8 = this.f21035d;
                    long j9 = this.f19232h;
                    v8.d();
                    C1496j4.M0((C1496j4) v8.f20255H, j9);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
