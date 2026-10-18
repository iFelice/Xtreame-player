package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1125bu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f18120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Yv f18121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p120p3.a f18122d;

    public C1125bu(Context context, C1936re c1936re, Yv yv, p120p3.a aVar) {
        this.f18119a = context;
        this.f18120b = c1936re;
        this.f18121c = yv;
        this.f18122d = aVar;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 53;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f18120b).b(new CallableC1419he(this, 21));
    }
}
