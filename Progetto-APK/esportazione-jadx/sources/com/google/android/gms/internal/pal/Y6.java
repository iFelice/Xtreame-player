package com.google.android.gms.internal.pal;

import java.math.BigDecimal;

/* JADX INFO: loaded from: classes.dex */
public final class Y6 extends Number {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f23709G;

    public Y6(String str) {
        this.f23709G = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f23709G);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Y6)) {
            return false;
        }
        Object obj2 = ((Y6) obj).f23709G;
        String str = this.f23709G;
        return str == obj2 || str.equals(obj2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f23709G);
    }

    public final int hashCode() {
        return this.f23709G.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f23709G;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return new BigDecimal(str).intValue();
            }
        } catch (NumberFormatException unused2) {
            return (int) Long.parseLong(str);
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f23709G;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f23709G;
    }
}
