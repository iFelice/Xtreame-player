package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yt, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2315yt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f22083a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f22084b;

    public C2315yt(Context context, C1936re c1936re) {
        this.f22083a = context;
        this.f22084b = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 18;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f22084b).b(new CallableC1419he(this, 14));
    }
}
