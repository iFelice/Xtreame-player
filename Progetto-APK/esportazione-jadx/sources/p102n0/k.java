package p102n0;

import java.nio.ByteBuffer;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class k extends h {
    /* JADX WARN: Code duplicated, block: B:15:0x0034  */
    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        int i9 = this.f27327b.f27324c;
        if (i9 == 3) {
            i8 *= 2;
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
            i8 *= 2;
        }
        ByteBuffer byteBufferK = k(i8);
        int i10 = this.f27327b.f27324c;
        if (i10 == 3) {
            while (iPosition < iLimit) {
                byteBufferK.put((byte) 0);
                byteBufferK.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        } else if (i10 == 4) {
            while (iPosition < iLimit) {
                short sH = (short) (M.h(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                byteBufferK.put((byte) (sH & 255));
                byteBufferK.put((byte) ((sH >> 8) & 255));
                iPosition += 4;
            }
        } else if (i10 == 21) {
            while (iPosition < iLimit) {
                byteBufferK.put(byteBuffer.get(iPosition + 1));
                byteBufferK.put(byteBuffer.get(iPosition + 2));
                iPosition += 3;
            }
        } else if (i10 == 22) {
            while (iPosition < iLimit) {
                byteBufferK.put(byteBuffer.get(iPosition + 2));
                byteBufferK.put(byteBuffer.get(iPosition + 3));
                iPosition += 4;
            }
        } else if (i10 == 268435456) {
            while (iPosition < iLimit) {
                byteBufferK.put(byteBuffer.get(iPosition + 1));
                byteBufferK.put(byteBuffer.get(iPosition));
                iPosition += 2;
            }
        } else if (i10 == 1342177280) {
            while (iPosition < iLimit) {
                byteBufferK.put(byteBuffer.get(iPosition + 1));
                byteBufferK.put(byteBuffer.get(iPosition));
                iPosition += 3;
            }
        } else {
            if (i10 != 1610612736) {
                throw new IllegalStateException();
            }
            while (iPosition < iLimit) {
                byteBufferK.put(byteBuffer.get(iPosition + 1));
                byteBufferK.put(byteBuffer.get(iPosition));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferK.flip();
    }

    @Override // p102n0.h
    public final e g(e eVar) throws f {
        int i8 = eVar.f27324c;
        if (i8 == 3 || i8 == 2 || i8 == 268435456 || i8 == 21 || i8 == 1342177280 || i8 == 22 || i8 == 1610612736 || i8 == 4) {
            return i8 != 2 ? new e(eVar.f27322a, eVar.f27323b, 2) : e.f27321e;
        }
        throw new f(eVar);
    }
}
