package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1516jO implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f19463G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f19464H;

    public C1516jO(int i8, C1804p0 c1804p0) {
        this.f19463G = 1 == (c1804p0.f20375e & 1);
        this.f19464H = Cw.g0(i8, false);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final int compareTo(C1516jO c1516jO) {
        return AbstractC1710nA.f20074a.d(this.f19464H, c1516jO.f19464H).d(this.f19463G, c1516jO.f19463G).a();
    }
}
