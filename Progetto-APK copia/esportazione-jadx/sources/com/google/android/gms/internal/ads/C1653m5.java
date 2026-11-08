package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.m5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1653m5 extends AbstractCallableC2016t5 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f19904h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f19905i = new Object();

    public C1653m5(V4 v5, V3 v7, int i8) {
        super(v5, "yTyv47DW9aV6rpyU1wL04puCd80cKdCTVtCqLwFmVTX0TBccJdZ4Z0bBqZNN3F0R", "JYsm/UNRvgpUWKzxuCnz29cSU61JkF5E/yr5Nm+WBTM=", v7, i8, 22);
    }

    @Override // com.google.android.gms.internal.ads.AbstractCallableC2016t5
    public final void a() {
        if (f19904h == null) {
            synchronized (f19905i) {
                try {
                    if (f19904h == null) {
                        f19904h = (Long) this.f21036e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f21035d) {
            V3 v5 = this.f21035d;
            long jLongValue = f19904h.longValue();
            v5.d();
            C1496j4.L0((C1496j4) v5.f20255H, jLongValue);
        }
    }
}
