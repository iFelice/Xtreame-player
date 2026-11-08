package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0934Tf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ BinderC0948Uf f16691G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f16692H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f16693I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f16694J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ boolean f16695K;

    public /* synthetic */ RunnableC0934Tf(BinderC0948Uf binderC0948Uf, int i8, int i9, boolean z7, boolean z8) {
        this.f16691G = binderC0948Uf;
        this.f16692H = i8;
        this.f16693I = i9;
        this.f16694J = z7;
        this.f16695K = z8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8;
        boolean z7;
        boolean z8;
        p090l3.D0 d6;
        p090l3.D0 d8;
        p090l3.D0 d9;
        BinderC0948Uf binderC0948Uf = this.f16691G;
        int i9 = this.f16692H;
        int i10 = this.f16693I;
        boolean z9 = this.f16694J;
        boolean z10 = this.f16695K;
        synchronized (binderC0948Uf.f16858H) {
            try {
                boolean z11 = binderC0948Uf.f16863M;
                if (z11 || i10 != 1) {
                    i8 = i10;
                    z7 = false;
                } else {
                    i10 = 1;
                    i8 = 1;
                    z7 = true;
                }
                boolean z12 = i9 != i10;
                if (z12 && i8 == 1) {
                    z8 = true;
                    i8 = 1;
                } else {
                    z8 = false;
                }
                boolean z13 = z12 && i8 == 2;
                boolean z14 = z12 && i8 == 3;
                binderC0948Uf.f16863M = z11 || z7;
                if (z7) {
                    try {
                        p090l3.D0 d10 = binderC0948Uf.f16862L;
                        if (d10 != null) {
                            d10.zzi();
                        }
                    } catch (RemoteException e8) {
                        p120p3.h.i("#007 Could not call remote method.", e8);
                    }
                }
                if (z8 && (d9 = binderC0948Uf.f16862L) != null) {
                    d9.zzh();
                }
                if (z13 && (d8 = binderC0948Uf.f16862L) != null) {
                    d8.zzg();
                }
                if (z14) {
                    p090l3.D0 d11 = binderC0948Uf.f16862L;
                    if (d11 != null) {
                        d11.b();
                    }
                    binderC0948Uf.f16857G.p();
                }
                if (z9 != z10 && (d6 = binderC0948Uf.f16862L) != null) {
                    d6.K2(z10);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
