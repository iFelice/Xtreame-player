package com.google.android.gms.internal.pal;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.f3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2712f3 extends AbstractC2864y4 {
    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public C2736i3 E(AbstractFutureC2744j3 abstractFutureC2744j3) {
        C2736i3 c2736i3;
        C2736i3 c2736i4 = C2736i3.f23854c;
        synchronized (abstractFutureC2744j3) {
            c2736i3 = abstractFutureC2744j3.f23883S;
            if (c2736i3 != c2736i4) {
                abstractFutureC2744j3.f23883S = c2736i4;
            }
        }
        return c2736i3;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public void W(C2736i3 c2736i3, C2736i3 c2736i4) {
        c2736i3.f23856b = c2736i4;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public void e0(C2736i3 c2736i3, Thread thread) {
        c2736i3.f23855a = thread;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public C2696d3 f(AbstractFutureC2744j3 abstractFutureC2744j3) {
        C2696d3 c2696d3;
        C2696d3 c2696d4 = C2696d3.f23776b;
        synchronized (abstractFutureC2744j3) {
            c2696d3 = abstractFutureC2744j3.f23882R;
            if (c2696d3 != c2696d4) {
                abstractFutureC2744j3.f23882R = c2696d4;
            }
        }
        return c2696d3;
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public boolean l0(AbstractFutureC2744j3 abstractFutureC2744j3, Object obj, Object obj2) {
        synchronized (abstractFutureC2744j3) {
            try {
                if (abstractFutureC2744j3.f23881Q != obj) {
                    return false;
                }
                abstractFutureC2744j3.f23881Q = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.pal.AbstractC2864y4
    public boolean p0(AbstractFutureC2744j3 abstractFutureC2744j3, C2736i3 c2736i3, C2736i3 c2736i4) {
        synchronized (abstractFutureC2744j3) {
            try {
                if (abstractFutureC2744j3.f23883S != c2736i3) {
                    return false;
                }
                abstractFutureC2744j3.f23883S = c2736i4;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
