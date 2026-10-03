package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ot, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1796ot implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1590kv f20340a;

    public C1796ot(C1590kv c1590kv) {
        this.f20340a = c1590kv;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 15;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        String str;
        C1744nt c1744nt = null;
        C1590kv c1590kv = this.f20340a;
        if (c1590kv != null && (str = c1590kv.f19671a) != null && !str.isEmpty()) {
            c1744nt = new C1744nt(this, 0);
        }
        return Cw.N1(c1744nt);
    }
}
