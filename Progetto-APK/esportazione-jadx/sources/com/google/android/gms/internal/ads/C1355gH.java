package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gH, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1355gH extends AbstractC1407hH {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f18921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f18922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f18923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OutputStream f18924i;

    public C1355gH(OutputStream outputStream, int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException("bufferSize must be >= 0");
        }
        int iMax = Math.max(i8, 20);
        this.f18921f = new byte[iMax];
        this.f18922g = iMax;
        if (outputStream == null) {
            throw new NullPointerException("out");
        }
        this.f18924i = outputStream;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void P(byte b8) throws IOException {
        if (this.f18923h == this.f18922g) {
            g0();
        }
        int i8 = this.f18923h;
        this.f18923h = i8 + 1;
        this.f18921f[i8] = b8;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Q(int i8, boolean z7) throws IOException {
        h0(11);
        k0(i8 << 3);
        int i9 = this.f18923h;
        this.f18923h = i9 + 1;
        this.f18921f[i9] = z7 ? (byte) 1 : (byte) 0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void R(int i8, XG xg) throws IOException {
        c0((i8 << 3) | 2);
        c0(xg.n());
        xg.u(this);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void S(int i8, int i9) throws IOException {
        h0(14);
        k0((i8 << 3) | 5);
        i0(i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void T(int i8) throws IOException {
        h0(4);
        i0(i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void U(int i8, long j8) throws IOException {
        h0(18);
        k0((i8 << 3) | 1);
        j0(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void V(long j8) throws IOException {
        h0(8);
        j0(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void W(int i8, int i9) throws IOException {
        h0(20);
        k0(i8 << 3);
        if (i9 >= 0) {
            k0(i9);
        } else {
            l0(i9);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void X(int i8) throws IOException {
        if (i8 >= 0) {
            c0(i8);
        } else {
            e0(i8);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Y(int i8, NH nh, InterfaceC1098bI interfaceC1098bI) throws IOException {
        c0((i8 << 3) | 2);
        c0(((PG) nh).a(interfaceC1098bI));
        interfaceC1098bI.b(nh, this.f19077c);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void Z(int i8, String str) throws IOException {
        c0((i8 << 3) | 2);
        try {
            int length = str.length() * 3;
            int iM = AbstractC1407hH.M(length);
            int i9 = iM + length;
            int i10 = this.f18922g;
            if (i9 > i10) {
                byte[] bArr = new byte[length];
                int iB = AbstractC1822pI.b(str, bArr, 0, length);
                c0(iB);
                m0(0, bArr, iB);
                return;
            }
            if (i9 > i10 - this.f18923h) {
                g0();
            }
            int iM2 = AbstractC1407hH.M(str.length());
            int i11 = this.f18923h;
            byte[] bArr2 = this.f18921f;
            try {
                if (iM2 == iM) {
                    int i12 = i11 + iM2;
                    this.f18923h = i12;
                    int iB2 = AbstractC1822pI.b(str, bArr2, i12, i10 - i12);
                    this.f18923h = i11;
                    k0((iB2 - i11) - iM2);
                    this.f18923h = iB2;
                } else {
                    int iC = AbstractC1822pI.c(str);
                    k0(iC);
                    this.f18923h = AbstractC1822pI.b(str, bArr2, this.f18923h, iC);
                }
            } catch (C1770oI e8) {
                this.f18923h = i11;
                throw e8;
            } catch (ArrayIndexOutOfBoundsException e9) {
                throw new I0.u(e9);
            }
        } catch (C1770oI e10) {
            O(str, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void a0(int i8, int i9) throws IOException {
        c0((i8 << 3) | i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void b0(int i8, int i9) throws IOException {
        h0(20);
        k0(i8 << 3);
        k0(i9);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void c0(int i8) throws IOException {
        h0(5);
        k0(i8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void d0(int i8, long j8) throws IOException {
        h0(20);
        k0(i8 << 3);
        l0(j8);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1407hH
    public final void e0(long j8) throws IOException {
        h0(10);
        l0(j8);
    }

    public final void g0() throws IOException {
        this.f18924i.write(this.f18921f, 0, this.f18923h);
        this.f18923h = 0;
    }

    public final void h0(int i8) throws IOException {
        if (this.f18922g - this.f18923h < i8) {
            g0();
        }
    }

    public final void i0(int i8) {
        int i9 = this.f18923h;
        byte[] bArr = this.f18921f;
        bArr[i9] = (byte) (i8 & 255);
        bArr[i9 + 1] = (byte) ((i8 >> 8) & 255);
        bArr[i9 + 2] = (byte) ((i8 >> 16) & 255);
        this.f18923h = i9 + 4;
        bArr[i9 + 3] = (byte) ((i8 >> 24) & 255);
    }

    public final void j0(long j8) {
        int i8 = this.f18923h;
        byte[] bArr = this.f18921f;
        bArr[i8] = (byte) (j8 & 255);
        bArr[i8 + 1] = (byte) ((j8 >> 8) & 255);
        bArr[i8 + 2] = (byte) ((j8 >> 16) & 255);
        bArr[i8 + 3] = (byte) (255 & (j8 >> 24));
        bArr[i8 + 4] = (byte) (((int) (j8 >> 32)) & 255);
        bArr[i8 + 5] = (byte) (((int) (j8 >> 40)) & 255);
        bArr[i8 + 6] = (byte) (((int) (j8 >> 48)) & 255);
        this.f18923h = i8 + 8;
        bArr[i8 + 7] = (byte) (((int) (j8 >> 56)) & 255);
    }

    public final void k0(int i8) {
        boolean z7 = AbstractC1407hH.f19076e;
        byte[] bArr = this.f18921f;
        if (z7) {
            while ((i8 & (-128)) != 0) {
                int i9 = this.f18923h;
                this.f18923h = i9 + 1;
                AbstractC1718nI.n(bArr, i9, (byte) ((i8 | 128) & 255));
                i8 >>>= 7;
            }
            int i10 = this.f18923h;
            this.f18923h = i10 + 1;
            AbstractC1718nI.n(bArr, i10, (byte) i8);
            return;
        }
        while ((i8 & (-128)) != 0) {
            int i11 = this.f18923h;
            this.f18923h = i11 + 1;
            bArr[i11] = (byte) ((i8 | 128) & 255);
            i8 >>>= 7;
        }
        int i12 = this.f18923h;
        this.f18923h = i12 + 1;
        bArr[i12] = (byte) i8;
    }

    public final void l0(long j8) {
        boolean z7 = AbstractC1407hH.f19076e;
        byte[] bArr = this.f18921f;
        if (z7) {
            while (true) {
                int i8 = (int) j8;
                if ((j8 & (-128)) == 0) {
                    int i9 = this.f18923h;
                    this.f18923h = i9 + 1;
                    AbstractC1718nI.n(bArr, i9, (byte) i8);
                    return;
                } else {
                    int i10 = this.f18923h;
                    this.f18923h = i10 + 1;
                    AbstractC1718nI.n(bArr, i10, (byte) ((i8 | 128) & 255));
                    j8 >>>= 7;
                }
            }
        } else {
            while (true) {
                int i11 = (int) j8;
                if ((j8 & (-128)) == 0) {
                    int i12 = this.f18923h;
                    this.f18923h = i12 + 1;
                    bArr[i12] = (byte) i11;
                    return;
                } else {
                    int i13 = this.f18923h;
                    this.f18923h = i13 + 1;
                    bArr[i13] = (byte) ((i11 | 128) & 255);
                    j8 >>>= 7;
                }
            }
        }
    }

    public final void m0(int i8, byte[] bArr, int i9) throws IOException {
        int i10 = this.f18923h;
        int i11 = this.f18922g;
        int i12 = i11 - i10;
        byte[] bArr2 = this.f18921f;
        if (i12 >= i9) {
            System.arraycopy(bArr, i8, bArr2, i10, i9);
            this.f18923h += i9;
            return;
        }
        System.arraycopy(bArr, i8, bArr2, i10, i12);
        int i13 = i8 + i12;
        this.f18923h = i11;
        g0();
        int i14 = i9 - i12;
        if (i14 > i11) {
            this.f18924i.write(bArr, i13, i14);
        } else {
            System.arraycopy(bArr, i13, bArr2, 0, i14);
            this.f18923h = i14;
        }
    }

    @Override // S3.e
    public final void u(int i8, byte[] bArr, int i9) throws IOException {
        m0(i8, bArr, i9);
    }
}
