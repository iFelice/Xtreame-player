package com.google.android.gms.internal.ads;

/* JADX INFO: loaded from: classes.dex */
public final class Ys {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f17662a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f17663b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17664c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadLocal f17665d = new ThreadLocal();

    public Ys() {
        f(0L);
    }

    public final synchronized long a(long j8) {
        try {
            if (!g()) {
                long jLongValue = this.f17662a;
                if (jLongValue == 9223372036854775806L) {
                    Long l4 = (Long) this.f17665d.get();
                    l4.getClass();
                    jLongValue = l4.longValue();
                }
                this.f17663b = jLongValue - j8;
                notifyAll();
            }
            this.f17664c = j8;
        } catch (Throwable th) {
            throw th;
        }
        return j8 + this.f17663b;
    }

    public final synchronized long b(long j8) {
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j9 = this.f17664c;
            if (j9 != -9223372036854775807L) {
                long j10 = (j9 * 90000) / 1000000;
                long j11 = (4294967296L + j10) / 8589934592L;
                long j12 = (((-1) + j11) * 8589934592L) + j8;
                long j13 = (j11 * 8589934592L) + j8;
                j8 = Math.abs(j12 - j10) < Math.abs(j13 - j10) ? j12 : j13;
            }
            return a((j8 * 1000000) / 90000);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c(long j8) {
        long j9;
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j10 = this.f17664c;
        if (j10 != -9223372036854775807L) {
            long j11 = (j10 * 90000) / 1000000;
            long j12 = j11 / 8589934592L;
            Long.signum(j12);
            long j13 = (j12 * 8589934592L) + j8;
            j9 = ((j12 + 1) * 8589934592L) + j8;
            if (j13 >= j11) {
                j9 = j13;
            }
        } else {
            j9 = j8;
        }
        return a((j9 * 1000000) / 90000);
    }

    public final synchronized long d() {
        long j8 = this.f17662a;
        if (j8 == Long.MAX_VALUE || j8 == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j8;
    }

    public final synchronized long e() {
        return this.f17663b;
    }

    public final synchronized void f(long j8) {
        this.f17662a = j8;
        this.f17663b = j8 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f17664c = -9223372036854775807L;
    }

    public final synchronized boolean g() {
        return this.f17663b != -9223372036854775807L;
    }
}
