package p117p0;

import android.os.SystemClock;
import com.google.android.gms.internal.measurement.H1;
import java.math.RoundingMode;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class J {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28044a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f28045b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f28046c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ThreadLocal f28047d = new ThreadLocal();

    public J(long j8) {
        g(j8);
    }

    public final synchronized long a(long j8) {
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            if (!f()) {
                long jLongValue = this.f28044a;
                if (jLongValue == 9223372036854775806L) {
                    Long l4 = (Long) this.f28047d.get();
                    l4.getClass();
                    jLongValue = l4.longValue();
                }
                this.f28045b = jLongValue - j8;
                notifyAll();
            }
            this.f28046c = j8;
            return j8 + this.f28045b;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long b(long j8) {
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j9 = this.f28046c;
            if (j9 != -9223372036854775807L) {
                String str = M.f28050a;
                long jZ = M.Z(j9, 90000L, 1000000L, RoundingMode.DOWN);
                long j10 = (4294967296L + jZ) / 8589934592L;
                long j11 = ((j10 - 1) * 8589934592L) + j8;
                long j12 = (j10 * 8589934592L) + j8;
                j8 = Math.abs(j11 - jZ) < Math.abs(j12 - jZ) ? j11 : j12;
            }
            long j13 = j8;
            String str2 = M.f28050a;
            return a(M.Z(j13, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c(long j8) {
        if (j8 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j9 = this.f28046c;
        if (j9 != -9223372036854775807L) {
            String str = M.f28050a;
            long jZ = M.Z(j9, 90000L, 1000000L, RoundingMode.DOWN);
            long j10 = jZ / 8589934592L;
            Long.signum(j10);
            long j11 = (j10 * 8589934592L) + j8;
            j8 = j11 >= jZ ? j11 : ((j10 + 1) * 8589934592L) + j8;
        }
        long j12 = j8;
        String str2 = M.f28050a;
        return a(M.Z(j12, 1000000L, 90000L, RoundingMode.DOWN));
    }

    public final synchronized long d() {
        long j8;
        j8 = this.f28044a;
        if (j8 == Long.MAX_VALUE || j8 == 9223372036854775806L) {
            j8 = -9223372036854775807L;
        }
        return j8;
    }

    public final synchronized long e() {
        return this.f28045b;
    }

    public final synchronized boolean f() {
        return this.f28045b != -9223372036854775807L;
    }

    public final synchronized void g(long j8) {
        this.f28044a = j8;
        this.f28045b = j8 == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.f28046c = -9223372036854775807L;
    }

    public final synchronized void h(long j8, long j9, boolean z7) {
        try {
            H1.i(this.f28044a == 9223372036854775806L);
            if (f()) {
                return;
            }
            if (z7) {
                this.f28047d.set(Long.valueOf(j8));
            } else {
                long jElapsedRealtime = 0;
                long j10 = j9;
                while (!f()) {
                    if (j9 == 0) {
                        wait();
                    } else {
                        H1.i(j10 > 0);
                        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        wait(j10);
                        jElapsedRealtime += SystemClock.elapsedRealtime() - jElapsedRealtime2;
                        if (jElapsedRealtime >= j9 && !f()) {
                            throw new TimeoutException("TimestampAdjuster failed to initialize in " + j9 + " milliseconds");
                        }
                        j10 = j9 - jElapsedRealtime;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
