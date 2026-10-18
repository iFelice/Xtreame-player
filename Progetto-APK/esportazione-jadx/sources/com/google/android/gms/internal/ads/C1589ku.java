package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.ku, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1589ku implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0890Qd f19668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f19670c;

    public C1589ku(C0890Qd c0890Qd, C1936re c1936re, Context context) {
        this.f19668a = c0890Qd;
        this.f19669b = c1936re;
        this.f19670c = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 34;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f19669b).b(new CallableC1419he(this, 22));
    }
}
