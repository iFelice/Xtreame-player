package com.google.android.gms.internal.pal;

import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2835v extends AbstractC2864y4 {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final Logger f24026U = Logger.getLogger(C2835v.class.getName());

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final boolean f24027V = AbstractC2836v0.f24036e;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public C2843w f24028Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final byte[] f24029R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final int f24030S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f24031T;

    public C2835v(byte[] bArr, int i8) {
        int length = bArr.length;
        if (((length - i8) | i8) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i8)));
        }
        this.f24029R = bArr;
        this.f24031T = 0;
        this.f24030S = i8;
    }

    public static int I0(int i8) {
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

    public static int J0(long j8) {
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
            i8 += 2;
            j8 >>>= 14;
        }
        return (j8 & (-16384)) != 0 ? i8 + 1 : i8;
    }

    public static int W0(int i8, AbstractC2740j abstractC2740j, InterfaceC2749k0 interfaceC2749k0) {
        int iI0 = I0(i8 << 3);
        int i9 = iI0 + iI0;
        D d6 = (D) abstractC2740j;
        int iZza = d6.zzd;
        if (iZza == -1) {
            iZza = interfaceC2749k0.zza(abstractC2740j);
            d6.zzd = iZza;
        }
        return i9 + iZza;
    }

    public static int X0(int i8) {
        if (i8 >= 0) {
            return I0(i8);
        }
        return 10;
    }

    public static int Y0(String str) {
        int length;
        try {
            length = AbstractC2852x0.c(str);
        } catch (C2844w0 unused) {
            length = str.getBytes(J.f23560a).length;
        }
        return I0(length) + length;
    }

    public static int Z0(int i8) {
        return I0(i8 << 3);
    }

    public final void K0(byte b8) throws I0.u {
        try {
            byte[] bArr = this.f24029R;
            int i8 = this.f24031T;
            this.f24031T = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), 1), 10, e8);
        }
    }

    public final void L0(byte[] bArr, int i8) throws I0.u {
        try {
            System.arraycopy(bArr, 0, this.f24029R, this.f24031T, i8);
            this.f24031T += i8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), Integer.valueOf(i8)), 10, e8);
        }
    }

    public final void M0(int i8, r rVar) throws I0.u {
        T0((i8 << 3) | 2);
        T0(rVar.i());
        C2796q c2796q = (C2796q) rVar;
        L0(c2796q.f23982I, c2796q.i());
    }

    public final void N0(int i8, int i9) throws I0.u {
        T0((i8 << 3) | 5);
        O0(i9);
    }

    public final void O0(int i8) throws I0.u {
        try {
            byte[] bArr = this.f24029R;
            int i9 = this.f24031T;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.f24031T = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), 1), 10, e8);
        }
    }

    public final void P0(int i8, long j8) throws I0.u {
        T0((i8 << 3) | 1);
        Q0(j8);
    }

    public final void Q0(long j8) throws I0.u {
        try {
            byte[] bArr = this.f24029R;
            int i8 = this.f24031T;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.f24031T = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), 1), 10, e8);
        }
    }

    public final void R0(int i8, String str) throws I0.u {
        T0((i8 << 3) | 2);
        int i9 = this.f24031T;
        try {
            int iI0 = I0(str.length() * 3);
            int iI1 = I0(str.length());
            int i10 = this.f24030S;
            byte[] bArr = this.f24029R;
            if (iI1 == iI0) {
                int i11 = i9 + iI1;
                this.f24031T = i11;
                int iB = AbstractC2852x0.b(str, bArr, i11, i10 - i11);
                this.f24031T = i9;
                T0((iB - i9) - iI1);
                this.f24031T = iB;
            } else {
                T0(AbstractC2852x0.c(str));
                int i12 = this.f24031T;
                this.f24031T = AbstractC2852x0.b(str, bArr, i12, i10 - i12);
            }
        } catch (C2844w0 e8) {
            this.f24031T = i9;
            f24026U.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e8);
            byte[] bytes = str.getBytes(J.f23560a);
            try {
                int length = bytes.length;
                T0(length);
                L0(bytes, length);
            } catch (IndexOutOfBoundsException e9) {
                throw new I0.u(e9);
            }
        } catch (IndexOutOfBoundsException e10) {
            throw new I0.u(e10);
        }
    }

    public final void S0(int i8, int i9) {
        T0((i8 << 3) | i9);
    }

    public final void T0(int i8) throws I0.u {
        while (true) {
            int i9 = i8 & (-128);
            byte[] bArr = this.f24029R;
            if (i9 == 0) {
                int i10 = this.f24031T;
                this.f24031T = i10 + 1;
                bArr[i10] = (byte) i8;
                return;
            } else {
                try {
                    int i11 = this.f24031T;
                    this.f24031T = i11 + 1;
                    bArr[i11] = (byte) ((i8 & 127) | 128);
                    i8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), 1), 10, e8);
                }
            }
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(this.f24030S), 1), 10, e8);
        }
    }

    public final void U0(int i8, long j8) throws I0.u {
        T0(i8 << 3);
        V0(j8);
    }

    public final void V0(long j8) throws I0.u {
        boolean z7 = f24027V;
        int i8 = this.f24030S;
        byte[] bArr = this.f24029R;
        if (z7 && i8 - this.f24031T >= 10) {
            while ((j8 & (-128)) != 0) {
                int i9 = this.f24031T;
                this.f24031T = i9 + 1;
                AbstractC2836v0.l(bArr, i9, (byte) ((((int) j8) & 127) | 128));
                j8 >>>= 7;
            }
            int i10 = this.f24031T;
            this.f24031T = 1 + i10;
            AbstractC2836v0.l(bArr, i10, (byte) j8);
            return;
        }
        while ((j8 & (-128)) != 0) {
            try {
                int i11 = this.f24031T;
                this.f24031T = i11 + 1;
                bArr[i11] = (byte) ((((int) j8) & 127) | 128);
                j8 >>>= 7;
            } catch (IndexOutOfBoundsException e8) {
                throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24031T), Integer.valueOf(i8), 1), 10, e8);
            }
        }
        int i12 = this.f24031T;
        this.f24031T = i12 + 1;
        bArr[i12] = (byte) j8;
    }
}
