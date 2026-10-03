package com.google.android.gms.internal.cast;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.cast.b2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2429b2 extends Q3.b {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Logger f22649g = Logger.getLogger(C2429b2.class.getName());

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f22650h = W2.f22553e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C2433c2 f22651c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final byte[] f22652d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f22653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f22654f;

    public C2429b2(byte[] bArr, int i8) {
        int length = bArr.length;
        if (((length - i8) | i8) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i8)));
        }
        this.f22652d = bArr;
        this.f22654f = 0;
        this.f22653e = i8;
    }

    public static int s0(int i8, U1 u7, M2 m7) {
        int iA = u7.a(m7);
        int iW0 = w0(i8 << 3);
        return iW0 + iW0 + iA;
    }

    public static int t0(int i8) {
        if (i8 >= 0) {
            return w0(i8);
        }
        return 10;
    }

    public static int u0(U1 u7, M2 m7) {
        int iA = u7.a(m7);
        return w0(iA) + iA;
    }

    public static int v0(String str) {
        int length;
        try {
            length = Y2.c(str);
        } catch (X2 unused) {
            length = str.getBytes(AbstractC2481o2.f22763a).length;
        }
        return w0(length) + length;
    }

    public static int w0(int i8) {
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

    public static int x0(long j8) {
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

    public final void g0(byte b8) {
        try {
            byte[] bArr = this.f22652d;
            int i8 = this.f22654f;
            this.f22654f = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), 1), 8, e8);
        }
    }

    public final void h0(byte[] bArr, int i8) throws I0.u {
        try {
            System.arraycopy(bArr, 0, this.f22652d, this.f22654f, i8);
            this.f22654f += i8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), Integer.valueOf(i8)), 8, e8);
        }
    }

    public final void i0(int i8, Z1 z7) {
        p0((i8 << 3) | 2);
        p0(z7.n());
        C2425a2 c2425a2 = (C2425a2) z7;
        h0(c2425a2.f22626I, c2425a2.n());
    }

    public final void j0(int i8, int i9) {
        p0((i8 << 3) | 5);
        k0(i9);
    }

    public final void k0(int i8) throws I0.u {
        try {
            byte[] bArr = this.f22652d;
            int i9 = this.f22654f;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.f22654f = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), 1), 8, e8);
        }
    }

    public final void l0(int i8, long j8) {
        p0((i8 << 3) | 1);
        m0(j8);
    }

    public final void m0(long j8) throws I0.u {
        try {
            byte[] bArr = this.f22652d;
            int i8 = this.f22654f;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.f22654f = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), 1), 8, e8);
        }
    }

    public final void n0(int i8, String str) {
        p0((i8 << 3) | 2);
        int i9 = this.f22654f;
        try {
            int iW0 = w0(str.length() * 3);
            int iW1 = w0(str.length());
            int i10 = this.f22653e;
            byte[] bArr = this.f22652d;
            if (iW1 == iW0) {
                int i11 = i9 + iW1;
                this.f22654f = i11;
                int iB = Y2.b(str, bArr, i11, i10 - i11);
                this.f22654f = i9;
                p0((iB - i9) - iW1);
                this.f22654f = iB;
            } else {
                p0(Y2.c(str));
                int i12 = this.f22654f;
                this.f22654f = Y2.b(str, bArr, i12, i10 - i12);
            }
        } catch (X2 e8) {
            this.f22654f = i9;
            f22649g.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e8);
            byte[] bytes = str.getBytes(AbstractC2481o2.f22763a);
            try {
                int length = bytes.length;
                p0(length);
                h0(bytes, length);
            } catch (IndexOutOfBoundsException e9) {
                throw new I0.u(e9);
            }
        } catch (IndexOutOfBoundsException e10) {
            throw new I0.u(e10);
        }
    }

    public final void o0(int i8, int i9) {
        p0((i8 << 3) | i9);
    }

    public final void p0(int i8) {
        while (true) {
            int i9 = i8 & (-128);
            byte[] bArr = this.f22652d;
            if (i9 == 0) {
                int i10 = this.f22654f;
                this.f22654f = i10 + 1;
                bArr[i10] = (byte) i8;
                return;
            } else {
                try {
                    int i11 = this.f22654f;
                    this.f22654f = i11 + 1;
                    bArr[i11] = (byte) ((i8 & 127) | 128);
                    i8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), 1), 8, e8);
                }
            }
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(this.f22653e), 1), 8, e8);
        }
    }

    public final void q0(int i8, long j8) {
        p0(i8 << 3);
        r0(j8);
    }

    public final void r0(long j8) {
        boolean z7 = f22650h;
        int i8 = this.f22653e;
        byte[] bArr = this.f22652d;
        if (!z7 || i8 - this.f22654f < 10) {
            while ((j8 & (-128)) != 0) {
                try {
                    int i9 = this.f22654f;
                    this.f22654f = i9 + 1;
                    bArr[i9] = (byte) ((((int) j8) & 127) | 128);
                    j8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f22654f), Integer.valueOf(i8), 1), 8, e8);
                }
            }
            int i10 = this.f22654f;
            this.f22654f = i10 + 1;
            bArr[i10] = (byte) j8;
            return;
        }
        while (true) {
            int i11 = (int) j8;
            if ((j8 & (-128)) == 0) {
                int i12 = this.f22654f;
                this.f22654f = 1 + i12;
                W2.f22551c.d(bArr, W2.f22554f + ((long) i12), (byte) i11);
                return;
            }
            int i13 = this.f22654f;
            this.f22654f = i13 + 1;
            W2.f22551c.d(bArr, W2.f22554f + ((long) i13), (byte) ((i11 & 127) | 128));
            j8 >>>= 7;
        }
    }
}
