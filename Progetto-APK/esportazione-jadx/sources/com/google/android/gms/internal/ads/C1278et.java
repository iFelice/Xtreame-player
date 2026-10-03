package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.et, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1278et implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f18615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f18616b;

    public C1278et(Context context, C1936re c1936re) {
        this.f18615a = c1936re;
        this.f18616b = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 13;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f18615a).b(new CallableC1419he(this, 11));
    }
}
