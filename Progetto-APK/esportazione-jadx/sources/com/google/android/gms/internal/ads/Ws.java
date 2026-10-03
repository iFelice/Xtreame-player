package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Ws implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1625le f17332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final W3.i f17333b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f17334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f17335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f17336e;

    public Ws(Context context, C1625le c1625le, ScheduledExecutorService scheduledExecutorService, C1936re c1936re) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15624G2)).booleanValue()) {
            this.f17333b = new W3.i(context);
        }
        this.f17336e = context;
        this.f17332a = c1625le;
        this.f17334c = scheduledExecutorService;
        this.f17335d = c1936re;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 11;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        p052g4.h hVarA;
        J7 j8 = Q7.f15592C2;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            if (!((Boolean) c3099q.f26627c.a(Q7.f15632H2)).booleanValue()) {
                if (!((Boolean) c3099q.f26627c.a(Q7.f15600D2)).booleanValue()) {
                    return Cw.b2(com.bumptech.glide.c.B(this.f17333b.a()), new C2064u1(11), AbstractC1988se.f20911f);
                }
                if (((Boolean) c3099q.f26627c.a(Q7.f15624G2)).booleanValue()) {
                    AbstractC1487iw.a(this.f17336e, false);
                    synchronized (AbstractC1487iw.f19389c) {
                        hVarA = AbstractC1487iw.f19387a;
                    }
                } else {
                    hVarA = this.f17333b.a();
                }
                if (hVarA == null) {
                    return Cw.N1(new Xs(null, -1, 0));
                }
                D4.b bVarD2 = Cw.d2(com.bumptech.glide.c.B(hVarA), new C1422hh(18), AbstractC1988se.f20911f);
                if (((Boolean) c3099q.f26627c.a(Q7.f15608E2)).booleanValue()) {
                    bVarD2 = Cw.e2(bVarD2, ((Long) c3099q.f26627c.a(Q7.f15616F2)).longValue(), TimeUnit.MILLISECONDS, this.f17334c);
                }
                return Cw.w1(bVarD2, Exception.class, new C0917Sc(this, 5), this.f17335d);
            }
        }
        return Cw.N1(new Xs(null, -1, 0));
    }
}
