package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2159vt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f21605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1997sn f21606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f21607c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Yv f21608d;

    public C2159vt(C1936re c1936re, C1997sn c1997sn, Yv yv, String str) {
        this.f21605a = c1936re;
        this.f21606b = c1997sn;
        this.f21608d = yv;
        this.f21607c = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 17;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f21605a).b(new CallableC1419he(this, 13));
    }
}
