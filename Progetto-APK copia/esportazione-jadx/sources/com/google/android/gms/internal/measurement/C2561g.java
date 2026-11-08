package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2561g implements InterfaceC2603n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Double f23130G;

    public C2561g(Double d6) {
        if (d6 == null) {
            this.f23130G = Double.valueOf(Double.NaN);
        } else {
            this.f23130G = d6;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2561g) {
            return this.f23130G.equals(((C2561g) obj).f23130G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23130G.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        if ("toString".equals(str)) {
            return new C2619q(zzi());
        }
        throw new IllegalArgumentException(A0.O.B(zzi(), ".", str, " is not a function."));
    }

    public final String toString() {
        return zzi();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return new C2561g(this.f23130G);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        Double d6 = this.f23130G;
        boolean z7 = false;
        if (!Double.isNaN(d6.doubleValue()) && d6.doubleValue() != 0.0d) {
            z7 = true;
        }
        return Boolean.valueOf(z7);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        return this.f23130G;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        Double d6 = this.f23130G;
        if (Double.isNaN(d6.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d6.doubleValue())) {
            return d6.doubleValue() > 0.0d ? "Infinity" : "-Infinity";
        }
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(d6.doubleValue());
        BigDecimal bigDecimal = (bigDecimalValueOf.signum() == 0 || bigDecimalValueOf.signum() == 0) ? new BigDecimal(BigInteger.ZERO, 0) : bigDecimalValueOf.stripTrailingZeros();
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((bigDecimal.scale() > 0 ? bigDecimal.precision() : bigDecimal.scale()) - 1);
        String str = decimalFormat.format(bigDecimal);
        int iIndexOf = str.indexOf("E");
        if (iIndexOf <= 0) {
            return str;
        }
        int i8 = Integer.parseInt(str.substring(iIndexOf + 1));
        return ((i8 >= 0 || i8 <= -7) && (i8 < 0 || i8 >= 21)) ? str.replace("E-", "e-").replace("E", "e+") : bigDecimal.toPlainString();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }
}
