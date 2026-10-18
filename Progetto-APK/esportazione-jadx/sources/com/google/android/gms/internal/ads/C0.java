package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class C0 extends S {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Y f12531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ D0 f12532c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0(D0 d6, Y y7, Y y8) {
        super(y7);
        this.f12531b = y8;
        this.f12532c = d6;
    }

    @Override // com.google.android.gms.internal.ads.S, com.google.android.gms.internal.ads.Y
    public final X b(long j8) {
        X xB = this.f12531b.b(j8);
        Z z7 = xB.f17356a;
        long j9 = z7.f17702b;
        long j10 = this.f12532c.f12736G;
        Z z8 = new Z(z7.f17701a, j9 + j10);
        Z z9 = xB.f17357b;
        return new X(z8, new Z(z9.f17701a, z9.f17702b + j10));
    }
}
