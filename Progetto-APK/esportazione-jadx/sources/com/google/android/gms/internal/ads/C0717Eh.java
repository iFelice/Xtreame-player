package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Eh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0717Eh implements O5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ScheduledExecutorService f13167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final P3.a f13168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ScheduledFuture f13169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f13170d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f13171e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f13172f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13173g = false;

    public C0717Eh(ScheduledExecutorService scheduledExecutorService, P3.b bVar) {
        this.f13167a = scheduledExecutorService;
        this.f13168b = bVar;
        p083k3.l.f25980A.f25986f.n(this);
    }

    @Override // com.google.android.gms.internal.ads.O5
    public final void a(boolean z7) {
        ScheduledFuture scheduledFuture;
        if (!z7) {
            b();
            return;
        }
        synchronized (this) {
            try {
                if (this.f13173g) {
                    if (this.f13171e > 0 && (scheduledFuture = this.f13169c) != null && scheduledFuture.isCancelled()) {
                        this.f13169c = this.f13167a.schedule(this.f13172f, this.f13171e, TimeUnit.MILLISECONDS);
                    }
                    this.f13173g = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final synchronized void b() {
        try {
            if (this.f13173g) {
                return;
            }
            ScheduledFuture scheduledFuture = this.f13169c;
            if (scheduledFuture == null || scheduledFuture.isDone()) {
                this.f13171e = -1L;
            } else {
                this.f13169c.cancel(true);
                long j8 = this.f13170d;
                ((P3.b) this.f13168b).getClass();
                this.f13171e = j8 - SystemClock.elapsedRealtime();
            }
            this.f13173g = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c(int i8, RunnableC1177cv runnableC1177cv) {
        this.f13172f = runnableC1177cv;
        ((P3.b) this.f13168b).getClass();
        long j8 = i8;
        this.f13170d = SystemClock.elapsedRealtime() + j8;
        this.f13169c = this.f13167a.schedule(runnableC1177cv, j8, TimeUnit.MILLISECONDS);
    }
}
