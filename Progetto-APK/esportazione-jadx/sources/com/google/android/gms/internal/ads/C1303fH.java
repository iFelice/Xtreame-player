package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1303fH extends AbstractC1407hH {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f18737f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18738g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18739h;

    public C1303fH(byte[] bArr, int i8) {
        int length = bArr.length;
        if (((length - i8) | i8) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(i8)));
        }
        this.f18737f = bArr;
        this.f18739h = 0;
        this.f18738g = i8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void P(byte b8) throws I0.u {
        try {
            byte[] bArr = this.f18737f;
            int i8 = this.f18739h;
            this.f18739h = i8 + 1;
            bArr[i8] = b8;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), 1), 5, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Q(int i8, boolean z7) throws I0.u {
        c0(i8 << 3);
        P(z7 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void R(int i8, XG xg) throws I0.u {
        c0((i8 << 3) | 2);
        c0(xg.n());
        xg.u(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void S(int i8, int i9) throws I0.u {
        c0((i8 << 3) | 5);
        T(i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void T(int i8) throws I0.u {
        try {
            byte[] bArr = this.f18737f;
            int i9 = this.f18739h;
            bArr[i9] = (byte) (i8 & 255);
            bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
            bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
            this.f18739h = i9 + 4;
            bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), 1), 5, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void U(int i8, long j8) throws I0.u {
        c0((i8 << 3) | 1);
        V(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void V(long j8) throws I0.u {
        try {
            byte[] bArr = this.f18737f;
            int i8 = this.f18739h;
            bArr[i8] = (byte) (((int) j8) & 255);
            bArr[i8 + 1] = (byte) (((int) (j8 >> 8)) & 255);
            bArr[i8 + 2] = (byte) (((int) (j8 >> 16)) & 255);
            bArr[i8 + 3] = (byte) (((int) (j8 >> 24)) & 255);
            bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
            bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
            bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
            this.f18739h = i8 + 8;
            bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), 1), 5, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void W(int i8, int i9) throws I0.u {
        c0(i8 << 3);
        X(i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void X(int i8) throws I0.u {
        if (i8 >= 0) {
            c0(i8);
        } else {
            e0(i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Y(int i8, NH nh, InterfaceC1098bI interfaceC1098bI) throws I0.u {
        c0((i8 << 3) | 2);
        c0(((PG) nh).a(interfaceC1098bI));
        interfaceC1098bI.b(nh, this.f19077c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Z(int i8, String str) throws I0.u {
        c0((i8 << 3) | 2);
        int i9 = this.f18739h;
        try {
            int iM = AbstractC1407hH.M(str.length() * 3);
            int iM2 = AbstractC1407hH.M(str.length());
            int i10 = this.f18738g;
            byte[] bArr = this.f18737f;
            if (iM2 == iM) {
                int i11 = i9 + iM2;
                this.f18739h = i11;
                int iB = AbstractC1822pI.b(str, bArr, i11, i10 - i11);
                this.f18739h = i9;
                c0((iB - i9) - iM2);
                this.f18739h = iB;
            } else {
                c0(AbstractC1822pI.c(str));
                int i12 = this.f18739h;
                this.f18739h = AbstractC1822pI.b(str, bArr, i12, i10 - i12);
            }
        } catch (C1770oI e8) {
            this.f18739h = i9;
            O(str, e8);
        } catch (IndexOutOfBoundsException e9) {
            throw new I0.u(e9);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void a0(int i8, int i9) throws I0.u {
        c0((i8 << 3) | i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void b0(int i8, int i9) throws I0.u {
        c0(i8 << 3);
        c0(i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void c0(int i8) throws I0.u {
        while (true) {
            int i9 = i8 & (-128);
            byte[] bArr = this.f18737f;
            if (i9 == 0) {
                int i10 = this.f18739h;
                this.f18739h = i10 + 1;
                bArr[i10] = (byte) i8;
                return;
            } else {
                try {
                    int i11 = this.f18739h;
                    this.f18739h = i11 + 1;
                    bArr[i11] = (byte) ((i8 | 128) & 255);
                    i8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), 1), 5, e8);
                }
            }
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), 1), 5, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void d0(int i8, long j8) throws I0.u {
        c0(i8 << 3);
        e0(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void e0(long j8) throws I0.u {
        boolean z7 = AbstractC1407hH.f19076e;
        int i8 = this.f18738g;
        byte[] bArr = this.f18737f;
        if (!z7 || i8 - this.f18739h < 10) {
            while ((j8 & (-128)) != 0) {
                try {
                    int i9 = this.f18739h;
                    this.f18739h = i9 + 1;
                    bArr[i9] = (byte) ((((int) j8) | 128) & 255);
                    j8 >>>= 7;
                } catch (IndexOutOfBoundsException e8) {
                    throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(i8), 1), 5, e8);
                }
            }
            int i10 = this.f18739h;
            this.f18739h = i10 + 1;
            bArr[i10] = (byte) j8;
            return;
        }
        while (true) {
            int i11 = (int) j8;
            if ((j8 & (-128)) == 0) {
                int i12 = this.f18739h;
                this.f18739h = 1 + i12;
                AbstractC1718nI.n(bArr, i12, (byte) i11);
                return;
            } else {
                int i13 = this.f18739h;
                this.f18739h = i13 + 1;
                AbstractC1718nI.n(bArr, i13, (byte) ((i11 | 128) & 255));
                j8 >>>= 7;
            }
        }
    }

    public final int g0() {
        return this.f18738g - this.f18739h;
    }

    @Override // S3.e
    public final void u(int i8, byte[] bArr, int i9) throws I0.u {
        try {
            System.arraycopy(bArr, i8, this.f18737f, this.f18739h, i9);
            this.f18739h += i9;
        } catch (IndexOutOfBoundsException e8) {
            throw new I0.u(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f18739h), Integer.valueOf(this.f18738g), Integer.valueOf(i9)), 5, e8);
        }
    }
}
