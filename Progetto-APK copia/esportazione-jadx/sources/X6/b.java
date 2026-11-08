package X6;

import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NumberFormat f7691a = NumberFormat.getNumberInstance();

    public static ArrayList a(double d6, double d8, int i8) {
        boolean z7;
        double d9;
        double d10;
        ArrayList arrayList;
        int i9;
        double[] dArr;
        ArrayList arrayList2 = new ArrayList();
        if (i8 <= 0) {
            return arrayList2;
        }
        NumberFormat numberFormat = f7691a;
        numberFormat.setMaximumFractionDigits(5);
        if (Math.abs(d6 - d8) < 1.0000000116860974E-7d) {
            dArr = new double[]{d6, d6, 0.0d};
            arrayList = arrayList2;
            i9 = 1;
        } else {
            if (d6 > d8) {
                d10 = d6;
                d9 = d8;
                z7 = true;
            } else {
                z7 = false;
                d9 = d6;
                d10 = d8;
            }
            double dAbs = Math.abs(d9 - d10) / ((double) i8);
            int iFloor = (int) Math.floor(Math.log10(dAbs));
            arrayList = arrayList2;
            double dPow = Math.pow(10.0d, -iFloor) * dAbs;
            if (dPow > 5.0d) {
                dPow = 10.0d;
            } else if (dPow > 2.0d) {
                dPow = 5.0d;
            } else if (dPow > 1.0d) {
                dPow = 2.0d;
            }
            double dPow2 = Math.pow(10.0d, iFloor) * dPow;
            double dCeil = Math.ceil(d9 / dPow2) * dPow2;
            double dFloor = Math.floor(d10 / dPow2) * dPow2;
            if (z7) {
                i9 = 1;
                dArr = new double[]{dFloor, dCeil, dPow2 * (-1.0d)};
            } else {
                i9 = 1;
                dArr = new double[]{dCeil, dFloor, dPow2};
            }
        }
        int i10 = ((int) ((dArr[i9] - dArr[0]) / dArr[2])) + i9;
        for (int i11 = 0; i11 < i10; i11++) {
            double dDoubleValue = (((double) i11) * dArr[2]) + dArr[0];
            try {
                dDoubleValue = numberFormat.parse(numberFormat.format(dDoubleValue)).doubleValue();
            } catch (ParseException unused) {
            }
            arrayList.add(Double.valueOf(dDoubleValue));
        }
        return arrayList;
    }
}
