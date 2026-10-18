package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Wu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1625le f17338a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f17339b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f17340c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ScheduledExecutorService f17341d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f17342e;

    public Wu(C1625le c1625le, boolean z7, boolean z8, C1936re c1936re, ScheduledExecutorService scheduledExecutorService) {
        this.f17338a = c1625le;
        this.f17339b = z7;
        this.f17340c = z8;
        this.f17342e = c1936re;
        this.f17341d = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 50;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15596C6)).booleanValue() && this.f17340c) {
            return Cw.N1(null);
        }
        if (!this.f17339b) {
            return Cw.N1(null);
        }
        C1298fC c1298fCN1 = Cw.N1(null);
        C2064u1 c2064u1 = new C2064u1(17);
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f17342e;
        return Cw.w1(Cw.e2(Cw.b2(c1298fCN1, c2064u1, interfaceExecutorServiceC1504jC), ((Long) E8.f12942a.l()).longValue(), TimeUnit.MILLISECONDS, this.f17341d), Exception.class, new C0917Sc(this, 8), interfaceExecutorServiceC1504jC);
    }
}
