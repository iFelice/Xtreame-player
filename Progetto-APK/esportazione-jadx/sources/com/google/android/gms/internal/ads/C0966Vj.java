package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Vj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0966Vj extends AbstractC1666mI {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ScheduledExecutorService f17084H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final P3.a f17085I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public long f17086J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f17087K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public long f17088L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public long f17089M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f17090N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ScheduledFuture f17091O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ScheduledFuture f17092P;

    public C0966Vj(ScheduledExecutorService scheduledExecutorService, P3.a aVar) {
        super(Collections.emptySet());
        this.f17086J = -1L;
        this.f17087K = -1L;
        this.f17088L = -1L;
        this.f17089M = -1L;
        this.f17090N = false;
        this.f17084H = scheduledExecutorService;
        this.f17085I = aVar;
    }

    public final synchronized void a1(int i8) {
        if (i8 > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i8);
            if (this.f17090N) {
                long j8 = this.f17088L;
                if (j8 <= 0 || millis >= j8) {
                    millis = j8;
                }
                this.f17088L = millis;
                return;
            }
            ((P3.b) this.f17085I).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j9 = this.f17086J;
            if (jElapsedRealtime > j9 || j9 - jElapsedRealtime > millis) {
                c1(millis);
            }
        }
    }

    public final synchronized void b1(int i8) {
        if (i8 > 0) {
            long millis = TimeUnit.SECONDS.toMillis(i8);
            if (this.f17090N) {
                long j8 = this.f17089M;
                if (j8 <= 0 || millis >= j8) {
                    millis = j8;
                }
                this.f17089M = millis;
                return;
            }
            ((P3.b) this.f17085I).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j9 = this.f17087K;
            if (jElapsedRealtime > j9 || j9 - jElapsedRealtime > millis) {
                d1(millis);
            }
        }
    }

    public final synchronized void c1(long j8) {
        try {
            ScheduledFuture scheduledFuture = this.f17091O;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f17091O.cancel(false);
            }
            ((P3.b) this.f17085I).getClass();
            this.f17086J = SystemClock.elapsedRealtime() + j8;
            this.f17091O = this.f17084H.schedule(new RunnableC0952Uj(this), j8, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d1(long j8) {
        try {
            ScheduledFuture scheduledFuture = this.f17092P;
            int i8 = 0;
            if (scheduledFuture != null && !scheduledFuture.isDone()) {
                this.f17092P.cancel(false);
            }
            ((P3.b) this.f17085I).getClass();
            this.f17087K = SystemClock.elapsedRealtime() + j8;
            this.f17092P = this.f17084H.schedule(new RunnableC0952Uj(this, i8), j8, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zza() {
        this.f17090N = false;
        c1(0L);
    }
}
