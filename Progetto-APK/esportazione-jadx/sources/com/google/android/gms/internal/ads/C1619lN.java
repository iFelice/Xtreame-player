package com.google.android.gms.internal.ads;

import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1619lN implements VN {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final VN f19786G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AbstractC2073uA f19787H;

    public C1619lN(VN vn, List list) {
        this.f19786G = vn;
        this.f19787H = AbstractC2073uA.t(list);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final void b(long j8) {
        this.f19786G.b(j8);
    }

    public final AbstractC2073uA c() {
        return this.f19787H;
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean j(EK ek) {
        return this.f19786G.j(ek);
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzb() {
        return this.f19786G.zzb();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final long zzc() {
        return this.f19786G.zzc();
    }

    @Override // com.google.android.gms.internal.ads.VN
    public final boolean zzp() {
        return this.f19786G.zzp();
    }
}
