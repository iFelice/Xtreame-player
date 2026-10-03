package D0;

import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class A extends p102n0.h {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f1739i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f1740j;

    /* JADX WARN: Code duplicated, block: B:26:0x0078  */
    /* JADX WARN: Code duplicated, block: B:28:0x0080  */
    /* JADX WARN: Code duplicated, block: B:29:0x0082  */
    /* JADX WARN: Code duplicated, block: B:32:0x0094  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:42:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:48:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:53:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:57:0x011b  */
    @Override // p102n0.g
    public final void d(ByteBuffer byteBuffer) {
        ByteOrder byteOrderOrder;
        ByteOrder byteOrder;
        int i8;
        int i9;
        boolean z7;
        boolean z8;
        int i10;
        int i11;
        int[] iArr = this.f1740j;
        iArr.getClass();
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferK = k(((iLimit - iPosition) / this.f27327b.f27325d) * this.f27328c.f27325d);
        while (iPosition < iLimit) {
            for (int i12 : iArr) {
                int iS = (p117p0.M.s(this.f27327b.f27324c) * i12) + iPosition;
                int i13 = this.f27327b.f27324c;
                if (i13 == 2) {
                    byteBufferK.putShort(byteBuffer.getShort(iS));
                } else if (i13 == 3) {
                    byteBufferK.put(byteBuffer.get(iS));
                } else if (i13 == 4) {
                    byteBufferK.putFloat(byteBuffer.getFloat(iS));
                } else if (i13 == 21) {
                    byteOrderOrder = byteBuffer.order();
                    byteOrder = ByteOrder.BIG_ENDIAN;
                    if (byteOrderOrder == byteOrder) {
                        i8 = iS;
                    } else {
                        i8 = iS + 2;
                    }
                    byte b8 = byteBuffer.get(i8);
                    byte b9 = byteBuffer.get(iS + 1);
                    if (byteBuffer.order() == byteOrder) {
                        iS += 2;
                    }
                    i9 = ((((b8 << 24) & (-16777216)) | ((b9 << 16) & 16711680)) | ((byteBuffer.get(iS) << 8) & 65280)) >> 8;
                    if ((i9 & (-16777216)) != 0 || (i9 & (-8388608)) == -8388608) {
                        z7 = true;
                    } else {
                        z7 = false;
                    }
                    H1.c("Value out of range of 24-bit integer: " + Integer.toHexString(i9), z7);
                    if (byteBufferK.remaining() >= 3) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    H1.d(z8);
                    if (byteBufferK.order() == byteOrder) {
                        i10 = (i9 & 16711680) >> 16;
                    } else {
                        i10 = i9 & 255;
                    }
                    byte b10 = (byte) i10;
                    byte b11 = (byte) ((i9 & 65280) >> 8);
                    if (byteBufferK.order() == byteOrder) {
                        i11 = i9 & 255;
                    } else {
                        i11 = (i9 & 16711680) >> 16;
                    }
                    byteBufferK.put(b10).put(b11).put((byte) i11);
                } else {
                    if (i13 != 22) {
                        if (i13 == 268435456) {
                            byteBufferK.putShort(byteBuffer.getShort(iS));
                        } else if (i13 == 1342177280) {
                            byteOrderOrder = byteBuffer.order();
                            byteOrder = ByteOrder.BIG_ENDIAN;
                            if (byteOrderOrder == byteOrder) {
                                i8 = iS;
                            } else {
                                i8 = iS + 2;
                            }
                            byte b12 = byteBuffer.get(i8);
                            byte b13 = byteBuffer.get(iS + 1);
                            if (byteBuffer.order() == byteOrder) {
                                iS += 2;
                            }
                            i9 = ((((b12 << 24) & (-16777216)) | ((b13 << 16) & 16711680)) | ((byteBuffer.get(iS) << 8) & 65280)) >> 8;
                            if ((i9 & (-16777216)) != 0) {
                                z7 = true;
                            } else {
                                z7 = true;
                            }
                            H1.c("Value out of range of 24-bit integer: " + Integer.toHexString(i9), z7);
                            if (byteBufferK.remaining() >= 3) {
                                z8 = true;
                            } else {
                                z8 = false;
                            }
                            H1.d(z8);
                            if (byteBufferK.order() == byteOrder) {
                                i10 = (i9 & 16711680) >> 16;
                            } else {
                                i10 = i9 & 255;
                            }
                            byte b14 = (byte) i10;
                            byte b15 = (byte) ((i9 & 65280) >> 8);
                            if (byteBufferK.order() == byteOrder) {
                                i11 = i9 & 255;
                            } else {
                                i11 = (i9 & 16711680) >> 16;
                            }
                            byteBufferK.put(b14).put(b15).put((byte) i11);
                        } else if (i13 != 1610612736) {
                            throw new IllegalStateException("Unexpected encoding: " + this.f27327b.f27324c);
                        }
                    }
                    byteBufferK.putInt(byteBuffer.getInt(iS));
                }
            }
            iPosition += this.f27327b.f27325d;
        }
        byteBuffer.position(iLimit);
        byteBufferK.flip();
    }

    @Override // p102n0.h
    public final p102n0.e g(p102n0.e eVar) throws p102n0.f {
        int[] iArr = this.f1739i;
        if (iArr == null) {
            return p102n0.e.f27321e;
        }
        int i8 = eVar.f27324c;
        if (!p117p0.M.M(i8)) {
            throw new p102n0.f(eVar);
        }
        int length = iArr.length;
        int i9 = eVar.f27323b;
        boolean z7 = i9 != length;
        int i10 = 0;
        while (i10 < iArr.length) {
            int i11 = iArr[i10];
            if (i11 >= i9) {
                throw new p102n0.f("Channel map (" + Arrays.toString(iArr) + ") trying to access non-existent input channel.", eVar);
            }
            z7 |= i11 != i10;
            i10++;
        }
        if (z7) {
            return new p102n0.e(eVar.f27322a, iArr.length, i8);
        }
        return p102n0.e.f27321e;
    }

    @Override // p102n0.h
    public final void h() {
        this.f1740j = this.f1739i;
    }

    @Override // p102n0.h
    public final void j() {
        this.f1740j = null;
        this.f1739i = null;
    }
}
