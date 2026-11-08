package U0;

import java.util.Arrays;

/* JADX INFO: renamed from: U0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0339e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f6734a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f6735b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f6736c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f6737d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f6738e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f6739f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean[] f6740g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f6741h;

    public C0339e(int i8) {
        if (i8 != 1) {
            this.f6740g = new boolean[15];
        } else {
            this.f6740g = new boolean[15];
        }
    }

    public final boolean a() {
        return this.f6737d > 15 && this.f6741h == 0;
    }

    public final void b(long j8) {
        long j9 = this.f6737d;
        if (j9 == 0) {
            this.f6734a = j8;
        } else if (j9 == 1) {
            long j10 = j8 - this.f6734a;
            this.f6735b = j10;
            this.f6739f = j10;
            this.f6738e = 1L;
        } else {
            long j11 = j8 - this.f6736c;
            int i8 = (int) (j9 % 15);
            long jAbs = Math.abs(j11 - this.f6735b);
            boolean[] zArr = this.f6740g;
            if (jAbs <= 1000000) {
                this.f6738e++;
                this.f6739f += j11;
                if (zArr[i8]) {
                    zArr[i8] = false;
                    this.f6741h--;
                }
            } else if (!zArr[i8]) {
                zArr[i8] = true;
                this.f6741h++;
            }
        }
        this.f6737d++;
        this.f6736c = j8;
    }

    public final void c() {
        this.f6737d = 0L;
        this.f6738e = 0L;
        this.f6739f = 0L;
        this.f6741h = 0;
        Arrays.fill(this.f6740g, false);
    }

    public final void d(long j8) {
        long j9 = this.f6737d;
        if (j9 == 0) {
            this.f6734a = j8;
        } else if (j9 == 1) {
            long j10 = j8 - this.f6734a;
            this.f6735b = j10;
            this.f6739f = j10;
            this.f6738e = 1L;
        } else {
            long j11 = j8 - this.f6736c;
            long jAbs = Math.abs(j11 - this.f6735b);
            boolean[] zArr = this.f6740g;
            int i8 = (int) (j9 % 15);
            if (jAbs <= 1000000) {
                this.f6738e++;
                this.f6739f += j11;
                if (zArr[i8]) {
                    zArr[i8] = false;
                    this.f6741h--;
                }
            } else if (!zArr[i8]) {
                zArr[i8] = true;
                this.f6741h++;
            }
        }
        this.f6737d++;
        this.f6736c = j8;
    }

    public final void e() {
        this.f6737d = 0L;
        this.f6738e = 0L;
        this.f6739f = 0L;
        this.f6741h = 0;
        Arrays.fill(this.f6740g, false);
    }

    public final boolean f() {
        return this.f6737d > 15 && this.f6741h == 0;
    }
}
