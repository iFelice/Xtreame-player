package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.r5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1912r5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f20675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f20676i = new Object();

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        if (f20675h == null) {
            synchronized (f20676i) {
                try {
                    if (f20675h == null) {
                        f20675h = (Long) this.f21036e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            long jLongValue = f20675h.longValue();
            v5.d();
            C1496j4.A((C1496j4) v5.f20255H, jLongValue);
        }
    }
}
