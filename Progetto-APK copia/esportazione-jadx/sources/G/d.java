package G;

import android.graphics.Path;
import android.util.Log;
import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public char f3281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f3282b;

    public d(char c8, float[] fArr) {
        this.f3281a = c8;
        this.f3282b = fArr;
    }

    public static void a(Path path, float f8, float f9, float f10, float f11, float f12, float f13, float f14, boolean z7, boolean z8) {
        double d6;
        double d8;
        double radians = Math.toRadians(f14);
        double dCos = Math.cos(radians);
        double dSin = Math.sin(radians);
        double d9 = f8;
        double d10 = f9;
        double d11 = (d10 * dSin) + (d9 * dCos);
        double d12 = d9;
        double d13 = f12;
        double d14 = d11 / d13;
        double d15 = f13;
        double d16 = ((d10 * dCos) + (((double) (-f8)) * dSin)) / d15;
        double d17 = d10;
        double d18 = f11;
        double d19 = ((d18 * dSin) + (((double) f10) * dCos)) / d13;
        double d20 = ((d18 * dCos) + (((double) (-f10)) * dSin)) / d15;
        double d21 = d14 - d19;
        double d22 = d16 - d20;
        double d23 = (d14 + d19) / 2.0d;
        double d24 = (d16 + d20) / 2.0d;
        double d25 = (d22 * d22) + (d21 * d21);
        if (d25 == 0.0d) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d26 = (1.0d / d25) - 0.25d;
        if (d26 < 0.0d) {
            Log.w("PathParser", "Points are too far apart " + d25);
            float fSqrt = (float) (Math.sqrt(d25) / 1.99999d);
            a(path, f8, f9, f10, f11, f12 * fSqrt, f13 * fSqrt, f14, z7, z8);
            return;
        }
        double dSqrt = Math.sqrt(d26);
        double d27 = d21 * dSqrt;
        double d28 = dSqrt * d22;
        if (z7 == z8) {
            d6 = d23 - d28;
            d8 = d24 + d27;
        } else {
            d6 = d23 + d28;
            d8 = d24 - d27;
        }
        double dAtan2 = Math.atan2(d16 - d8, d14 - d6);
        double dAtan3 = Math.atan2(d20 - d8, d19 - d6) - dAtan2;
        int i8 = 0;
        if (z8 != (dAtan3 >= 0.0d)) {
            dAtan3 = dAtan3 > 0.0d ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
        }
        double d29 = d6 * d13;
        double d30 = d8 * d15;
        double d31 = (d29 * dCos) - (d30 * dSin);
        double d32 = (d30 * dCos) + (d29 * dSin);
        int iCeil = (int) Math.ceil(Math.abs((dAtan3 * 4.0d) / 3.141592653589793d));
        double dCos2 = Math.cos(radians);
        double dSin2 = Math.sin(radians);
        double dCos3 = Math.cos(dAtan2);
        double dSin3 = Math.sin(dAtan2);
        double d33 = -d13;
        double d34 = d33 * dCos2;
        double d35 = d15 * dSin2;
        double d36 = (d34 * dSin3) - (d35 * dCos3);
        double d37 = d33 * dSin2;
        double d38 = d15 * dCos2;
        double d39 = (dCos3 * d38) + (dSin3 * d37);
        double d40 = dAtan3 / ((double) iCeil);
        double d41 = dAtan2;
        while (i8 < iCeil) {
            double d42 = d41 + d40;
            double dSin4 = Math.sin(d42);
            double dCos4 = Math.cos(d42);
            double d43 = d40;
            double d44 = (((d13 * dCos2) * dCos4) + d31) - (d35 * dSin4);
            double d45 = d31;
            double d46 = (d38 * dSin4) + (d13 * dSin2 * dCos4) + d32;
            double d47 = (d34 * dSin4) - (d35 * dCos4);
            double d48 = (dCos4 * d38) + (dSin4 * d37);
            double d49 = d42 - d41;
            double dTan = Math.tan(d49 / 2.0d);
            double dSqrt2 = ((Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d) * Math.sin(d49)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d36 * dSqrt2) + d12), (float) ((d39 * dSqrt2) + d17), (float) (d44 - (dSqrt2 * d47)), (float) (d46 - (dSqrt2 * d48)), (float) d44, (float) d46);
            i8++;
            d38 = d38;
            d37 = d37;
            iCeil = iCeil;
            dCos2 = dCos2;
            d41 = d42;
            d13 = d13;
            d39 = d48;
            d36 = d47;
            d12 = d44;
            d17 = d46;
            d40 = d43;
            d31 = d45;
        }
    }

    public static void b(d[] dVarArr, Path path) {
        int i8;
        int i9;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        float f18;
        float f19;
        d[] dVarArr2 = dVarArr;
        float[] fArr = new float[6];
        int length = dVarArr2.length;
        char c8 = 'm';
        int i10 = 0;
        while (i10 < length) {
            d dVar = dVarArr2[i10];
            char c9 = dVar.f3281a;
            float f20 = fArr[0];
            float f21 = fArr[1];
            float f22 = fArr[2];
            float f23 = fArr[3];
            float f24 = fArr[4];
            float f25 = fArr[5];
            switch (c9) {
                case 'A':
                case 'a':
                    i8 = 7;
                    break;
                case 'C':
                case 'c':
                    i8 = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i8 = 1;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i8 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f24, f25);
                    f20 = f24;
                    f22 = f20;
                    f21 = f25;
                    f23 = f21;
                default:
                    i8 = 2;
                    break;
            }
            float f26 = f24;
            float f27 = f25;
            float f28 = f20;
            float f29 = f21;
            int i11 = 0;
            while (true) {
                float[] fArr2 = dVar.f3282b;
                if (i11 < fArr2.length) {
                    if (c9 != 'A') {
                        if (c9 != 'C') {
                            if (c9 == 'H') {
                                i9 = i11;
                                c9 = c9;
                                i10 = i10;
                                length = length;
                                dVar = dVar;
                                path.lineTo(fArr2[i9], f29);
                                f28 = fArr2[i9];
                            } else if (c9 == 'Q') {
                                i9 = i11;
                                float f30 = fArr2[i9];
                                int i12 = i9 + 1;
                                float f31 = fArr2[i12];
                                int i13 = i9 + 2;
                                int i14 = i9 + 3;
                                path.quadTo(f30, f31, fArr2[i13], fArr2[i14]);
                                f8 = fArr2[i9];
                                f9 = fArr2[i12];
                                f28 = fArr2[i13];
                                f29 = fArr2[i14];
                            } else if (c9 == 'V') {
                                i9 = i11;
                                c9 = c9;
                                i10 = i10;
                                length = length;
                                dVar = dVar;
                                path.lineTo(f28, fArr2[i9]);
                                f29 = fArr2[i9];
                            } else if (c9 != 'a') {
                                if (c9 != 'c') {
                                    if (c9 != 'h') {
                                        if (c9 == 'q') {
                                            i9 = i11;
                                            float f32 = f29;
                                            float f33 = f28;
                                            int i15 = i9 + 1;
                                            int i16 = i9 + 2;
                                            int i17 = i9 + 3;
                                            path.rQuadTo(fArr2[i9], fArr2[i15], fArr2[i16], fArr2[i17]);
                                            float f34 = f33 + fArr2[i9];
                                            float f35 = fArr2[i15] + f32;
                                            float f36 = f33 + fArr2[i16];
                                            f29 = f32 + fArr2[i17];
                                            f23 = f35;
                                            f22 = f34;
                                            f28 = f36;
                                        } else if (c9 == 'v') {
                                            i9 = i11;
                                            path.rLineTo(0.0f, fArr2[i9]);
                                            f29 += fArr2[i9];
                                        } else if (c9 == 'L') {
                                            i9 = i11;
                                            int i18 = i9 + 1;
                                            path.lineTo(fArr2[i9], fArr2[i18]);
                                            f28 = fArr2[i9];
                                            f29 = fArr2[i18];
                                        } else if (c9 == 'M') {
                                            i9 = i11;
                                            f28 = fArr2[i9];
                                            f29 = fArr2[i9 + 1];
                                            if (i9 > 0) {
                                                path.lineTo(f28, f29);
                                            } else {
                                                path.moveTo(f28, f29);
                                                f27 = f29;
                                                f26 = f28;
                                            }
                                        } else if (c9 == 'S') {
                                            i9 = i11;
                                            float f37 = f29;
                                            float f38 = f28;
                                            if (c8 == 'c' || c8 == 's' || c8 == 'C' || c8 == 'S') {
                                                f14 = (f37 * 2.0f) - f23;
                                                f15 = (f38 * 2.0f) - f22;
                                            } else {
                                                f15 = f38;
                                                f14 = f37;
                                            }
                                            int i19 = i9 + 1;
                                            int i20 = i9 + 2;
                                            int i21 = i9 + 3;
                                            path.cubicTo(f15, f14, fArr2[i9], fArr2[i19], fArr2[i20], fArr2[i21]);
                                            float f39 = fArr2[i9];
                                            float f40 = fArr2[i19];
                                            f28 = fArr2[i20];
                                            f29 = fArr2[i21];
                                            f23 = f40;
                                            f22 = f39;
                                        } else if (c9 == 'T') {
                                            i9 = i11;
                                            float f41 = f29;
                                            float f42 = f28;
                                            if (c8 == 'q' || c8 == 't' || c8 == 'Q' || c8 == 'T') {
                                                f10 = (f42 * 2.0f) - f22;
                                                f11 = (f41 * 2.0f) - f23;
                                            } else {
                                                f10 = f42;
                                                f11 = f41;
                                            }
                                            int i22 = i9 + 1;
                                            path.quadTo(f10, f11, fArr2[i9], fArr2[i22]);
                                            f12 = fArr2[i9];
                                            f13 = fArr2[i22];
                                        } else if (c9 == 'l') {
                                            i9 = i11;
                                            int i23 = i9 + 1;
                                            path.rLineTo(fArr2[i9], fArr2[i23]);
                                            f28 += fArr2[i9];
                                            f29 += fArr2[i23];
                                        } else if (c9 == 'm') {
                                            i9 = i11;
                                            float f43 = fArr2[i9];
                                            f28 += f43;
                                            float f44 = fArr2[i9 + 1];
                                            f29 += f44;
                                            if (i9 > 0) {
                                                path.rLineTo(f43, f44);
                                            } else {
                                                path.rMoveTo(f43, f44);
                                                f27 = f29;
                                                f26 = f28;
                                            }
                                        } else if (c9 == 's') {
                                            if (c8 == 'c' || c8 == 's' || c8 == 'C' || c8 == 'S') {
                                                float f45 = f28 - f22;
                                                f16 = f29 - f23;
                                                f17 = f45;
                                            } else {
                                                f16 = 0.0f;
                                                f17 = 0.0f;
                                            }
                                            int i24 = i11 + 1;
                                            int i25 = i11 + 2;
                                            int i26 = i11 + 3;
                                            i9 = i11;
                                            float f46 = f29;
                                            float f47 = f28;
                                            path.rCubicTo(f17, f16, fArr2[i11], fArr2[i24], fArr2[i25], fArr2[i26]);
                                            f10 = f47 + fArr2[i9];
                                            f11 = f46 + fArr2[i24];
                                            f12 = f47 + fArr2[i25];
                                            f13 = fArr2[i26] + f46;
                                        } else if (c9 != 't') {
                                            i9 = i11;
                                        } else {
                                            if (c8 == 'q' || c8 == 't' || c8 == 'Q' || c8 == 'T') {
                                                f18 = f28 - f22;
                                                f19 = f29 - f23;
                                            } else {
                                                f19 = 0.0f;
                                                f18 = 0.0f;
                                            }
                                            int i27 = i11 + 1;
                                            path.rQuadTo(f18, f19, fArr2[i11], fArr2[i27]);
                                            float f48 = f18 + f28;
                                            float f49 = f19 + f29;
                                            f28 += fArr2[i11];
                                            f29 += fArr2[i27];
                                            f23 = f49;
                                            i9 = i11;
                                            f22 = f48;
                                        }
                                        dVar = dVar;
                                    } else {
                                        i9 = i11;
                                        path.rLineTo(fArr2[i9], 0.0f);
                                        f28 += fArr2[i9];
                                    }
                                    dVar = dVar;
                                } else {
                                    i9 = i11;
                                    float f50 = f29;
                                    float f51 = f28;
                                    int i28 = i9 + 2;
                                    int i29 = i9 + 3;
                                    int i30 = i9 + 4;
                                    int i31 = i9 + 5;
                                    path.rCubicTo(fArr2[i9], fArr2[i9 + 1], fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                                    f10 = f51 + fArr2[i28];
                                    f11 = f50 + fArr2[i29];
                                    f12 = f51 + fArr2[i30];
                                    f13 = fArr2[i31] + f50;
                                }
                                f23 = f11;
                                f22 = f10;
                                f28 = f12;
                                f29 = f13;
                                dVar = dVar;
                            } else {
                                i9 = i11;
                                float f52 = f29;
                                float f53 = f28;
                                int i32 = i9 + 5;
                                int i33 = i9 + 6;
                                a(path, f53, f52, fArr2[i32] + f53, fArr2[i33] + f52, fArr2[i9], fArr2[i9 + 1], fArr2[i9 + 2], fArr2[i9 + 3] != 0.0f, fArr2[i9 + 4] != 0.0f);
                                f28 = f53 + fArr2[i32];
                                f29 = f52 + fArr2[i33];
                            }
                            i11 = i9 + i8;
                            dVar = dVar;
                            length = length;
                            c8 = c9;
                            c9 = c8;
                            i10 = i10;
                        } else {
                            i9 = i11;
                            int i34 = i9 + 2;
                            int i35 = i9 + 3;
                            int i36 = i9 + 4;
                            int i37 = i9 + 5;
                            path.cubicTo(fArr2[i9], fArr2[i9 + 1], fArr2[i34], fArr2[i35], fArr2[i36], fArr2[i37]);
                            f28 = fArr2[i36];
                            f29 = fArr2[i37];
                            f8 = fArr2[i34];
                            f9 = fArr2[i35];
                        }
                        f22 = f8;
                        f23 = f9;
                        i11 = i9 + i8;
                        dVar = dVar;
                        length = length;
                        c8 = c9;
                        c9 = c8;
                        i10 = i10;
                    } else {
                        i9 = i11;
                        int i38 = i9 + 5;
                        int i39 = i9 + 6;
                        a(path, f28, f29, fArr2[i38], fArr2[i39], fArr2[i9], fArr2[i9 + 1], fArr2[i9 + 2], fArr2[i9 + 3] != 0.0f, fArr2[i9 + 4] != 0.0f);
                        f28 = fArr2[i38];
                        f29 = fArr2[i39];
                    }
                    f23 = f29;
                    f22 = f28;
                    i11 = i9 + i8;
                    dVar = dVar;
                    length = length;
                    c8 = c9;
                    c9 = c8;
                    i10 = i10;
                }
            }
            fArr[0] = f28;
            fArr[1] = f29;
            fArr[2] = f22;
            fArr[3] = f23;
            fArr[4] = f26;
            fArr[5] = f27;
            c8 = dVar.f3281a;
            i10++;
            dVarArr2 = dVarArr;
            length = length;
        }
    }

    public d(d dVar) {
        this.f3281a = dVar.f3281a;
        float[] fArr = dVar.f3282b;
        this.f3282b = H1.l(fArr, fArr.length);
    }
}
