package com.google.android.gms.internal.cast;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2453h2 extends com.google.android.gms.internal.atv_ads_framework.D {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AbstractC2457i2 f22744G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public AbstractC2457i2 f22745H;

    public AbstractC2453h2(AbstractC2457i2 abstractC2457i2) {
        this.f22744G = abstractC2457i2;
        if (abstractC2457i2.g()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f22745H = (AbstractC2457i2) abstractC2457i2.h(4, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002b, code lost:
    
        if (r3 != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.cast.AbstractC2457i2 b() {
        /*
            r5 = this;
            com.google.android.gms.internal.cast.i2 r0 = r5.c()
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r0.h(r1, r2)
            java.lang.Byte r3 = (java.lang.Byte) r3
            byte r3 = r3.byteValue()
            if (r3 != r1) goto L13
            goto L2d
        L13:
            if (r3 == 0) goto L2e
            com.google.android.gms.internal.cast.J2 r3 = com.google.android.gms.internal.cast.J2.f22476c
            java.lang.Class r4 = r0.getClass()
            com.google.android.gms.internal.cast.M2 r3 = r3.a(r4)
            boolean r3 = r3.c(r0)
            if (r1 == r3) goto L26
            goto L27
        L26:
            r2 = r0
        L27:
            r1 = 2
            r0.h(r1, r2)
            if (r3 == 0) goto L2e
        L2d:
            return r0
        L2e:
            Y.r r0 = new Y.r
            r1 = 8
            r2 = 0
            r0.<init>(r1, r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.AbstractC2453h2.b():com.google.android.gms.internal.cast.i2");
    }

    public final AbstractC2457i2 c() {
        if (!this.f22745H.g()) {
            return this.f22745H;
        }
        AbstractC2457i2 abstractC2457i2 = this.f22745H;
        abstractC2457i2.getClass();
        J2.f22476c.a(abstractC2457i2.getClass()).a(abstractC2457i2);
        abstractC2457i2.d();
        return this.f22745H;
    }

    public final Object clone() {
        AbstractC2453h2 abstractC2453h2 = (AbstractC2453h2) this.f22744G.h(5, null);
        abstractC2453h2.f22745H = c();
        return abstractC2453h2;
    }

    public final void d() {
        if (this.f22745H.g()) {
            return;
        }
        AbstractC2457i2 abstractC2457i2 = (AbstractC2457i2) this.f22744G.h(4, null);
        J2.f22476c.a(abstractC2457i2.getClass()).b(abstractC2457i2, this.f22745H);
        this.f22745H = abstractC2457i2;
    }
}
