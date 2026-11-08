package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.sN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1982sN extends AbstractC0774Ie {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C2225x6 f20894b;

    public C1982sN(C2225x6 c2225x6) {
        this.f20894b = c2225x6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int a(Object obj) {
        return obj == C1930rN.f20721e ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int c() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je d(int i8, C1521je c1521je, boolean z7) {
        Integer num = z7 ? 0 : null;
        Object obj = z7 ? C1930rN.f20721e : null;
        T5 t7 = T5.f16590b;
        c1521je.b(num, obj, 0, -9223372036854775807L, true);
        return c1521je;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C2196we e(int i8, C2196we c2196we, long j8) {
        Object obj = C2196we.f21706m;
        c2196we.a(this.f20894b, false, true, null, -9223372036854775807L);
        c2196we.f21716i = true;
        return c2196we;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final Object f(int i8) {
        return C1930rN.f20721e;
    }
}
