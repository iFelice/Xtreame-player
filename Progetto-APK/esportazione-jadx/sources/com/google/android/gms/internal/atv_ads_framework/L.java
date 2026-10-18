package com.google.android.gms.internal.atv_ads_framework;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes.dex */
public final class L extends S3.e {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Logger f22274g = Logger.getLogger(L.class.getName());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f22275h = I0.f22267e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public M f22276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f22277d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f22278e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f22279f;

    public L(byte[] bArr, int i8) {
        int length = bArr.length;
        if (((length - i8) | i8) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i8)));
        }
        this.f22277d = bArr;
        this.f22279f = 0;
        this.f22278e = i8;
    }

    public static int W(int i8, E e8, InterfaceC2418w0 interfaceC2418w0) {
        int iA = e8.a(interfaceC2418w0);
        int iZ = Z(i8 << 3);
        return iZ + iZ + iA;
    }

    public static int X(int i8) {
        if (i8 >= 0) {
            return Z(i8);
        }
        return 10;
    }

    public static int Y(String str) {
        int length;
        try {
            length = K0.c(str);
        } catch (J0 unused) {
            length = str.getBytes(Z.f22301a).length;
        }
        return Z(length) + length;
    }

    public static int Z(int i8) {
        if ((i8 & (-128)) == 0) {
            return 1;
        }
        if ((i8 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i8) == 0) {
            return 3;
        }
        return (i8 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int a0(long j8) {
        int i8;
        if (((-128) & j8) == 0) {
            return 1;
        }
        if (j8 < 0) {
            return 10;
        }
        if (((-34359738368L) & j8) != 0) {
            j8 >>>= 28;
            i8 = 6;
        } else {
            i8 = 2;
        }
        if (((-2097152) & j8) != 0) {
            j8 >>>= 14;
            i8 += 2;
        }
        return (j8 & (-16384)) != 0 ? i8 + 1 : i8;
    }

    public final void K(byte b8) {
        try {
            byte[] bArr = this.f22277d;
            int i8 = this.f22279f;
            this.f22279f = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), 1), 7, e8);
        }
    }

    public final void L(byte[] bArr, int i8) throws I0.u {
        try {
            System.arraycopy(bArr, 0, this.f22277d, this.f22279f, i8);
            this.f22279f += i8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), Integer.valueOf(i8)), 7, e8);
        }
    }

    public final void M(int i8, J j8) {
        T((i8 << 3) | 2);
        T(j8.n());
        K k8 = (K) j8;
        L(k8.f22272I, k8.n());
    }

    public final void N(int i8, int i9) {
        T((i8 << 3) | 5);
        O(i9);
    }

    public final void O(int i8) throws I0.u {
        try {
            byte[] bArr = this.f22277d;
            int i9 = this.f22279f;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.f22279f = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), 1), 7, e8);
        }
    }

    public final void P(int i8, long j8) {
        T((i8 << 3) | 1);
        Q(j8);
    }

    public final void Q(long j8) throws I0.u {
        try {
            byte[] bArr = this.f22277d;
            int i8 = this.f22279f;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.f22279f = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), 1), 7, e8);
        }
    }

    public final void R(int i8, String str) throws I0.u {
        T((i8 << 3) | 2);
        int i9 = this.f22279f;
        try {
            int iZ = Z(str.length() * 3);
            int iZ2 = Z(str.length());
            int i10 = this.f22278e;
            byte[] bArr = this.f22277d;
            if (iZ2 == iZ) {
                int i11 = i9 + iZ2;
                this.f22279f = i11;
                int iB = K0.b(str, bArr, i11, i10 - i11);
                this.f22279f = i9;
                T((iB - i9) - iZ2);
                this.f22279f = iB;
            } else {
                T(K0.c(str));
                int i12 = this.f22279f;
                this.f22279f = K0.b(str, bArr, i12, i10 - i12);
            }
        } catch (J0 e8) {
            this.f22279f = i9;
            f22274g.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e8);
            byte[] bytes = str.getBytes(Z.f22301a);
            try {
                int length = bytes.length;
                T(length);
                L(bytes, length);
            } catch (IndexOutOfBoundsException e9) {
                throw new I0.u(e9);
            }
        } catch (IndexOutOfBoundsException e10) {
            throw new I0.u(e10);
        }
    }

    public final void S(int i8, int i9) {
        T((i8 << 3) | i9);
    }

    public final void T(int i8) {
        while (true) {
            int i9 = i8 & (-128);
            byte[] bArr = this.f22277d;
            if (i9 == 0) {
                int i10 = this.f22279f;
                this.f22279f = i10 + 1;
                bArr[i10] = (byte) i8;
                return;
            } else {
                try {
                    int i11 = this.f22279f;
                    this.f22279f = i11 + 1;
                    bArr[i11] = (byte) ((i8 & 127) | 128);
                    i8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), 1), 7, e8);
                }
            }
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(this.f22278e), 1), 7, e8);
        }
    }

    public final void U(int i8, long j8) {
        T(i8 << 3);
        V(j8);
    }

    public final void V(long j8) {
        boolean z7 = f22275h;
        int i8 = this.f22278e;
        byte[] bArr = this.f22277d;
        if (!z7 || i8 - this.f22279f < 10) {
            while ((j8 & (-128)) != 0) {
                try {
                    int i9 = this.f22279f;
                    this.f22279f = i9 + 1;
                    bArr[i9] = (byte) ((((int) j8) & 127) | 128);
                    j8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22279f), Integer.valueOf(i8), 1), 7, e8);
                }
            }
            int i10 = this.f22279f;
            this.f22279f = i10 + 1;
            bArr[i10] = (byte) j8;
            return;
        }
        while ((j8 & (-128)) != 0) {
            int i11 = this.f22279f;
            this.f22279f = i11 + 1;
            I0.f22265c.d(bArr, I0.f22268f + ((long) i11), (byte) ((((int) j8) & 127) | 128));
            j8 >>>= 7;
        }
        int i12 = this.f22279f;
        this.f22279f = 1 + i12;
        I0.f22265c.d(bArr, I0.f22268f + ((long) i12), (byte) j8);
    }
}
