package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.mB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1659mB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f19917a = 0;

    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Code duplicated, block: B:37:? A[RETURN, SYNTHETIC] */
    public static int a(double d6, RoundingMode roundingMode) {
        boolean z7;
        boolean z8;
        boolean zC;
        AbstractC2987b.B0("x must be positive and finite", d6 > 0.0d && Cw.P0(d6));
        int exponent = Math.getExponent(d6);
        if (Math.getExponent(d6) < -1022) {
            return a(d6 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (AbstractC1607lB.f19722a[roundingMode.ordinal()]) {
            case 1:
                if (c(d6)) {
                    return exponent;
                }
                throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
            case 2:
                return exponent;
            case 3:
                z7 = !c(d6);
                if (!z7) {
                    return exponent;
                }
                return exponent + 1;
            case 4:
                z8 = exponent < 0;
                zC = c(d6);
                z7 = (!zC) & z8;
                if (!z7) {
                    return exponent;
                }
                return exponent + 1;
            case 5:
                z8 = exponent >= 0;
                zC = c(d6);
                z7 = (!zC) & z8;
                if (!z7) {
                    return exponent;
                }
                return exponent + 1;
            case 6:
            case 7:
            case 8:
                double dLongBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d6) & 4503599627370495L) | 4607182418800017408L);
                if (dLongBitsToDouble * dLongBitsToDouble <= 2.0d) {
                    return exponent;
                }
                return exponent + 1;
            default:
                throw new AssertionError();
        }
    }

    public static boolean b(double d6) {
        if (Cw.P0(d6)) {
            return d6 == 0.0d || 52 - Long.numberOfTrailingZeros(Cw.w(d6)) <= Math.getExponent(d6);
        }
        return false;
    }

    public static boolean c(double d6) {
        if (d6 > 0.0d && Cw.P0(d6)) {
            long jW = Cw.w(d6);
            if ((jW & ((-1) + jW)) == 0) {
                return true;
            }
        }
        return false;
    }
}
