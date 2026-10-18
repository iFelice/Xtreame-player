package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2264xu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f21947b;

    public C2264xu(Context context, C1936re c1936re) {
        this.f21946a = context;
        this.f21947b = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 59;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        if (!((Boolean) AbstractC1604l8.f19713b.l()).booleanValue()) {
            return Cw.N1(null);
        }
        return ((IB) this.f21947b).b(new CallableC1419he(this, 25));
    }
}
