package F;

import android.graphics.Color;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f2946a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f2947b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f2948c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f2949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f2950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f2951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final float f2952g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f2953h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f2954i;

    public a(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, int i8) {
        if (i8 != 1) {
            this.f2946a = f8;
            this.f2947b = f9;
            this.f2948c = f10;
            this.f2949d = f11;
            this.f2950e = f12;
            this.f2951f = f13;
            this.f2952g = f14;
            this.f2953h = f15;
            this.f2954i = f16;
            return;
        }
        this.f2946a = f8;
        this.f2947b = f11;
        this.f2948c = f14;
        this.f2949d = f9;
        this.f2950e = f12;
        this.f2951f = f15;
        this.f2952g = f10;
        this.f2953h = f13;
        this.f2954i = f16;
    }

    public static a a(int i8) {
        o oVar = o.f2993k;
        float fB = b.b(Color.red(i8));
        float fB2 = b.b(Color.green(i8));
        float fB3 = b.b(Color.blue(i8));
        float[][] fArr = b.f2958d;
        float[] fArr2 = fArr[0];
        float f8 = (fArr2[2] * fB3) + (fArr2[1] * fB2) + (fArr2[0] * fB);
        float[] fArr3 = fArr[1];
        float f9 = (fArr3[2] * fB3) + (fArr3[1] * fB2) + (fArr3[0] * fB);
        float[] fArr4 = fArr[2];
        float f10 = (fB3 * fArr4[2]) + (fB2 * fArr4[1]) + (fB * fArr4[0]);
        float[] fArr5 = {f8, f9, f10};
        float[][] fArr6 = b.f2955a;
        float[] fArr7 = fArr6[0];
        float f11 = (fArr7[2] * f10) + (fArr7[1] * f9) + (fArr7[0] * f8);
        float[] fArr8 = fArr6[1];
        float f12 = (fArr8[2] * f10) + (fArr8[1] * f9) + (fArr8[0] * f8);
        float[] fArr9 = fArr6[2];
        float f13 = (f10 * fArr9[2]) + (f9 * fArr9[1]) + (f8 * fArr9[0]);
        float[] fArr10 = oVar.f3000g;
        float f14 = fArr10[0] * f11;
        float f15 = fArr10[1] * f12;
        float f16 = fArr10[2] * f13;
        float fAbs = Math.abs(f14);
        float f17 = oVar.f3001h;
        float fPow = (float) Math.pow(((double) (fAbs * f17)) / 100.0d, 0.42d);
        float fPow2 = (float) Math.pow(((double) (Math.abs(f15) * f17)) / 100.0d, 0.42d);
        float fPow3 = (float) Math.pow(((double) (Math.abs(f16) * f17)) / 100.0d, 0.42d);
        float fSignum = ((Math.signum(f14) * 400.0f) * fPow) / (fPow + 27.13f);
        float fSignum2 = ((Math.signum(f15) * 400.0f) * fPow2) / (fPow2 + 27.13f);
        float fSignum3 = ((Math.signum(f16) * 400.0f) * fPow3) / (fPow3 + 27.13f);
        double d6 = fSignum3;
        float f18 = ((float) (((((double) fSignum2) * (-12.0d)) + (((double) fSignum) * 11.0d)) + d6)) / 11.0f;
        float f19 = ((float) (((double) (fSignum + fSignum2)) - (d6 * 2.0d))) / 9.0f;
        float f20 = fSignum2 * 20.0f;
        float f21 = ((21.0f * fSignum3) + ((fSignum * 20.0f) + f20)) / 20.0f;
        float f22 = (((fSignum * 40.0f) + f20) + fSignum3) / 20.0f;
        float fAtan2 = (((float) Math.atan2(f19, f18)) * 180.0f) / 3.1415927f;
        if (fAtan2 < 0.0f) {
            fAtan2 += 360.0f;
        } else if (fAtan2 >= 360.0f) {
            fAtan2 -= 360.0f;
        }
        float f23 = (3.1415927f * fAtan2) / 180.0f;
        float f24 = f22 * oVar.f2995b;
        float f25 = oVar.f2994a;
        double d8 = f24 / f25;
        float f26 = oVar.f3003j;
        float f27 = oVar.f2997d;
        float fPow4 = ((float) Math.pow(d8, f26 * f27)) * 100.0f;
        float f28 = f25 + 4.0f;
        float fSqrt = (4.0f / f27) * ((float) Math.sqrt(fPow4 / 100.0f)) * f28;
        float f29 = oVar.f3002i;
        float f30 = fSqrt * f29;
        float fPow5 = ((float) Math.pow(1.64d - Math.pow(0.29d, oVar.f2999f), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos(((((double) (((double) fAtan2) < 20.14d ? fAtan2 + 360.0f : fAtan2)) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * oVar.f2998e) * oVar.f2996c) * ((float) Math.sqrt((f19 * f19) + (f18 * f18)))) / (f21 + 0.305f), 0.9d));
        float fSqrt2 = ((float) Math.sqrt(((double) fPow4) / 100.0d)) * fPow5;
        float f31 = fSqrt2 * f29;
        float fSqrt3 = ((float) Math.sqrt((fPow5 * f27) / f28)) * 50.0f;
        float f32 = (1.7f * fPow4) / ((0.007f * fPow4) + 1.0f);
        float fLog = ((float) Math.log((0.0228f * f31) + 1.0f)) * 43.85965f;
        double d9 = f23;
        float fCos = fLog * ((float) Math.cos(d9));
        float fSin = fLog * ((float) Math.sin(d9));
        fArr5[0] = fAtan2;
        fArr5[1] = fSqrt2;
        return new a(fArr5[0], fArr5[1], fPow4, f30, f31, fSqrt3, f32, fCos, fSin, 0);
    }

    public static a b(float f8, float f9, float f10) {
        o oVar = o.f2993k;
        double d6 = ((double) f8) / 100.0d;
        float fSqrt = (4.0f / oVar.f2997d) * ((float) Math.sqrt(d6));
        float f11 = oVar.f2994a + 4.0f;
        float f12 = oVar.f3002i;
        float f13 = fSqrt * f11 * f12;
        float f14 = f9 * f12;
        float fSqrt2 = ((float) Math.sqrt(((f9 / ((float) Math.sqrt(d6))) * oVar.f2997d) / f11)) * 50.0f;
        float f15 = (1.7f * f8) / ((0.007f * f8) + 1.0f);
        float fLog = ((float) Math.log((((double) f14) * 0.0228d) + 1.0d)) * 43.85965f;
        double d8 = (3.1415927f * f10) / 180.0f;
        return new a(f10, f9, f8, f13, f14, fSqrt2, f15, fLog * ((float) Math.cos(d8)), fLog * ((float) Math.sin(d8)), 0);
    }

    public static a c(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, float f20, float f21, float f22, float f23) {
        a aVarD = d(f8, f9, f10, f11, f12, f13, f14, f15);
        float f24 = aVarD.f2950e;
        float f25 = aVarD.f2954i;
        float f26 = aVarD.f2951f;
        float f27 = aVarD.f2953h;
        float f28 = aVarD.f2952g;
        float f29 = aVarD.f2949d;
        float f30 = aVarD.f2948c;
        float f31 = aVarD.f2947b;
        float f32 = aVarD.f2946a;
        a aVar = new a((f24 * f25) - (f26 * f27), (f26 * f28) - (f29 * f25), (f29 * f27) - (f24 * f28), (f30 * f27) - (f31 * f25), (f25 * f32) - (f30 * f28), (f28 * f31) - (f27 * f32), (f31 * f26) - (f30 * f24), (f30 * f29) - (f26 * f32), (f32 * f24) - (f31 * f29), 1);
        a aVarD2 = d(f16, f17, f18, f19, f20, f21, f22, f23);
        float f33 = aVarD2.f2946a;
        float f34 = aVar.f2946a;
        float f35 = aVarD2.f2949d;
        float f36 = aVar.f2947b;
        float f37 = aVarD2.f2952g;
        float f38 = aVar.f2948c;
        float f39 = (f35 * f36) + (f33 * f34) + (f37 * f38);
        float f40 = aVar.f2949d;
        float f41 = aVar.f2950e;
        float f42 = aVar.f2951f;
        float f43 = (f35 * f41) + (f33 * f40) + (f37 * f42);
        float f44 = aVar.f2952g;
        float f45 = aVar.f2953h;
        float f46 = (f35 * f45) + (f33 * f44);
        float f47 = aVar.f2954i;
        float f48 = (f37 * f47) + f46;
        float f49 = aVarD2.f2947b;
        float f50 = aVarD2.f2950e;
        float f51 = aVarD2.f2953h;
        float f52 = (f51 * f38) + (f50 * f36) + (f49 * f34);
        float f53 = (f51 * f42) + (f50 * f41) + (f49 * f40);
        float f54 = (f50 * f45) + (f49 * f44) + (f51 * f47);
        float f55 = aVarD2.f2948c;
        float f56 = aVarD2.f2951f;
        float f57 = f36 * f56;
        float f58 = aVarD2.f2954i;
        return new a(f39, f43, f48, f52, f53, f54, (f38 * f58) + f57 + (f34 * f55), (f42 * f58) + (f41 * f56) + (f40 * f55), (f58 * f47) + (f56 * f45) + (f55 * f44), 1);
    }

    public static a d(float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        float f16 = ((f8 - f10) + f12) - f14;
        float f17 = ((f9 - f11) + f13) - f15;
        if (f16 == 0.0f && f17 == 0.0f) {
            return new a(f10 - f8, f12 - f10, f8, f11 - f9, f13 - f11, f9, 0.0f, 0.0f, 1.0f, 1);
        }
        float f18 = f10 - f12;
        float f19 = f14 - f12;
        float f20 = f11 - f13;
        float f21 = f15 - f13;
        float f22 = (f18 * f21) - (f19 * f20);
        float f23 = ((f21 * f16) - (f19 * f17)) / f22;
        float f24 = ((f18 * f17) - (f16 * f20)) / f22;
        return new a((f23 * f10) + (f10 - f8), (f24 * f14) + (f14 - f8), f8, (f23 * f11) + (f11 - f9), (f24 * f15) + (f15 - f9), f9, f23, f24, 1.0f, 1);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x001f  */
    public final int e(o oVar) {
        float fSqrt;
        float f8 = this.f2947b;
        double d6 = f8;
        float f9 = this.f2948c;
        if (d6 != 0.0d) {
            double d8 = f9;
            if (d8 == 0.0d) {
                fSqrt = 0.0f;
            } else {
                fSqrt = f8 / ((float) Math.sqrt(d8 / 100.0d));
            }
        } else {
            fSqrt = 0.0f;
        }
        float fPow = (float) Math.pow(((double) fSqrt) / Math.pow(1.64d - Math.pow(0.29d, oVar.f2999f), 0.73d), 1.1111111111111112d);
        double d9 = (this.f2946a * 3.1415927f) / 180.0f;
        float fCos = ((float) (Math.cos(2.0d + d9) + 3.8d)) * 0.25f;
        float fPow2 = oVar.f2994a * ((float) Math.pow(((double) f9) / 100.0d, (1.0d / ((double) oVar.f2997d)) / ((double) oVar.f3003j)));
        float f10 = fCos * 3846.1538f * oVar.f2998e * oVar.f2996c;
        float f11 = fPow2 / oVar.f2995b;
        float fSin = (float) Math.sin(d9);
        float fCos2 = (float) Math.cos(d9);
        float f12 = (((0.305f + f11) * 23.0f) * fPow) / (((fPow * 108.0f) * fSin) + (((11.0f * fPow) * fCos2) + (f10 * 23.0f)));
        float f13 = fCos2 * f12;
        float f14 = f12 * fSin;
        float f15 = f11 * 460.0f;
        float f16 = ((288.0f * f14) + ((451.0f * f13) + f15)) / 1403.0f;
        float f17 = ((f15 - (891.0f * f13)) - (261.0f * f14)) / 1403.0f;
        float f18 = ((f15 - (f13 * 220.0f)) - (f14 * 6300.0f)) / 1403.0f;
        float fMax = (float) Math.max(0.0d, (((double) Math.abs(f16)) * 27.13d) / (400.0d - ((double) Math.abs(f16))));
        float fSignum = Math.signum(f16);
        float f19 = 100.0f / oVar.f3001h;
        float fPow3 = fSignum * f19 * ((float) Math.pow(fMax, 2.380952380952381d));
        float fSignum2 = Math.signum(f17) * f19 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f17)) * 27.13d) / (400.0d - ((double) Math.abs(f17)))), 2.380952380952381d));
        float fSignum3 = Math.signum(f18) * f19 * ((float) Math.pow((float) Math.max(0.0d, (((double) Math.abs(f18)) * 27.13d) / (400.0d - ((double) Math.abs(f18)))), 2.380952380952381d));
        float[] fArr = oVar.f3000g;
        float f20 = fPow3 / fArr[0];
        float f21 = fSignum2 / fArr[1];
        float f22 = fSignum3 / fArr[2];
        float[][] fArr2 = b.f2956b;
        float[] fArr3 = fArr2[0];
        float f23 = (fArr3[2] * f22) + (fArr3[1] * f21) + (fArr3[0] * f20);
        float[] fArr4 = fArr2[1];
        float f24 = (fArr4[2] * f22) + (fArr4[1] * f21) + (fArr4[0] * f20);
        float[] fArr5 = fArr2[2];
        return G.a.a(f23, f24, (f22 * fArr5[2]) + (f21 * fArr5[1]) + (f20 * fArr5[0]));
    }
}
