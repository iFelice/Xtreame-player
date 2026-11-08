package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Eu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f13247a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f13248b;

    public Eu(Context context, C1936re c1936re) {
        this.f13247a = c1936re;
        this.f13248b = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 39;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f13247a).b(new CallableC1419he(this, 27));
    }
}
