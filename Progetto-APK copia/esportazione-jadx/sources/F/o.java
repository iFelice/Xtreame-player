package F;

/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final o f2993k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2996c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2997d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f2999f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float[] f3000g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f3001h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f3002i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final float f3003j;

    static {
        float[] fArr = b.f2957c;
        float fC = (float) ((((double) b.c()) * 63.66197723675813d) / 100.0d);
        float[][] fArr2 = b.f2955a;
        float f8 = fArr[0];
        float[] fArr3 = fArr2[0];
        float f9 = fArr3[0] * f8;
        float f10 = fArr[1];
        float f11 = (fArr3[1] * f10) + f9;
        float f12 = fArr[2];
        float f13 = (fArr3[2] * f12) + f11;
        float[] fArr4 = fArr2[1];
        float f14 = (fArr4[2] * f12) + (fArr4[1] * f10) + (fArr4[0] * f8);
        float[] fArr5 = fArr2[2];
        float f15 = (f12 * fArr5[2]) + (f10 * fArr5[1]) + (f8 * fArr5[0]);
        float f16 = ((double) 1.0f) >= 0.9d ? 0.69f : 0.655f;
        float fExp = (1.0f - (((float) Math.exp(((-fC) - 42.0f) / 92.0f)) * 0.2777778f)) * 1.0f;
        double d6 = fExp;
        if (d6 > 1.0d) {
            fExp = 1.0f;
        } else if (d6 < 0.0d) {
            fExp = 0.0f;
        }
        float[] fArr6 = {(((100.0f / f13) * fExp) + 1.0f) - fExp, (((100.0f / f14) * fExp) + 1.0f) - fExp, (((100.0f / f15) * fExp) + 1.0f) - fExp};
        float f17 = 1.0f / ((5.0f * fC) + 1.0f);
        float f18 = f17 * f17 * f17 * f17;
        float f19 = 1.0f - f18;
        float fCbrt = (0.1f * f19 * f19 * ((float) Math.cbrt(((double) fC) * 5.0d))) + (f18 * fC);
        float fC2 = b.c() / fArr[1];
        double d8 = fC2;
        float fSqrt = ((float) Math.sqrt(d8)) + 1.48f;
        float fPow = 0.725f / ((float) Math.pow(d8, 0.2d));
        float[] fArr7 = {(float) Math.pow(((double) ((fArr6[0] * fCbrt) * f13)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[1] * fCbrt) * f14)) / 100.0d, 0.42d), (float) Math.pow(((double) ((fArr6[2] * fCbrt) * f15)) / 100.0d, 0.42d)};
        float f20 = fArr7[0];
        float f21 = (f20 * 400.0f) / (f20 + 27.13f);
        float f22 = fArr7[1];
        float f23 = (f22 * 400.0f) / (f22 + 27.13f);
        float f24 = fArr7[2];
        float[] fArr8 = {f21, f23, (400.0f * f24) / (f24 + 27.13f)};
        f2993k = new o(fC2, ((fArr8[2] * 0.05f) + (fArr8[0] * 2.0f) + fArr8[1]) * fPow, fPow, fPow, f16, 1.0f, fArr6, fCbrt, (float) Math.pow(fCbrt, 0.25d), fSqrt);
    }

    public o(float f8, float f9, float f10, float f11, float f12, float f13, float[] fArr, float f14, float f15, float f16) {
        this.f2999f = f8;
        this.f2994a = f9;
        this.f2995b = f10;
        this.f2996c = f11;
        this.f2997d = f12;
        this.f2998e = f13;
        this.f3000g = fArr;
        this.f3001h = f14;
        this.f3002i = f15;
        this.f3003j = f16;
    }
}
