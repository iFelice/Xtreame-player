package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ru, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1952ru implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f20805a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20806b;

    public C1952ru(Context context, C1936re c1936re) {
        this.f20805a = c1936re;
        this.f20806b = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 37;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f20805a).b(new CallableC1419he(this, 24));
    }
}
