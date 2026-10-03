package B4;

import com.google.android.gms.internal.ads.Cw;
import java.math.RoundingMode;
import p190y4.k;

/* JADX INFO: loaded from: classes.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1215a = 0;

    static {
        Math.log(2.0d);
    }

    public static boolean a(double d6) {
        return k.P(d6) && (d6 == 0.0d || 52 - Long.numberOfTrailingZeros(k.K(d6)) <= Math.getExponent(d6));
    }

    public static boolean b(double d6) {
        if (d6 <= 0.0d || !k.P(d6)) {
            return false;
        }
        long jK = k.K(d6);
        return (jK & (jK - 1)) == 0;
    }

    /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
    public static int c(double d6, RoundingMode roundingMode) {
        boolean z7;
        boolean z8;
        boolean zB;
        k.o("x must be positive and finite", d6 > 0.0d && k.P(d6));
        int exponent = Math.getExponent(d6);
        if (Math.getExponent(d6) < -1022) {
            return c(d6 * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (b.f1214a[roundingMode.ordinal()]) {
            case 1:
                Cw.i(b(d6));
                return exponent;
            case 2:
                return exponent;
            case 3:
                z7 = !b(d6);
                if (!z7) {
                    return exponent;
                }
                return exponent + 1;
            case 4:
                z8 = exponent < 0;
                zB = b(d6);
                z7 = (!zB) & z8;
                if (!z7) {
                    return exponent;
                }
                return exponent + 1;
            case 5:
                z8 = exponent >= 0;
                zB = b(d6);
                z7 = (!zB) & z8;
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
}
