package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class W1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f23681h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f23682i = new Object();

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        if (f23681h == null) {
            synchronized (f23682i) {
                try {
                    if (f23681h == null) {
                        f23681h = (Long) this.f23702e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            long jLongValue = f23681h.longValue();
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.x0((C2765m0) l4.f23475H, jLongValue);
        }
    }
}
