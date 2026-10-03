package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class Jt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14229a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewGroup f14230b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f14231c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Set f14232d;

    public Jt(C1936re c1936re, ViewGroup viewGroup, Context context, Set set) {
        this.f14229a = c1936re;
        this.f14232d = set;
        this.f14230b = viewGroup;
        this.f14231c = context;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 22;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return ((IB) this.f14229a).b(new CallableC1419he(this, 17));
    }
}
