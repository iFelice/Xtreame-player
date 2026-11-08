package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Wi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0979Wi implements InterfaceC1838pj, InterfaceC0735Fk, InterfaceC1476ik, InterfaceC2305yj, G5 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C2357zj f17297G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Ov f17298H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ScheduledExecutorService f17299I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Executor f17300J;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ScheduledFuture f17302L;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final String f17304N;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C1816pC f17301K = new C1816pC();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final AtomicBoolean f17303M = new AtomicBoolean();

    public C0979Wi(C2357zj c2357zj, Ov ov, ScheduledExecutorService scheduledExecutorService, C1936re c1936re, String str) {
        this.f17297G = c2357zj;
        this.f17298H = ov;
        this.f17299I = scheduledExecutorService;
        this.f17300J = c1936re;
        this.f17304N = str;
    }

    @Override // com.google.android.gms.internal.ads.G5
    public final void F(F5 f8) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ma)).booleanValue() && this.f17304N.equals("com.google.ads.mediation.admob.AdMobAdapter") && f8.f13321j && this.f17303M.compareAndSet(false, true) && this.f17298H.f15254e != 3) {
            p113o3.I.k("Full screen 1px impression occurred");
            this.f17297G.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void a() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2305yj
    public final synchronized void d(C3117z0 c3117z0) {
        try {
            if (this.f17301K.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.f17302L;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f17301K.g(new Exception());
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void g(InterfaceC1211dd interfaceC1211dd, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zza() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1838pj
    public final void zzc() {
        Ov ov = this.f17298H;
        if (ov.f15254e == 3) {
            return;
        }
        int i8 = ov.f15244Y;
        if (i8 == 0 || i8 == 1) {
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.Ma)).booleanValue() && this.f17304N.equals("com.google.ads.mediation.admob.AdMobAdapter")) {
                return;
            }
            this.f17297G.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1476ik
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1476ik
    public final synchronized void zzj() {
        try {
            if (this.f17301K.isDone()) {
                return;
            }
            ScheduledFuture scheduledFuture = this.f17302L;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(true);
            }
            this.f17301K.f(Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzk() {
        Ov ov = this.f17298H;
        if (ov.f15254e == 3) {
            return;
        }
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15901o1)).booleanValue()) {
            int i8 = 2;
            if (ov.f15244Y == 2) {
                int i9 = ov.f15278q;
                if (i9 == 0) {
                    this.f17297G.zza();
                    return;
                }
                Cw.h2(this.f17301K, new C0864Of(this, i8), this.f17300J);
                this.f17302L = this.f17299I.schedule(new RunnableC0878Pf(this, 25), i9, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0735Fk
    public final void zzl() {
    }
}
