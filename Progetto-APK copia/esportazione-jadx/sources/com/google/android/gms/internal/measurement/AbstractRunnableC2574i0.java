package com.google.android.gms.internal.measurement;

import android.os.SystemClock;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.i0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractRunnableC2574i0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f23160G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final long f23161H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f23162I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C2598m0 f23163J;

    public AbstractRunnableC2574i0(C2598m0 c2598m0, boolean z7) {
        this.f23163J = c2598m0;
        c2598m0.f23202b.getClass();
        this.f23160G = System.currentTimeMillis();
        c2598m0.f23202b.getClass();
        this.f23161H = SystemClock.elapsedRealtime();
        this.f23162I = z7;
    }

    public abstract void a();

    public void b() {
    }

    @Override // java.lang.Runnable
    public final void run() {
        C2598m0 c2598m0 = this.f23163J;
        if (c2598m0.f23205e) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e8) {
            c2598m0.a(e8, false, this.f23162I);
            b();
        }
    }
}
