package com.google.android.gms.internal.measurement;

import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.k2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2588k2 extends T.b {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final Logger f23177L = Logger.getLogger(C2588k2.class.getName());

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final boolean f23178M = AbstractC2565g3.f23140e;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C2594l2 f23179H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final byte[] f23180I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f23181J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f23182K;

    public C2588k2(byte[] bArr, int i8) {
        super(4);
        int length = bArr.length;
        if (((length - i8) | i8) < 0) {
            Locale locale = Locale.US;
            throw new IllegalArgumentException(com.google.protobuf.U2.j("Array range is invalid. Buffer.length=", length, ", offset=0, length=", i8));
        }
        this.f23180I = bArr;
        this.f23182K = 0;
        this.f23181J = i8;
    }

    public static int D(int i8, P2 p7, Y2 y7) {
        int iG = G(i8 << 3);
        return ((AbstractC2540c2) p7).a(y7) + iG + iG;
    }

    public static int E(P2 p7, Y2 y7) {
        int iA = ((AbstractC2540c2) p7).a(y7);
        return G(iA) + iA;
    }

    public static int F(String str) {
        int length;
        try {
            length = AbstractC2577i3.c(str);
        } catch (C2571h3 unused) {
            length = str.getBytes(AbstractC2666z2.f23416a).length;
        }
        return G(length) + length;
    }

    public static int G(int i8) {
        return (352 - (Integer.numberOfLeadingZeros(i8) * 9)) >>> 6;
    }

    public static int o(long j8) {
        return (640 - (Long.numberOfLeadingZeros(j8) * 9)) >>> 6;
    }

    public final void A(int i8) throws I0.u {
        int i9;
        int i10 = this.f23182K;
        while (true) {
            int i11 = i8 & (-128);
            byte[] bArr = this.f23180I;
            if (i11 == 0) {
                i9 = i10 + 1;
                bArr[i10] = (byte) i8;
                this.f23182K = i9;
                return;
            } else {
                i9 = i10 + 1;
                try {
                    bArr[i10] = (byte) (i8 | 128);
                    i8 >>>= 7;
                    i10 = i9;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(i9, this.f23181J, 1, e8);
                }
            }
            throw new I0.u(i9, this.f23181J, 1, e8);
        }
    }

    public final void B(int i8, long j8) throws I0.u {
        A(i8 << 3);
        C(j8);
    }

    public final void C(long j8) throws I0.u {
        int i8;
        int i9 = this.f23182K;
        boolean z7 = f23178M;
        int i10 = this.f23181J;
        byte[] bArr = this.f23180I;
        if (!z7 || i10 - i9 < 10) {
            long j9 = j8;
            while ((j9 & (-128)) != 0) {
                i8 = i9 + 1;
                try {
                    bArr[i9] = (byte) (((int) j9) | 128);
                    j9 >>>= 7;
                    i9 = i8;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(i8, i10, 1, e8);
                }
            }
            i8 = i9 + 1;
            bArr[i9] = (byte) j9;
        } else {
            long j10 = j8;
            while ((j10 & (-128)) != 0) {
                AbstractC2565g3.f23138c.d(bArr, AbstractC2565g3.f23141f + ((long) i9), (byte) (((int) j10) | 128));
                j10 >>>= 7;
                i9++;
            }
            i8 = i9 + 1;
            AbstractC2565g3.f23138c.d(bArr, AbstractC2565g3.f23141f + ((long) i9), (byte) j10);
        }
        this.f23182K = i8;
    }

    public final void p(byte[] bArr, int i8) throws I0.u {
        try {
            System.arraycopy(bArr, 0, this.f23180I, this.f23182K, i8);
            this.f23182K += i8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(this.f23182K, this.f23181J, i8, e8);
        }
    }

    public final void q(int i8, AbstractC2576i2 abstractC2576i2) throws I0.u {
        A((i8 << 3) | 2);
        A(abstractC2576i2.n());
        C2582j2 c2582j2 = (C2582j2) abstractC2576i2;
        p(c2582j2.f23170I, c2582j2.n());
    }

    public final void r(int i8, int i9) throws I0.u {
        A((i8 << 3) | 5);
        s(i9);
    }

    public final void s(int i8) throws I0.u {
        int i9 = this.f23182K;
        try {
            byte[] bArr = this.f23180I;
            bArr[i9] = (byte) i8;
            bArr[i9 + 1] = (byte) (i8 >> 8);
            bArr[i9 + 2] = (byte) (i8 >> 16);
            bArr[i9 + 3] = (byte) (i8 >> 24);
            this.f23182K = i9 + 4;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(i9, this.f23181J, 4, e8);
        }
    }

    public final void t(int i8, long j8) throws I0.u {
        A((i8 << 3) | 1);
        u(j8);
    }

    public final void u(long j8) throws I0.u {
        int i8 = this.f23182K;
        try {
            byte[] bArr = this.f23180I;
            bArr[i8] = (byte) j8;
            bArr[i8 + 1] = (byte) (j8 >> 8);
            bArr[i8 + 2] = (byte) (j8 >> 16);
            bArr[i8 + 3] = (byte) (j8 >> 24);
            bArr[i8 + 4] = (byte) (j8 >> 32);
            bArr[i8 + 5] = (byte) (j8 >> 40);
            bArr[i8 + 6] = (byte) (j8 >> 48);
            bArr[i8 + 7] = (byte) (j8 >> 56);
            this.f23182K = i8 + 8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(i8, this.f23181J, 8, e8);
        }
    }

    public final void v(int i8, int i9) throws I0.u {
        A(i8 << 3);
        w(i9);
    }

    public final void w(int i8) throws I0.u {
        if (i8 >= 0) {
            A(i8);
        } else {
            C(i8);
        }
    }

    public final void x(int i8, String str) throws I0.u {
        A((i8 << 3) | 2);
        int i9 = this.f23182K;
        try {
            int iG = G(str.length() * 3);
            int iG2 = G(str.length());
            int i10 = this.f23181J;
            byte[] bArr = this.f23180I;
            if (iG2 == iG) {
                int i11 = i9 + iG2;
                this.f23182K = i11;
                int iB = AbstractC2577i3.b(str, bArr, i11, i10 - i11);
                this.f23182K = i9;
                A((iB - i9) - iG2);
                this.f23182K = iB;
            } else {
                A(AbstractC2577i3.c(str));
                int i12 = this.f23182K;
                this.f23182K = AbstractC2577i3.b(str, bArr, i12, i10 - i12);
            }
        } catch (C2571h3 e8) {
            this.f23182K = i9;
            f23177L.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e8);
            byte[] bytes = str.getBytes(AbstractC2666z2.f23416a);
            try {
                int length = bytes.length;
                A(length);
                p(bytes, length);
            } catch (IndexOutOfBoundsException e9) {
                throw new I0.u(e9);
            }
        } catch (IndexOutOfBoundsException e10) {
            throw new I0.u(e10);
        }
    }

    public final void y(int i8, int i9) {
        A((i8 << 3) | i9);
    }

    public final void z(int i8, int i9) throws I0.u {
        A(i8 << 3);
        A(i9);
    }
}
