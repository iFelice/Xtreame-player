package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p039f.AbstractC2987b;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ls implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f14569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1894qn f14570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1273eo f14571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Ns f14572d;

    public Ls(C1936re c1936re, C1894qn c1894qn, C1273eo c1273eo, Ns ns) {
        this.f14569a = c1936re;
        this.f14570b = c1894qn;
        this.f14571c = c1273eo;
        this.f14572d = ns;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        Ms ms;
        J7 j8 = Q7.Wa;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        Ns ns = this.f14572d;
        if (zBooleanValue && (ms = ns.f15095b) != null) {
            return Cw.N1(ms);
        }
        J7 j9 = Q7.f15859j1;
        O7 o7 = c3099q.f26627c;
        if (AbstractC2987b.j0((String) o7.a(j9)) || (!((Boolean) o7.a(j8)).booleanValue() && (ns.f15094a.get() || !this.f14571c.f18588b))) {
            return Cw.N1(new Ms(new Bundle()));
        }
        ns.f15094a.set(true);
        return ((IB) this.f14569a).b(new CallableC1419he(this, 7));
    }
}
