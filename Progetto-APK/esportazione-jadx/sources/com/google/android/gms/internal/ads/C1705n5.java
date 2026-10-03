package com.google.android.gms.internal.ads;

import android.net.NetworkCapabilities;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.n5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1705n5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final K4 f20067h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f20068i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f20069j;

    public C1705n5(V4 v5, V3 v7, int i8, K4 k8, long j8, long j9) {
        super(v5, "AFi1XUlQ2wB7zUl3EOk1zuEn8ZOxUh72pRw/0ERKEaN1JtcMwtQuK14gG9CY64a/", "Q54q2JslusSv8X8AsH7nKgnoWyF6GsnL4uj/9o5E5cc=", v7, i8, 11);
        this.f20067h = k8;
        this.f20068i = j8;
        this.f20069j = j9;
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        K4 k8 = this.f20067h;
        if (k8 != null) {
            J4 j8 = new J4((String) this.f21036e.invoke(null, (NetworkCapabilities) k8.f14301H, Long.valueOf(this.f20068i), Long.valueOf(this.f20069j)), 0);
            synchronized (this.f21035d) {
                try {
                    V3 v5 = this.f21035d;
                    long jLongValue = j8.f14121b.longValue();
                    v5.d();
                    C1496j4.E0((C1496j4) v5.f20255H, jLongValue);
                    if (((Long) j8.f14122c).longValue() >= 0) {
                        V3 v7 = this.f21035d;
                        long jLongValue2 = ((Long) j8.f14122c).longValue();
                        v7.d();
                        C1496j4.b0((C1496j4) v7.f20255H, jLongValue2);
                    }
                    if (((Long) j8.f14123d).longValue() >= 0) {
                        V3 v8 = this.f21035d;
                        long jLongValue3 = ((Long) j8.f14123d).longValue();
                        v8.d();
                        C1496j4.c0((C1496j4) v8.f20255H, jLongValue3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
