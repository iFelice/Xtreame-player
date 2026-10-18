package com.google.android.gms.internal.measurement;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2553e3 extends AbstractC2559f3 {
    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final double a(Object obj, long j8) {
        return Double.longBitsToDouble(this.f23127a.getLong(obj, j8));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final float b(Object obj, long j8) {
        return Float.intBitsToFloat(this.f23127a.getInt(obj, j8));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final void c(Object obj, long j8, boolean z7) {
        if (AbstractC2565g3.f23142g) {
            AbstractC2565g3.b(obj, j8, z7 ? (byte) 1 : (byte) 0);
        } else {
            AbstractC2565g3.c(obj, j8, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final void d(Object obj, long j8, byte b8) {
        if (AbstractC2565g3.f23142g) {
            AbstractC2565g3.b(obj, j8, b8);
        } else {
            AbstractC2565g3.c(obj, j8, b8);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final void e(Object obj, long j8, double d6) {
        this.f23127a.putLong(obj, j8, Double.doubleToLongBits(d6));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final void f(Object obj, long j8, float f8) {
        this.f23127a.putInt(obj, j8, Float.floatToIntBits(f8));
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2559f3
    public final boolean g(Object obj, long j8) {
        return AbstractC2565g3.f23142g ? AbstractC2565g3.q(obj, j8) : AbstractC2565g3.r(obj, j8);
    }
}
