package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes.dex */
public final class U2 extends V2 {
    @Override // com.google.android.gms.internal.cast.V2
    public final double a(Object obj, long j8) {
        return Double.longBitsToDouble(this.f22547a.getLong(obj, j8));
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final float b(Object obj, long j8) {
        return Float.intBitsToFloat(this.f22547a.getInt(obj, j8));
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final void c(Object obj, long j8, boolean z7) {
        if (W2.f22555g) {
            W2.b(obj, j8, z7 ? (byte) 1 : (byte) 0);
        } else {
            W2.c(obj, j8, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final void d(Object obj, long j8, byte b8) {
        if (W2.f22555g) {
            W2.b(obj, j8, b8);
        } else {
            W2.c(obj, j8, b8);
        }
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final void e(Object obj, long j8, double d6) {
        this.f22547a.putLong(obj, j8, Double.doubleToLongBits(d6));
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final void f(Object obj, long j8, float f8) {
        this.f22547a.putInt(obj, j8, Float.floatToIntBits(f8));
    }

    @Override // com.google.android.gms.internal.cast.V2
    public final boolean g(Object obj, long j8) {
        return W2.f22555g ? W2.n(obj, j8) : W2.o(obj, j8);
    }
}
