package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.qq, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1897qq implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC1845pq f20644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC2165vz f20645b;

    public C1897qq(InterfaceC1845pq interfaceC1845pq, C2064u1 c2064u1) {
        this.f20644a = interfaceC1845pq;
        this.f20645b = c2064u1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        return Cw.b2(this.f20644a.a(tv, ov), this.f20645b, AbstractC1988se.f20906a);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        return this.f20644a.b(tv, ov);
    }
}
