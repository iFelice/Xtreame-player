package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Us implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Executor f16900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1625le f16901b;

    public Us(C1936re c1936re, C1625le c1625le) {
        this.f16900a = c1936re;
        this.f16901b = c1625le;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 10;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15584B2)).booleanValue() ? Cw.N1(null) : Cw.b2(this.f16901b.e(), new C2064u1(10), this.f16900a);
    }
}
