package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class UK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TK f16825a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SK f16826b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16827c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Object f16828d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Looper f16829e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f16830f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f16831g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f16832h;

    public UK(BK bk, AbstractC1048aK abstractC1048aK, Looper looper) {
        this.f16826b = bk;
        this.f16825a = abstractC1048aK;
        this.f16829e = looper;
    }

    public final void a() {
        p113o3.r.M(!this.f16830f);
        this.f16830f = true;
        BK bk = (BK) this.f16826b;
        synchronized (bk) {
            if (!bk.f12342d0 && bk.f12328P.getThread().isAlive()) {
                bk.f12326N.a(14, this).a();
                return;
            }
            Zo.f("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            b(false);
        }
    }

    public final synchronized void b(boolean z7) {
        this.f16831g = z7 | this.f16831g;
        this.f16832h = true;
        notifyAll();
    }

    public final synchronized void c(long j8) {
        try {
            p113o3.r.M(this.f16830f);
            p113o3.r.M(this.f16829e.getThread() != Thread.currentThread());
            long jElapsedRealtime = SystemClock.elapsedRealtime() + j8;
            while (!this.f16832h) {
                if (j8 <= 0) {
                    throw new TimeoutException("Message delivery timed out.");
                }
                wait(j8);
                j8 = jElapsedRealtime - SystemClock.elapsedRealtime();
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
