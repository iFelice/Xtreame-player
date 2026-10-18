package com.google.android.gms.internal.pal;

/* JADX INFO: loaded from: classes.dex */
public final class P1 extends Y1 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static volatile Long f23622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f23623i = new Object();

    public P1(A1 a8, L4 l4, int i8) {
        super(a8, "N0mA2OgFUnHXhnZTWHrO10/LZw/fChWm76LMkbZzvR9G3lxQkMoE65IWMn9zBWSu", "uxIInGM9FQ+1gujg5A7z9IJxIqStl6tvqqzSbuEi494=", l4, i8, 22);
    }

    @Override // com.google.android.gms.internal.pal.Y1
    public final void a() {
        if (f23622h == null) {
            synchronized (f23623i) {
                try {
                    if (f23622h == null) {
                        f23622h = (Long) this.f23702e.invoke(null, new Object[0]);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        synchronized (this.f23701d) {
            L4 l4 = this.f23701d;
            long jLongValue = f23622h.longValue();
            if (l4.f23476I) {
                l4.f();
                l4.f23476I = false;
            }
            C2765m0.r0((C2765m0) l4.f23475H, jLongValue);
        }
    }
}
