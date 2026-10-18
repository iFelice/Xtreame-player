package com.google.android.gms.internal.atv_ads_framework;

/* JADX INFO: loaded from: classes.dex */
public final class F0 extends H0 {
    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final double a(Object obj, long j8) {
        return Double.longBitsToDouble(this.f22261a.getLong(obj, j8));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final float b(Object obj, long j8) {
        return Float.intBitsToFloat(this.f22261a.getInt(obj, j8));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final void c(Object obj, long j8, boolean z7) {
        if (I0.f22269g) {
            I0.b(obj, j8, z7 ? (byte) 1 : (byte) 0);
        } else {
            I0.c(obj, j8, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final void d(Object obj, long j8, byte b8) {
        if (I0.f22269g) {
            I0.b(obj, j8, b8);
        } else {
            I0.c(obj, j8, b8);
        }
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final void e(Object obj, long j8, double d6) {
        this.f22261a.putLong(obj, j8, Double.doubleToLongBits(d6));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final void f(Object obj, long j8, float f8) {
        this.f22261a.putInt(obj, j8, Float.floatToIntBits(f8));
    }

    @Override // com.google.android.gms.internal.atv_ads_framework.H0
    public final boolean g(Object obj, long j8) {
        return I0.f22269g ? I0.n(obj, j8) : I0.o(obj, j8);
    }
}
