package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Bu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f12511a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f12512b;

    public Bu(Context context, C1936re c1936re) {
        this.f12511a = c1936re;
        this.f12512b = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f12511a).b(new CallableC1419he(this, 26));
    }
}
