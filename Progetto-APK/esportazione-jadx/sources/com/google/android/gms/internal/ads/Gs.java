package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Gs implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1951rt f13646a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Yv f13647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f13648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1625le f13649d;

    public Gs(C1951rt c1951rt, Yv yv, Context context, C1625le c1625le) {
        this.f13646a = c1951rt;
        this.f13647b = yv;
        this.f13648c = context;
        this.f13649d = c1625le;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        return Cw.b2(this.f13646a.zzb(), new C0917Sc(this, 4), AbstractC1988se.f20911f);
    }
}
