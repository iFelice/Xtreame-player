package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1745nu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f20204a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f20205b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p120p3.a f20206c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final String f20207d;

    public C1745nu(C1936re c1936re, Context context, p120p3.a aVar, String str) {
        this.f20204a = c1936re;
        this.f20205b = context;
        this.f20206c = aVar;
        this.f20207d = str;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 35;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f20204a).b(new CallableC1419he(this, 23));
    }
}
