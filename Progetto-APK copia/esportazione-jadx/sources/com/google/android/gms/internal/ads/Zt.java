package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class Zt implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2108uu f17811a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f17812b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ScheduledExecutorService f17813c;

    public Zt(InterfaceC2108uu interfaceC2108uu, long j8, ScheduledExecutorService scheduledExecutorService) {
        this.f17811a = interfaceC2108uu;
        this.f17812b = j8;
        this.f17813c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return this.f17811a.zza();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        D4.b bVarZzb = this.f17811a.zzb();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15798c2)).booleanValue()) {
            timeUnit = TimeUnit.MICROSECONDS;
        }
        long j8 = this.f17812b;
        if (j8 > 0) {
            bVarZzb = Cw.e2(bVarZzb, j8, timeUnit, this.f17813c);
        }
        return Cw.D1(bVarZzb, Throwable.class, new No(this, 14), AbstractC1988se.f20911f);
    }
}
