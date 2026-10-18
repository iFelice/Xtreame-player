package com.google.android.gms.internal.ads;

import java.util.Objects;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1930rN extends AbstractC1723nN {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f20721e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f20722c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f20723d;

    public C1930rN(AbstractC0774Ie abstractC0774Ie, Object obj, Object obj2) {
        super(abstractC0774Ie);
        this.f20722c = obj;
        this.f20723d = obj2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1723nN, com.google.android.gms.internal.ads.AbstractC0774Ie
    public final int a(Object obj) {
        Object obj2;
        if (f20721e.equals(obj) && (obj2 = this.f20723d) != null) {
            obj = obj2;
        }
        return this.f20168b.a(obj);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C1521je d(int i8, C1521je c1521je, boolean z7) {
        this.f20168b.d(i8, c1521je, z7);
        if (Objects.equals(c1521je.f19466b, this.f20723d) && z7) {
            c1521je.f19466b = f20721e;
        }
        return c1521je;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0774Ie
    public final C2196we e(int i8, C2196we c2196we, long j8) {
        this.f20168b.e(i8, c2196we, j8);
        if (Objects.equals(c2196we.f21708a, this.f20722c)) {
            c2196we.f21708a = C2196we.f21706m;
        }
        return c2196we;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1723nN, com.google.android.gms.internal.ads.AbstractC0774Ie
    public final Object f(int i8) {
        Object objF = this.f20168b.f(i8);
        return Objects.equals(objF, this.f20723d) ? f20721e : objF;
    }
}
