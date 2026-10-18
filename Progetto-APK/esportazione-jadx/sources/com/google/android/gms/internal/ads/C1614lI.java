package com.google.android.gms.internal.ads;

import libcore.io.Memory;
import sun.misc.Unsafe;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.lI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1614lI extends AbstractC1666mI {
    public C1614lI(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final byte J(long j8) {
        return Memory.peekByte(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final double M(Object obj, long j8) {
        return Double.longBitsToDouble(((Unsafe) this.f19929G).getLong(obj, j8));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final float Q0(Object obj, long j8) {
        return Float.intBitsToFloat(((Unsafe) this.f19929G).getInt(obj, j8));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final void R0(long j8, byte[] bArr, long j9, long j10) {
        Memory.peekByteArray(j8, bArr, (int) j9, (int) j10);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final void S0(Object obj, long j8, boolean z7) {
        if (AbstractC1718nI.f20160h) {
            AbstractC1718nI.c(obj, j8, z7 ? (byte) 1 : (byte) 0);
        } else {
            AbstractC1718nI.d(obj, j8, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final void T0(Object obj, long j8, byte b8) {
        if (AbstractC1718nI.f20160h) {
            AbstractC1718nI.c(obj, j8, b8);
        } else {
            AbstractC1718nI.d(obj, j8, b8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final void U0(Object obj, long j8, double d6) {
        ((Unsafe) this.f19929G).putLong(obj, j8, Double.doubleToLongBits(d6));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final void V0(Object obj, long j8, float f8) {
        ((Unsafe) this.f19929G).putInt(obj, j8, Float.floatToIntBits(f8));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1666mI
    public final boolean W0(Object obj, long j8) {
        return AbstractC1718nI.f20160h ? AbstractC1718nI.t(obj, j8) : AbstractC1718nI.u(obj, j8);
    }
}
