package p117p0;

import android.os.SystemClock;

/* JADX INFO: renamed from: p0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3171i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3168f f28088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f28089b;

    public C3171i() {
        this(InterfaceC3168f.f28080a);
    }

    public final synchronized void a() {
        while (!this.f28089b) {
            this.f28088a.getClass();
            wait();
        }
    }

    public final synchronized boolean b(long j8) {
        try {
            if (j8 <= 0) {
                return this.f28089b;
            }
            ((G) this.f28088a).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j9 = j8 + jElapsedRealtime;
            if (j9 < jElapsedRealtime) {
                a();
            } else {
                while (!this.f28089b && jElapsedRealtime < j9) {
                    this.f28088a.getClass();
                    wait(j9 - jElapsedRealtime);
                    ((G) this.f28088a).getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                }
            }
            return this.f28089b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void c() {
        boolean z7 = false;
        while (!this.f28089b) {
            try {
                this.f28088a.getClass();
                wait();
            } catch (InterruptedException unused) {
                z7 = true;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
    }

    public final synchronized boolean d(long j8) {
        try {
            if (j8 <= 0) {
                return this.f28089b;
            }
            ((G) this.f28088a).getClass();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j9 = j8 + jElapsedRealtime;
            if (j9 < jElapsedRealtime) {
                c();
            } else {
                boolean z7 = false;
                while (!this.f28089b && jElapsedRealtime < j9) {
                    try {
                        this.f28088a.getClass();
                        wait(j9 - jElapsedRealtime);
                    } catch (InterruptedException unused) {
                        z7 = true;
                    }
                    ((G) this.f28088a).getClass();
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                }
                if (z7) {
                    Thread.currentThread().interrupt();
                }
            }
            return this.f28089b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e() {
        this.f28089b = false;
    }

    public final synchronized boolean f() {
        if (this.f28089b) {
            return false;
        }
        this.f28089b = true;
        notifyAll();
        return true;
    }

    public C3171i(InterfaceC3168f interfaceC3168f) {
        this.f28088a = interfaceC3168f;
    }
}
