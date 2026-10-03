package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Fs implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13430a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f13431b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f13432c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Executor f13433d;

    public Fs(D4.b bVar, C1936re c1936re, ScheduledExecutorService scheduledExecutorService) {
        this.f13432c = bVar;
        this.f13433d = c1936re;
        this.f13431b = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        switch (this.f13430a) {
            case 0:
                return 6;
            case 1:
                return 43;
            default:
                return 44;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        int i8 = this.f13430a;
        ScheduledExecutorService scheduledExecutorService = this.f13431b;
        Executor executor = this.f13433d;
        switch (i8) {
            case 0:
                D4.b bVarD2 = Cw.d2((D4.b) this.f13432c, new C1422hh(16), executor);
                J7 j8 = Q7.Kb;
                C3099q c3099q = C3099q.f26624d;
                if (((Integer) c3099q.f26627c.a(j8)).intValue() > 0) {
                    bVarD2 = Cw.e2(bVarD2, ((Integer) c3099q.f26627c.a(j8)).intValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
                }
                return Cw.D1(bVarD2, Throwable.class, new C1422hh(17), executor);
            case 1:
                J7 j9 = Q7.f15592C2;
                C3099q c3099q2 = C3099q.f26624d;
                if (((Boolean) c3099q2.f26627c.a(j9)).booleanValue()) {
                    if (((Boolean) c3099q2.f26627c.a(Q7.f15632H2)).booleanValue()) {
                        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = (InterfaceExecutorServiceC1504jC) executor;
                        D4.b bVarD3 = Cw.d2(com.bumptech.glide.c.B(Cw.k(null)), new C1422hh(20), interfaceExecutorServiceC1504jC);
                        if (((Boolean) AbstractC1398h8.f19053a.l()).booleanValue()) {
                            bVarD3 = Cw.e2(bVarD3, ((Long) AbstractC1398h8.f19054b.l()).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService);
                        }
                        return Cw.w1(bVarD3, Exception.class, new C0917Sc(this, 6), interfaceExecutorServiceC1504jC);
                    }
                }
                return Cw.N1(new Xs(null, -1, 2));
            default:
                return Cw.w1((AbstractC1040aC) Cw.e2(Cw.b2(AbstractC1040aC.r(Cw.W1(new C2272y1(), executor)), new C2064u1(15), executor), ((Long) C3099q.f26624d.f26627c.a(Q7.f15685O0)).longValue(), TimeUnit.MILLISECONDS, scheduledExecutorService), Exception.class, new C0917Sc(this, 7), XB.f17385G);
        }
    }

    public Fs(C1625le c1625le, ScheduledExecutorService scheduledExecutorService, C1936re c1936re) {
        this.f13432c = c1625le;
        this.f13431b = scheduledExecutorService;
        this.f13433d = c1936re;
    }

    public Fs(C1625le c1625le, ScheduledExecutorService scheduledExecutorService, C1936re c1936re, int i8) {
        this.f13432c = c1625le;
        this.f13431b = scheduledExecutorService;
        this.f13433d = c1936re;
    }
}
