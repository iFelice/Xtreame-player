package com.google.protobuf;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: renamed from: com.google.protobuf.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2967y extends AbstractC2970z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f24534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f24535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OutputStream f24537i;

    public C2967y(OutputStream outputStream, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int iMax = Math.max(i8, 20);
        this.f24534f = new byte[iMax];
        this.f24535g = iMax;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.f24537i = outputStream;
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void A0(int i8, r rVar) {
        O0(i8, 2);
        B0(rVar);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void B0(r rVar) {
        Q0(rVar.size());
        rVar.u(this);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void C0(int i8, int i9) {
        Z0(14);
        V0(i8, 5);
        T0(i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void D0(int i8) {
        Z0(4);
        T0(i8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void E0(int i8, long j8) {
        Z0(18);
        V0(i8, 1);
        U0(j8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void F0(long j8) {
        Z0(8);
        U0(j8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void G0(int i8, int i9) {
        Z0(20);
        V0(i8, 0);
        if (i9 >= 0) {
            W0(i9);
        } else {
            X0(i9);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void H0(int i8) {
        if (i8 >= 0) {
            Q0(i8);
        } else {
            S0(i8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void I0(int i8, Q1 q7, InterfaceC2914j2 interfaceC2914j2) {
        O0(i8, 2);
        Q0(((AbstractC2879b) q7).getSerializedSize(interfaceC2914j2));
        interfaceC2914j2.f(q7, this.f24552c);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void J0(Q1 q7) {
        Q0(q7.getSerializedSize());
        q7.writeTo(this);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void K0(int i8, Q1 q7) {
        O0(1, 3);
        P0(2, i8);
        O0(3, 2);
        J0(q7);
        O0(1, 4);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void L0(int i8, r rVar) {
        O0(1, 3);
        P0(2, i8);
        A0(3, rVar);
        O0(1, 4);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void M0(int i8, String str) throws IOException {
        O0(i8, 2);
        N0(str);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void N0(String str) throws IOException {
        try {
            int length = str.length() * 3;
            int iS0 = AbstractC2970z.s0(length);
            int i8 = iS0 + length;
            int i9 = this.f24535g;
            if (i8 > i9) {
                byte[] bArr = new byte[length];
                int iA0 = K2.f24269a.a0(str, bArr, 0, length);
                Q0(iA0);
                a1(bArr, 0, iA0);
                return;
            }
            if (i8 > i9 - this.f24536h) {
                Y0();
            }
            int iS1 = AbstractC2970z.s0(str.length());
            int i10 = this.f24536h;
            byte[] bArr2 = this.f24534f;
            try {
                try {
                    if (iS1 == iS0) {
                        int i11 = i10 + iS1;
                        this.f24536h = i11;
                        int iA1 = K2.f24269a.a0(str, bArr2, i11, i9 - i11);
                        this.f24536h = i10;
                        W0((iA1 - i10) - iS1);
                        this.f24536h = iA1;
                    } else {
                        int iB = K2.b(str);
                        W0(iB);
                        this.f24536h = K2.f24269a.a0(str, bArr2, this.f24536h, iB);
                    }
                } catch (ArrayIndexOutOfBoundsException e8) {
                    throw new I0.u(e8);
                }
            } catch (J2 e9) {
                this.f24536h = i10;
                throw e9;
            }
        } catch (J2 e10) {
            v0(str, e10);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void O0(int i8, int i9) {
        Q0((i8 << 3) | i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void P0(int i8, int i9) {
        Z0(20);
        V0(i8, 0);
        W0(i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void Q0(int i8) {
        Z0(5);
        W0(i8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void R0(int i8, long j8) {
        Z0(20);
        V0(i8, 0);
        X0(j8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void S0(long j8) {
        Z0(10);
        X0(j8);
    }

    public final void T0(int i8) {
        int i9 = this.f24536h;
        byte[] bArr = this.f24534f;
        bArr[i9] = (byte) (i8 & 255);
        bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
        bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
        this.f24536h = i9 + 4;
        bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
    }

    public final void U0(long j8) {
        int i8 = this.f24536h;
        byte[] bArr = this.f24534f;
        bArr[i8] = (byte) (j8 & 255);
        bArr[i8 + 1] = (byte) ((j8 >> 8) & 255);
        bArr[i8 + 2] = (byte) ((j8 >> 16) & 255);
        bArr[i8 + 3] = (byte) (255 & (j8 >> 24));
        bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
        bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
        bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
        this.f24536h = i8 + 8;
        bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
    }

    public final void V0(int i8, int i9) {
        W0((i8 << 3) | i9);
    }

    public final void W0(int i8) {
        boolean z7 = AbstractC2970z.f24551e;
        byte[] bArr = this.f24534f;
        if (z7) {
            while ((i8 & (-128)) != 0) {
                int i9 = this.f24536h;
                this.f24536h = i9 + 1;
                H2.l(bArr, i9, (byte) ((i8 & 127) | 128));
                i8 >>>= 7;
            }
            int i10 = this.f24536h;
            this.f24536h = i10 + 1;
            H2.l(bArr, i10, (byte) i8);
            return;
        }
        while ((i8 & (-128)) != 0) {
            int i11 = this.f24536h;
            this.f24536h = i11 + 1;
            bArr[i11] = (byte) ((i8 & 127) | 128);
            i8 >>>= 7;
        }
        int i12 = this.f24536h;
        this.f24536h = i12 + 1;
        bArr[i12] = (byte) i8;
    }

    @Override // com.google.protobuf.AbstractC2907i
    public final void X(int i8, byte[] bArr, int i9) throws IOException {
        a1(bArr, i8, i9);
    }

    public final void X0(long j8) {
        boolean z7 = AbstractC2970z.f24551e;
        byte[] bArr = this.f24534f;
        if (z7) {
            while ((j8 & (-128)) != 0) {
                int i8 = this.f24536h;
                this.f24536h = i8 + 1;
                H2.l(bArr, i8, (byte) ((((int) j8) & 127) | 128));
                j8 >>>= 7;
            }
            int i9 = this.f24536h;
            this.f24536h = i9 + 1;
            H2.l(bArr, i9, (byte) j8);
            return;
        }
        while ((j8 & (-128)) != 0) {
            int i10 = this.f24536h;
            this.f24536h = i10 + 1;
            bArr[i10] = (byte) ((((int) j8) & 127) | 128);
            j8 >>>= 7;
        }
        int i11 = this.f24536h;
        this.f24536h = i11 + 1;
        bArr[i11] = (byte) j8;
    }

    public final void Y0() {
        this.f24537i.write(this.f24534f, 0, this.f24536h);
        this.f24536h = 0;
    }

    public final void Z0(int i8) {
        if (this.f24535g - this.f24536h < i8) {
            Y0();
        }
    }

    public final void a1(byte[] bArr, int i8, int i9) throws IOException {
        int i10 = this.f24536h;
        int i11 = this.f24535g;
        int i12 = i11 - i10;
        byte[] bArr2 = this.f24534f;
        if (i12 >= i9) {
            System.arraycopy(bArr, i8, bArr2, i10, i9);
            this.f24536h += i9;
            return;
        }
        System.arraycopy(bArr, i8, bArr2, i10, i12);
        int i13 = i8 + i12;
        int i14 = i9 - i12;
        this.f24536h = i11;
        Y0();
        if (i14 > i11) {
            this.f24537i.write(bArr, i13, i14);
        } else {
            System.arraycopy(bArr, i13, bArr2, 0, i14);
            this.f24536h = i14;
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final int w0() {
        throw new UnsupportedOperationException("spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array or ByteBuffer.");
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void x0(byte b8) {
        if (this.f24536h == this.f24535g) {
            Y0();
        }
        int i8 = this.f24536h;
        this.f24536h = i8 + 1;
        this.f24534f[i8] = b8;
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void y0(int i8, boolean z7) {
        Z0(11);
        V0(i8, 0);
        byte b8 = z7 ? (byte) 1 : (byte) 0;
        int i9 = this.f24536h;
        this.f24536h = i9 + 1;
        this.f24534f[i9] = b8;
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void z0(byte[] bArr, int i8) throws IOException {
        Q0(i8);
        a1(bArr, 0, i8);
    }
}
