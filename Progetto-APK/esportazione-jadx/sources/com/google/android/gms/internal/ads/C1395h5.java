package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.h5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1395h5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f19051h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f19052i = new Object();

    public C1395h5(V4 v5, V3 v7, int i8) {
        super(v5, "CyzY1Dq9Z94V5QdB/DvLAvp7GpoAO1TL85fhRTvPR0h7u5BGepLTIyh10t/XTOrZ", "skGQhdInPY4sBMicxMlDA8FpM67X6t386GsGM5hjG6o=", v7, i8, 44);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        if (f19051h == null) {
            synchronized (f19052i) {
                try {
                    if (f19051h == null) {
                        f19051h = (Long) this.f21036e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            long jLongValue = f19051h.longValue();
            v5.d();
            C1496j4.J((C1496j4) v5.f20255H, jLongValue);
        }
    }
}
