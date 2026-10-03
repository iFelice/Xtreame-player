package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Xt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f17526a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f17527b;

    public Xt(C1936re c1936re, Context context, Set set) {
        this.f17526a = c1936re;
        this.f17527b = set;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 27;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f17526a).b(new CallableC1419he(this, 20));
    }
}
