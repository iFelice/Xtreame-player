package p039f;

/* JADX INFO: loaded from: classes.dex */
public final class T {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static T f24989d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24990a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f24991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f24992c;

    public final void a(long j8, double d6, double d8) {
        float f8 = (j8 - 946728000000L) / 8.64E7f;
        float f9 = (0.01720197f * f8) + 6.24006f;
        double d9 = f9;
        double dSin = (Math.sin(f9 * 3.0f) * 5.236000106378924E-6d) + (Math.sin(2.0f * f9) * 3.4906598739326E-4d) + (Math.sin(d9) * 0.03341960161924362d) + d9 + 1.796593063d + 3.141592653589793d;
        double d10 = (-d8) / 360.0d;
        double dSin2 = (Math.sin(2.0d * dSin) * (-0.0069d)) + (Math.sin(d9) * 0.0053d) + ((double) (Math.round(((double) (f8 - 9.0E-4f)) - d10) + 9.0E-4f)) + d10;
        double dAsin = Math.asin(Math.sin(0.4092797040939331d) * Math.sin(dSin));
        double d11 = 0.01745329238474369d * d6;
        double dSin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(dAsin) * Math.sin(d11))) / (Math.cos(dAsin) * Math.cos(d11));
        if (dSin3 >= 1.0d) {
            this.f24990a = 1;
            this.f24991b = -1L;
            this.f24992c = -1L;
        } else {
            if (dSin3 <= -1.0d) {
                this.f24990a = 0;
                this.f24991b = -1L;
                this.f24992c = -1L;
                return;
            }
            double dAcos = (float) (Math.acos(dSin3) / 6.283185307179586d);
            this.f24991b = Math.round((dSin2 + dAcos) * 8.64E7d) + 946728000000L;
            long jRound = Math.round((dSin2 - dAcos) * 8.64E7d) + 946728000000L;
            this.f24992c = jRound;
            if (jRound >= j8 || this.f24991b <= j8) {
                this.f24990a = 1;
            } else {
                this.f24990a = 0;
            }
        }
    }
}
