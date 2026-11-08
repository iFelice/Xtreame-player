package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1929rM extends AbstractC0763Hi {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f20720i = Float.floatToIntBits(Float.NaN);

    public static void h(ByteBuffer byteBuffer, int i8) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i8) * 4.656612875245797E-10d));
        if (iFloatToIntBits == f20720i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferD;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        int i9 = this.f13774b.f16701c;
        if (i9 == 21) {
            byteBufferD = d((i8 / 3) * 4);
            while (iPosition < iLimit) {
                h(byteBufferD, ((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24));
                iPosition += 3;
            }
        } else if (i9 == 22) {
            byteBufferD = d(i8);
            while (iPosition < iLimit) {
                int i10 = byteBuffer.get(iPosition) & 255;
                int i11 = (byteBuffer.get(iPosition + 1) & 255) << 8;
                h(byteBufferD, i10 | i11 | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24));
                iPosition += 4;
            }
        } else if (i9 == 1342177280) {
            byteBufferD = d((i8 / 3) * 4);
            while (iPosition < iLimit) {
                h(byteBufferD, ((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 3;
            }
        } else {
            if (i9 != 1610612736) {
                throw new IllegalStateException();
            }
            byteBufferD = d(i8);
            while (iPosition < iLimit) {
                int i12 = byteBuffer.get(iPosition + 3) & 255;
                int i13 = (byteBuffer.get(iPosition + 2) & 255) << 8;
                h(byteBufferD, i12 | i13 | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferD.flip();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final C0936Th c(C0936Th c0936Th) throws C1267ei {
        int i8 = Et.f13234a;
        int i9 = c0936Th.f16701c;
        if (i9 == 21 || i9 == 1342177280 || i9 == 22 || i9 == 1610612736) {
            return new C0936Th(c0936Th.f16699a, c0936Th.f16700b, 4);
        }
        if (i9 == 4) {
            return C0936Th.f16698e;
        }
        throw new C1267ei(c0936Th);
    }
}
