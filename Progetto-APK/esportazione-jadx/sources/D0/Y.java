package D0;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public final class Y extends p102n0.h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f1904i = Float.floatToIntBits(Float.NaN);

    public static void l(ByteBuffer byteBuffer, int i8) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i8) * 4.656612875245797E-10d));
        if (iFloatToIntBits == f1904i) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferK;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i8 = iLimit - iPosition;
        int i9 = this.f27327b.f27324c;
        if (i9 == 21) {
            byteBufferK = k((i8 / 3) * 4);
            while (iPosition < iLimit) {
                l(byteBufferK, ((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24));
                iPosition += 3;
            }
        } else if (i9 == 22) {
            byteBufferK = k(i8);
            while (iPosition < iLimit) {
                l(byteBufferK, (byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24));
                iPosition += 4;
            }
        } else if (i9 == 1342177280) {
            byteBufferK = k((i8 / 3) * 4);
            while (iPosition < iLimit) {
                l(byteBufferK, ((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 3;
            }
        } else {
            if (i9 != 1610612736) {
                throw new IllegalStateException();
            }
            byteBufferK = k(i8);
            while (iPosition < iLimit) {
                l(byteBufferK, (byteBuffer.get(iPosition + 3) & 255) | ((byteBuffer.get(iPosition + 2) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition) & 255) << 24));
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferK.flip();
    }

    @Override // p102n0.h
    public final p102n0.e g(p102n0.e eVar) throws p102n0.f {
        int i8 = eVar.f27324c;
        if (i8 == 21 || i8 == 1342177280 || i8 == 22 || i8 == 1610612736 || i8 == 4) {
            return i8 != 4 ? new p102n0.e(eVar.f27322a, eVar.f27323b, 4) : p102n0.e.f27321e;
        }
        throw new p102n0.f(eVar);
    }
}
