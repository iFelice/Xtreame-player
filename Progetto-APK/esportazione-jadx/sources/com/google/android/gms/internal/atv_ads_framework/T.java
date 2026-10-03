package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public abstract class T extends D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final U f22291G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public U f22292H;

    public T(U u7) {
        this.f22291G = u7;
        if (u7.b()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f22292H = (U) u7.d(4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0026, code lost:
    
        if (r1 != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.atv_ads_framework.U b() {
        /*
            r3 = this;
            com.google.android.gms.internal.atv_ads_framework.U r0 = r3.c()
            r1 = 1
            java.lang.Object r2 = r0.d(r1)
            java.lang.Byte r2 = (java.lang.Byte) r2
            byte r2 = r2.byteValue()
            if (r2 != r1) goto L12
            goto L28
        L12:
            if (r2 == 0) goto L29
            com.google.android.gms.internal.atv_ads_framework.u0 r1 = com.google.android.gms.internal.atv_ads_framework.C2414u0.f22373c
            java.lang.Class r2 = r0.getClass()
            com.google.android.gms.internal.atv_ads_framework.w0 r1 = r1.a(r2)
            boolean r1 = r1.c(r0)
            r2 = 2
            r0.d(r2)
            if (r1 == 0) goto L29
        L28:
            return r0
        L29:
            Y.r r0 = new Y.r
            r1 = 7
            r2 = 0
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.atv_ads_framework.T.b():com.google.android.gms.internal.atv_ads_framework.U");
    }

    public final U c() {
        if (!this.f22292H.b()) {
            return this.f22292H;
        }
        U u7 = this.f22292H;
        u7.getClass();
        C2414u0.f22373c.a(u7.getClass()).a(u7);
        u7.i();
        return this.f22292H;
    }

    public final Object clone() {
        T t7 = (T) this.f22291G.d(5);
        t7.f22292H = c();
        return t7;
    }

    public final void d() {
        if (this.f22292H.b()) {
            return;
        }
        U u7 = (U) this.f22291G.d(4);
        C2414u0.f22373c.a(u7.getClass()).b(u7, this.f22292H);
        this.f22292H = u7;
    }
}
