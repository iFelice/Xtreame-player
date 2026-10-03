package B0;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class I0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final I0 f728c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f730b;

    static {
        I0 i8 = new I0(0L, 0L);
        new I0(Long.MAX_VALUE, Long.MAX_VALUE);
        new I0(Long.MAX_VALUE, 0L);
        new I0(0L, Long.MAX_VALUE);
        f728c = i8;
    }

    public I0(long j8, long j9) {
        H1.d(j8 >= 0);
        H1.d(j9 >= 0);
        this.f729a = j8;
        this.f730b = j9;
    }

    public final long a(long j8, long j9, long j10) {
        long j11 = this.f730b;
        long j12 = this.f729a;
        if (j12 == 0 && j11 == 0) {
            return j8;
        }
        String str = p117p0.M.f28050a;
        long j13 = j8 - j12;
        if (((j12 ^ j8) & (j8 ^ j13)) < 0) {
            j13 = Long.MIN_VALUE;
        }
        long j14 = j8 + j11;
        if (((j11 ^ j14) & (j8 ^ j14)) < 0) {
            j14 = Long.MAX_VALUE;
        }
        boolean z7 = false;
        boolean z8 = j13 <= j9 && j9 <= j14;
        if (j13 <= j10 && j10 <= j14) {
            z7 = true;
        }
        if (z8 && z7) {
            return Math.abs(j9 - j8) <= Math.abs(j10 - j8) ? j9 : j10;
        }
        if (z8) {
            return j9;
        }
        return z7 ? j10 : j13;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || I0.class != obj.getClass()) {
            return false;
        }
        I0 i8 = (I0) obj;
        return this.f729a == i8.f729a && this.f730b == i8.f730b;
    }

    public final int hashCode() {
        return (((int) this.f729a) * 31) + ((int) this.f730b);
    }
}
