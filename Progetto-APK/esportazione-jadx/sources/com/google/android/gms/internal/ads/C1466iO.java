package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1466iO extends AbstractC1880qO implements Comparable {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f19302K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f19303L;

    public C1466iO(int i8, C0961Ve c0961Ve, int i9, C1620lO c1620lO, int i10) {
        super(i8, c0961Ve, i9);
        this.f19302K = Cw.g0(i10, c1620lO.f19794q) ? 1 : 0;
        this.f19303L = this.f20585J.a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final int a() {
        return this.f19302K;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1880qO
    public final /* bridge */ /* synthetic */ boolean b(AbstractC1880qO abstractC1880qO) {
        return false;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f19303L, ((C1466iO) obj).f19303L);
    }
}
