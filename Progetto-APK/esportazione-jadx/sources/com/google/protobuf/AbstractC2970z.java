package com.google.protobuf;

import Z3.C0433o;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: renamed from: com.google.protobuf.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2970z extends AbstractC2907i {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Logger f24550d = Logger.getLogger(AbstractC2970z.class.getName());

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final boolean f24551e = H2.f24257e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public C0433o f24552c;

    public static int Y(int i8) {
        return q0(i8) + 1;
    }

    public static int Z(int i8, r rVar) {
        return a0(rVar) + q0(i8);
    }

    public static int a0(r rVar) {
        int size = rVar.size();
        return s0(size) + size;
    }

    public static int b0(int i8) {
        return q0(i8) + 8;
    }

    public static int c0(int i8, int i9) {
        return i0(i9) + q0(i8);
    }

    public static int d0(int i8) {
        return q0(i8) + 4;
    }

    public static int e0(int i8) {
        return q0(i8) + 8;
    }

    public static int f0(int i8) {
        return q0(i8) + 4;
    }

    public static int g0(int i8, Q1 q7, InterfaceC2914j2 interfaceC2914j2) {
        return ((AbstractC2879b) q7).getSerializedSize(interfaceC2914j2) + (q0(i8) * 2);
    }

    public static int h0(int i8, int i9) {
        return i0(i9) + q0(i8);
    }

    public static int i0(int i8) {
        if (i8 >= 0) {
            return s0(i8);
        }
        return 10;
    }

    public static int j0(int i8, long j8) {
        return u0(j8) + q0(i8);
    }

    public static int k0(int i8) {
        return q0(i8) + 4;
    }

    public static int l0(int i8) {
        return q0(i8) + 8;
    }

    public static int m0(int i8, int i9) {
        return s0((i9 >> 31) ^ (i9 << 1)) + q0(i8);
    }

    public static int n0(int i8, long j8) {
        return u0((j8 >> 63) ^ (j8 << 1)) + q0(i8);
    }

    public static int o0(int i8, String str) {
        return p0(str) + q0(i8);
    }

    public static int p0(String str) {
        int length;
        try {
            length = K2.b(str);
        } catch (J2 unused) {
            length = str.getBytes(AbstractC2960v1.f24524a).length;
        }
        return s0(length) + length;
    }

    public static int q0(int i8) {
        return s0(i8 << 3);
    }

    public static int r0(int i8, int i9) {
        return s0(i9) + q0(i8);
    }

    public static int s0(int i8) {
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

    public static int t0(int i8, long j8) {
        return u0(j8) + q0(i8);
    }

    public static int u0(long j8) {
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

    public abstract void A0(int i8, r rVar);

    public abstract void B0(r rVar);

    public abstract void C0(int i8, int i9);

    public abstract void D0(int i8);

    public abstract void E0(int i8, long j8);

    public abstract void F0(long j8);

    public abstract void G0(int i8, int i9);

    public abstract void H0(int i8);

    public abstract void I0(int i8, Q1 q7, InterfaceC2914j2 interfaceC2914j2);

    public abstract void J0(Q1 q7);

    public abstract void K0(int i8, Q1 q7);

    public abstract void L0(int i8, r rVar);

    public abstract void M0(int i8, String str);

    public abstract void N0(String str);

    public abstract void O0(int i8, int i9);

    public abstract void P0(int i8, int i9);

    public abstract void Q0(int i8);

    public abstract void R0(int i8, long j8);

    public abstract void S0(long j8);

    public final void v0(String str, J2 j8) throws I0.u {
        f24550d.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) j8);
        byte[] bytes = str.getBytes(AbstractC2960v1.f24524a);
        try {
            Q0(bytes.length);
            X(0, bytes, bytes.length);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(e8);
        }
    }

    public abstract int w0();

    public abstract void x0(byte b8);

    public abstract void y0(int i8, boolean z7);

    public abstract void z0(byte[] bArr, int i8);
}
