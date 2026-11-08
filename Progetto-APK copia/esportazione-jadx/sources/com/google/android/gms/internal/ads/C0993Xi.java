package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xi, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0993Xi extends AbstractC0763Hi {
    /* JADX WARN: Code duplicated, block: B:15:0x0033  */
    @Override // com.google.android.gms.internal.ads.InterfaceC2044ti
    public final void b(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        int i9 = this.f13774b.f16701c;
        if (i9 == 3) {
            i8 += i8;
        } else if (i9 == 4) {
            i8 /= 2;
        } else {
            if (i9 != 21) {
                if (i9 == 22) {
                    i8 /= 2;
                } else if (i9 != 268435456) {
                    if (i9 != 1342177280) {
                        if (i9 != 1610612736) {
                            throw new IllegalStateException();
                        }
                        i8 /= 2;
                    }
                }
            }
            i8 /= 3;
            i8 += i8;
        }
        ByteBuffer byteBufferD = d(i8);
        int i10 = this.f13774b.f16701c;
        if (i10 == 3) {
            while (iPosition < iLimit) {
                byteBufferD.put((byte) 0);
                byteBufferD.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i10 == 4) {
            while (iPosition < iLimit) {
                short sMax = (short) (Math.max(-1.0f, Math.min(byteBuffer.getFloat(iPosition), 1.0f)) * 32767.0f);
                byteBufferD.put((byte) (sMax & 255));
                byteBufferD.put((byte) ((sMax >> 8) & 255));
                iPosition += 4;
            }
        } else if (i10 == 21) {
            while (iPosition < iLimit) {
                byteBufferD.put(byteBuffer.get(iPosition + 1));
                byteBufferD.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i10 == 22) {
            while (iPosition < iLimit) {
                byteBufferD.put(byteBuffer.get(iPosition + 2));
                byteBufferD.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        } else if (i10 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferD.put(byteBuffer.get(iPosition + 1));
                byteBufferD.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i10 == 1342177280) {
            while (iPosition < iLimit) {
                byteBufferD.put(byteBuffer.get(iPosition + 1));
                byteBufferD.put(byteBuffer.get(iPosition));
                iPosition += 3;
            }
        } else {
            if (i10 != 1610612736) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                byteBufferD.put(byteBuffer.get(iPosition + 1));
                byteBufferD.put(byteBuffer.get(iPosition));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferD.flip();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0763Hi
    public final C0936Th c(C0936Th c0936Th) throws C1267ei {
        int i8 = c0936Th.f16701c;
        if (i8 != 3) {
            if (i8 == 2) {
                return C0936Th.f16698e;
            }
            if (i8 != 268435456 && i8 != 21 && i8 != 1342177280 && i8 != 22 && i8 != 1610612736 && i8 != 4) {
                throw new C1267ei(c0936Th);
            }
        }
        return new C0936Th(c0936Th.f16699a, c0936Th.f16700b, 2);
    }
}
