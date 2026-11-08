package com.google.android.gms.internal.pal;

import java.io.Serializable;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes.dex */
public final class X6 extends S6 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Serializable f23695G;

    public X6(Y6 y7) {
        this.f23695G = y7;
    }

    public static boolean n(X6 x7) {
        Serializable serializable = x7.f23695G;
        if (!(serializable instanceof Number)) {
            return false;
        }
        Number number = (Number) serializable;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    @Override // com.google.android.gms.internal.pal.S6
    public final int b() {
        return this.f23695G instanceof Number ? l().intValue() : Integer.parseInt(c());
    }

    @Override // com.google.android.gms.internal.pal.S6
    public final String c() {
        Serializable serializable = this.f23695G;
        if (serializable instanceof Number) {
            return l().toString();
        }
        return serializable instanceof Boolean ? ((Boolean) serializable).toString() : (String) serializable;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || X6.class != obj.getClass()) {
            return false;
        }
        X6 x7 = (X6) obj;
        if (n(this) && n(x7)) {
            return l().longValue() == x7.l().longValue();
        }
        Serializable serializable = this.f23695G;
        boolean z7 = serializable instanceof Number;
        Serializable serializable2 = x7.f23695G;
        if (!z7 || !(serializable2 instanceof Number)) {
            return serializable.equals(serializable2);
        }
        double dDoubleValue = l().doubleValue();
        double dDoubleValue2 = x7.l().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        if (n(this)) {
            jDoubleToLongBits = l().longValue();
        } else {
            Serializable serializable = this.f23695G;
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(l().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public final Number l() {
        Serializable serializable = this.f23695G;
        return serializable instanceof String ? new Y6((String) serializable) : (Number) serializable;
    }

    public X6(Boolean bool) {
        this.f23695G = bool;
    }

    public X6(String str) {
        str.getClass();
        this.f23695G = str;
    }
}
