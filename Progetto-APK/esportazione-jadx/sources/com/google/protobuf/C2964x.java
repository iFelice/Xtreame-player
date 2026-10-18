package com.google.protobuf;

/* JADX INFO: renamed from: com.google.protobuf.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C2964x extends AbstractC2970z {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f24530f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f24531g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f24532h;

    public C2964x(byte[] bArr, int i8, int i9) {
        if (bArr == null) {
            throw new NullPointerException("buffer");
        }
        int i10 = i8 + i9;
        if ((i8 | i9 | (bArr.length - i10)) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i8), Integer.valueOf(i9)));
        }
        this.f24530f = bArr;
        this.f24532h = i8;
        this.f24531g = i10;
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void A0(int i8, r rVar) throws I0.u {
        O0(i8, 2);
        B0(rVar);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void B0(r rVar) throws I0.u {
        Q0(rVar.size());
        rVar.u(this);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void C0(int i8, int i9) throws I0.u {
        O0(i8, 5);
        D0(i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void D0(int i8) throws I0.u {
        try {
            byte[] bArr = this.f24530f;
            int i9 = this.f24532h;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.f24532h = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void E0(int i8, long j8) throws I0.u {
        O0(i8, 1);
        F0(j8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void F0(long j8) throws I0.u {
        try {
            byte[] bArr = this.f24530f;
            int i8 = this.f24532h;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.f24532h = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void G0(int i8, int i9) throws I0.u {
        O0(i8, 0);
        H0(i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void H0(int i8) throws I0.u {
        if (i8 >= 0) {
            Q0(i8);
        } else {
            S0(i8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void I0(int i8, Q1 q7, InterfaceC2914j2 interfaceC2914j2) throws I0.u {
        O0(i8, 2);
        Q0(((AbstractC2879b) q7).getSerializedSize(interfaceC2914j2));
        interfaceC2914j2.f(q7, this.f24552c);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void J0(Q1 q7) throws I0.u {
        Q0(q7.getSerializedSize());
        q7.writeTo(this);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void K0(int i8, Q1 q7) throws I0.u {
        O0(1, 3);
        P0(2, i8);
        O0(3, 2);
        J0(q7);
        O0(1, 4);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void L0(int i8, r rVar) throws I0.u {
        O0(1, 3);
        P0(2, i8);
        A0(3, rVar);
        O0(1, 4);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void M0(int i8, String str) throws I0.u {
        O0(i8, 2);
        N0(str);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void N0(String str) throws I0.u {
        int i8 = this.f24532h;
        try {
            int iS0 = AbstractC2970z.s0(str.length() * 3);
            int iS1 = AbstractC2970z.s0(str.length());
            byte[] bArr = this.f24530f;
            if (iS1 == iS0) {
                int i9 = i8 + iS1;
                this.f24532h = i9;
                int iA0 = K2.f24269a.a0(str, bArr, i9, w0());
                this.f24532h = i8;
                Q0((iA0 - i8) - iS1);
                this.f24532h = iA0;
            } else {
                Q0(K2.b(str));
                this.f24532h = K2.f24269a.a0(str, bArr, this.f24532h, w0());
            }
        } catch (J2 e8) {
            this.f24532h = i8;
            v0(str, e8);
        } catch (IndexOutOfBoundsException e9) {
            throw new I0.u(e9);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void O0(int i8, int i9) throws I0.u {
        Q0((i8 << 3) | i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void P0(int i8, int i9) throws I0.u {
        O0(i8, 0);
        Q0(i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void Q0(int i8) throws I0.u {
        while (true) {
            int i9 = i8 & (-128);
            byte[] bArr = this.f24530f;
            if (i9 == 0) {
                int i10 = this.f24532h;
                this.f24532h = i10 + 1;
                bArr[i10] = (byte) i8;
                return;
            } else {
                try {
                    int i11 = this.f24532h;
                    this.f24532h = i11 + 1;
                    bArr[i11] = (byte) ((i8 & 127) | 128);
                    i8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
                }
            }
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void R0(int i8, long j8) throws I0.u {
        O0(i8, 0);
        S0(j8);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void S0(long j8) throws I0.u {
        boolean z7 = AbstractC2970z.f24551e;
        byte[] bArr = this.f24530f;
        if (z7 && w0() >= 10) {
            while ((j8 & (-128)) != 0) {
                int i8 = this.f24532h;
                this.f24532h = i8 + 1;
                H2.l(bArr, i8, (byte) ((((int) j8) & 127) | 128));
                j8 >>>= 7;
            }
            int i9 = this.f24532h;
            this.f24532h = 1 + i9;
            H2.l(bArr, i9, (byte) j8);
            return;
        }
        while ((j8 & (-128)) != 0) {
            try {
                int i10 = this.f24532h;
                this.f24532h = i10 + 1;
                bArr[i10] = (byte) ((((int) j8) & 127) | 128);
                j8 >>>= 7;
            } catch (IndexOutOfBoundsException e8) {
                throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
            }
        }
        int i11 = this.f24532h;
        this.f24532h = i11 + 1;
        bArr[i11] = (byte) j8;
    }

    public final void T0(byte[] bArr, int i8, int i9) throws I0.u {
        try {
            System.arraycopy(bArr, i8, this.f24530f, this.f24532h, i9);
            this.f24532h += i9;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), Integer.valueOf(i9)), 11, e8);
        }
    }

    @Override // com.google.protobuf.AbstractC2907i
    public final void X(int i8, byte[] bArr, int i9) throws I0.u {
        T0(bArr, i8, i9);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final int w0() {
        return this.f24531g - this.f24532h;
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void x0(byte b8) throws I0.u {
        try {
            byte[] bArr = this.f24530f;
            int i8 = this.f24532h;
            this.f24532h = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f24532h), Integer.valueOf(this.f24531g), 1), 11, e8);
        }
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void y0(int i8, boolean z7) throws I0.u {
        O0(i8, 0);
        x0(z7 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.protobuf.AbstractC2970z
    public final void z0(byte[] bArr, int i8) throws I0.u {
        Q0(i8);
        T0(bArr, 0, i8);
    }
}
