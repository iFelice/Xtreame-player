package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okhttp3.HttpUrl;
import p039f.AbstractC2987b;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.jr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1534jr {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f19512d = {'\r', '\n'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final char[] f19513e = {'\n'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final AbstractC2333zA f19514f = AbstractC2333zA.u(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f19515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f19516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f19517c;

    public C1534jr(byte[] bArr, int i8) {
        this.f19515a = bArr;
        this.f19517c = i8;
    }

    public final int A() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f19516b = i8 + 2;
        return (bArr[i9] & 255) | (i10 << 8);
    }

    public final long B() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        long j8 = bArr[i8];
        long j9 = bArr[i8 + 1];
        long j10 = bArr[i8 + 2];
        long j11 = bArr[i8 + 3];
        long j12 = bArr[i8 + 4];
        long j13 = bArr[i8 + 5];
        long j14 = bArr[i8 + 6];
        this.f19516b = i8 + 8;
        long j15 = j13 & 255;
        return ((((long) bArr[i8 + 7]) & 255) << 56) | ((j14 & 255) << 48) | ((j9 & 255) << 8) | (j8 & 255) | ((j10 & 255) << 16) | ((j11 & 255) << 24) | ((j12 & 255) << 32) | (j15 << 40);
    }

    public final long C() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        long j8 = bArr[i8];
        long j9 = bArr[i8 + 1];
        long j10 = bArr[i8 + 2];
        this.f19516b = i8 + 4;
        return ((((long) bArr[i8 + 3]) & 255) << 24) | (j8 & 255) | ((j9 & 255) << 8) | ((j10 & 255) << 16);
    }

    public final long D() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        long j8 = bArr[i8];
        long j9 = bArr[i8 + 1];
        long j10 = bArr[i8 + 2];
        long j11 = bArr[i8 + 3];
        long j12 = bArr[i8 + 4];
        long j13 = bArr[i8 + 5];
        long j14 = bArr[i8 + 6];
        this.f19516b = i8 + 8;
        return (((long) bArr[i8 + 7]) & 255) | ((j8 & 255) << 56) | ((j9 & 255) << 48) | ((j10 & 255) << 40) | ((j11 & 255) << 32) | ((j12 & 255) << 24) | ((j13 & 255) << 16) | ((j14 & 255) << 8);
    }

    public final long E() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        long j8 = bArr[i8];
        long j9 = bArr[i8 + 1];
        long j10 = bArr[i8 + 2];
        this.f19516b = i8 + 4;
        return (((long) bArr[i8 + 3]) & 255) | ((j8 & 255) << 24) | ((j9 & 255) << 16) | ((j10 & 255) << 8);
    }

    public final long F() {
        long jD = D();
        if (jD >= 0) {
            return jD;
        }
        throw new IllegalStateException(A0.O.z("Top bit not zero: ", jD));
    }

    public final long G() {
        int i8;
        int i9;
        long j8 = this.f19515a[this.f19516b];
        int i10 = 7;
        while (true) {
            i8 = 0;
            if (i10 < 0) {
                break;
            }
            int i11 = 1 << i10;
            if ((((long) i11) & j8) == 0) {
                if (i10 >= 6) {
                    if (i10 != 7) {
                        break;
                    }
                    i8 = 1;
                    break;
                }
                j8 &= (long) (i11 - 1);
                i8 = 7 - i10;
                break;
            }
            i10--;
        }
        if (i8 == 0) {
            throw new NumberFormatException(A0.O.z("Invalid UTF-8 sequence first byte: ", j8));
        }
        for (i9 = 1; i9 < i8; i9++) {
            byte b8 = this.f19515a[this.f19516b + i9];
            if ((b8 & 192) != 128) {
                throw new NumberFormatException(A0.O.z("Invalid UTF-8 sequence continuation byte: ", j8));
            }
            j8 = (j8 << 6) | ((long) (b8 & 63));
        }
        this.f19516b += i8;
        return j8;
    }

    public final String H() {
        int i8 = this.f19517c;
        int i9 = this.f19516b;
        if (i8 - i9 == 0) {
            return null;
        }
        while (i9 < this.f19517c && this.f19515a[i9] != 0) {
            i9++;
        }
        byte[] bArr = this.f19515a;
        int i10 = this.f19516b;
        int i11 = Et.f13234a;
        String str = new String(bArr, i10, i9 - i10, StandardCharsets.UTF_8);
        this.f19516b = i9;
        if (i9 < this.f19517c) {
            this.f19516b = i9 + 1;
        }
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0088  */
    /* JADX WARN: Code duplicated, block: B:38:0x0098  */
    /* JADX WARN: Code duplicated, block: B:40:0x009e  */
    /* JADX WARN: Code duplicated, block: B:42:0x00a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:44:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:48:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:50:0x00bf A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:63:0x00c5 A[ADDED_TO_REGION, EDGE_INSN: B:63:0x00c5->B:54:0x00c5 BREAK  A[LOOP:0: B:24:0x0061->B:52:0x00c2], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00c5 A[ADDED_TO_REGION, EDGE_INSN: B:65:0x00c5->B:54:0x00c5 BREAK  A[LOOP:0: B:24:0x0061->B:52:0x00c2], REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:68:0x00c2 A[SYNTHETIC] */
    public final String I(Charset charset) {
        byte[] bArr;
        byte b8;
        byte[] bArr2;
        byte b9;
        p113o3.r.L(f19514f.contains(charset), "Unsupported charset: ".concat(String.valueOf(charset)));
        if (this.f19517c - this.f19516b == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            c();
        }
        int i8 = 1;
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            i8 = 2;
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: ".concat(String.valueOf(charset)));
            }
        }
        int i9 = this.f19516b;
        while (true) {
            int i10 = this.f19517c;
            if (i9 >= i10 - (i8 - 1)) {
                i9 = i10;
                break;
            }
            if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
                byte b10 = this.f19515a[i9];
                int i11 = Et.f13234a;
                if (b10 == 10 || b10 == 13) {
                    break;
                }
                if (!charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    bArr = this.f19515a;
                    if (bArr[i9] == 0) {
                        b8 = bArr[i9 + 1];
                        int i12 = Et.f13234a;
                        if (b8 != 10 || b8 == 13) {
                            break;
                        }
                        if (charset.equals(StandardCharsets.UTF_16LE)) {
                            bArr2 = this.f19515a;
                            if (bArr2[i9 + 1] == 0) {
                                b9 = bArr2[i9];
                                int i13 = Et.f13234a;
                                if (b9 != 10 || b9 == 13) {
                                    break;
                                }
                            } else {
                                continue;
                            }
                        }
                        i9 += i8;
                    } else {
                        if (charset.equals(StandardCharsets.UTF_16LE)) {
                            bArr2 = this.f19515a;
                            if (bArr2[i9 + 1] == 0) {
                                b9 = bArr2[i9];
                                int i14 = Et.f13234a;
                                if (b9 != 10) {
                                    break;
                                }
                                break;
                                break;
                            }
                            continue;
                        }
                        i9 += i8;
                    }
                } else {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        bArr2 = this.f19515a;
                        if (bArr2[i9 + 1] == 0) {
                            b9 = bArr2[i9];
                            int i15 = Et.f13234a;
                            if (b9 != 10) {
                                break;
                                break;
                            }
                            break;
                            break;
                        }
                        continue;
                    }
                    i9 += i8;
                }
            } else if (charset.equals(StandardCharsets.UTF_16)) {
                bArr = this.f19515a;
                if (bArr[i9] == 0) {
                    b8 = bArr[i9 + 1];
                    int i16 = Et.f13234a;
                    if (b8 != 10) {
                        break;
                    }
                    break;
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr2 = this.f19515a;
                    if (bArr2[i9 + 1] == 0) {
                        b9 = bArr2[i9];
                        int i17 = Et.f13234a;
                        if (b9 != 10) {
                            break;
                            break;
                        }
                        break;
                        break;
                    }
                    continue;
                }
                i9 += i8;
            } else {
                bArr = this.f19515a;
                if (bArr[i9] == 0) {
                    b8 = bArr[i9 + 1];
                    int i18 = Et.f13234a;
                    if (b8 != 10) {
                        break;
                        break;
                    }
                    break;
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr2 = this.f19515a;
                    if (bArr2[i9 + 1] == 0) {
                        b9 = bArr2[i9];
                        int i19 = Et.f13234a;
                        if (b9 != 10) {
                            break;
                            break;
                        }
                        break;
                        break;
                    }
                    continue;
                }
                i9 += i8;
            }
        }
        String strB = b(i9 - this.f19516b, charset);
        if (this.f19516b != this.f19517c && m(charset, f19512d) == '\r') {
            m(charset, f19513e);
        }
        return strB;
    }

    public final String a(int i8) {
        if (i8 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        int i9 = this.f19516b;
        int i10 = (i9 + i8) - 1;
        int i11 = (i10 >= this.f19517c || this.f19515a[i10] != 0) ? i8 : i8 - 1;
        byte[] bArr = this.f19515a;
        int i12 = Et.f13234a;
        String str = new String(bArr, i9, i11, StandardCharsets.UTF_8);
        this.f19516b += i8;
        return str;
    }

    public final String b(int i8, Charset charset) {
        byte[] bArr = this.f19515a;
        int i9 = this.f19516b;
        String str = new String(bArr, i9, i8, charset);
        this.f19516b = i9 + i8;
        return str;
    }

    public final Charset c() {
        int i8 = this.f19517c;
        int i9 = this.f19516b;
        int i10 = i8 - i9;
        if (i10 >= 3) {
            byte[] bArr = this.f19515a;
            if (bArr[i9] == -17 && bArr[i9 + 1] == -69 && bArr[i9 + 2] == -65) {
                this.f19516b = i9 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (i10 < 2) {
            return null;
        }
        byte[] bArr2 = this.f19515a;
        byte b8 = bArr2[i9];
        if (b8 == -2) {
            if (bArr2[i9 + 1] != -1) {
                return null;
            }
            this.f19516b = i9 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b8 != -1 || bArr2[i9 + 1] != -2) {
            return null;
        }
        this.f19516b = i9 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final short d() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f19516b = i8 + 2;
        return (short) ((bArr[i9] & 255) | (i10 << 8));
    }

    public final void e(int i8) {
        byte[] bArr = this.f19515a;
        if (i8 > bArr.length) {
            this.f19515a = Arrays.copyOf(bArr, i8);
        }
    }

    public final void f(int i8, byte[] bArr, int i9) {
        System.arraycopy(this.f19515a, this.f19516b, bArr, i8, i9);
        this.f19516b += i9;
    }

    public final void g(int i8) {
        byte[] bArr = this.f19515a;
        if (bArr.length < i8) {
            bArr = new byte[i8];
        }
        h(i8, bArr);
    }

    public final void h(int i8, byte[] bArr) {
        this.f19515a = bArr;
        this.f19517c = i8;
        this.f19516b = 0;
    }

    public final void i(int i8) {
        boolean z7 = false;
        if (i8 >= 0 && i8 <= this.f19515a.length) {
            z7 = true;
        }
        p113o3.r.J(z7);
        this.f19517c = i8;
    }

    public final void j(int i8) {
        boolean z7 = false;
        if (i8 >= 0 && i8 <= this.f19517c) {
            z7 = true;
        }
        p113o3.r.J(z7);
        this.f19516b = i8;
    }

    public final void k(int i8) {
        j(this.f19516b + i8);
    }

    public final byte[] l() {
        return this.f19515a;
    }

    public final char m(Charset charset, char[] cArr) {
        int iN = n(charset);
        if (iN != 0) {
            int i8 = iN >> 16;
            for (char c8 : cArr) {
                char c9 = (char) i8;
                if (c8 == c9) {
                    this.f19516b += (char) iN;
                    return c9;
                }
            }
        }
        return (char) 0;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:17:0x0043  */
    /* JADX WARN: Code duplicated, block: B:19:0x004a  */
    /* JADX WARN: Code duplicated, block: B:21:0x0059  */
    /* JADX WARN: Code duplicated, block: B:23:0x0061  */
    /* JADX WARN: Code duplicated, block: B:25:0x0068  */
    public final int n(Charset charset) {
        byte b8;
        int i8;
        int i9;
        int i10;
        byte b9;
        int i11;
        int i12;
        int i13;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            int i14 = this.f19517c;
            int i15 = this.f19516b;
            if (i14 - i15 > 0) {
                long j8 = this.f19515a[i15] & 255;
                char c8 = (char) j8;
                AbstractC2987b.C0(j8, "Out of range: %s", ((long) c8) == j8);
                b8 = (byte) c8;
                i8 = 1;
            } else {
                i8 = 2;
                if (charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16BE)) {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        i12 = this.f19517c;
                        i13 = this.f19516b;
                        if (i12 - i13 >= 2) {
                            byte[] bArr = this.f19515a;
                            byte b10 = bArr[i13 + 1];
                            b9 = bArr[i13];
                            i11 = b10 << 8;
                        }
                    }
                    return 0;
                }
                i9 = this.f19517c;
                i10 = this.f19516b;
                if (i9 - i10 < 2) {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        i12 = this.f19517c;
                        i13 = this.f19516b;
                        if (i12 - i13 >= 2) {
                            byte[] bArr2 = this.f19515a;
                            byte b11 = bArr2[i13 + 1];
                            b9 = bArr2[i13];
                            i11 = b11 << 8;
                        }
                    }
                    return 0;
                }
                byte[] bArr3 = this.f19515a;
                byte b12 = bArr3[i10];
                b9 = bArr3[i10 + 1];
                i11 = b12 << 8;
                b8 = (byte) ((char) ((b9 & 255) | i11));
            }
        } else {
            i8 = 2;
            if (charset.equals(StandardCharsets.UTF_16)) {
                i9 = this.f19517c;
                i10 = this.f19516b;
                if (i9 - i10 < 2) {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        i12 = this.f19517c;
                        i13 = this.f19516b;
                        if (i12 - i13 >= 2) {
                            byte[] bArr4 = this.f19515a;
                            byte b13 = bArr4[i13 + 1];
                            b9 = bArr4[i13];
                            i11 = b13 << 8;
                        }
                    }
                    return 0;
                }
                byte[] bArr5 = this.f19515a;
                byte b14 = bArr5[i10];
                b9 = bArr5[i10 + 1];
                i11 = b14 << 8;
            } else {
                i9 = this.f19517c;
                i10 = this.f19516b;
                if (i9 - i10 < 2) {
                    if (charset.equals(StandardCharsets.UTF_16LE)) {
                        i12 = this.f19517c;
                        i13 = this.f19516b;
                        if (i12 - i13 >= 2) {
                            byte[] bArr6 = this.f19515a;
                            byte b15 = bArr6[i13 + 1];
                            b9 = bArr6[i13];
                            i11 = b15 << 8;
                        }
                    }
                    return 0;
                }
                byte[] bArr7 = this.f19515a;
                byte b16 = bArr7[i10];
                b9 = bArr7[i10 + 1];
                i11 = b16 << 8;
            }
            b8 = (byte) ((char) ((b9 & 255) | i11));
        }
        long j9 = b8;
        char c9 = (char) j9;
        AbstractC2987b.C0(j9, "Out of range: %s", ((long) c9) == j9);
        return (c9 << 16) + i8;
    }

    public final int o() {
        return this.f19517c - this.f19516b;
    }

    public final int p() {
        return this.f19516b;
    }

    public final int q() {
        return this.f19517c;
    }

    public final int r() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = i8 + 3;
        int i12 = bArr[i8 + 2] & 255;
        this.f19516b = i8 + 4;
        return (bArr[i11] & 255) | (i9 << 24) | (i10 << 16) | (i12 << 8);
    }

    public final int s() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        int i11 = bArr[i8 + 2] & 255;
        this.f19516b = i8 + 4;
        return ((bArr[i8 + 3] & 255) << 24) | (i10 << 8) | i9 | (i11 << 16);
    }

    public final int t() {
        int iS = s();
        if (iS >= 0) {
            return iS;
        }
        throw new IllegalStateException(p000a.r.f("Top bit not zero: ", iS));
    }

    public final int u() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f19516b = i8 + 2;
        return ((bArr[i9] & 255) << 8) | i10;
    }

    public final int v() {
        return (w() << 21) | (w() << 14) | (w() << 7) | w();
    }

    public final int w() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        this.f19516b = i8 + 1;
        return bArr[i8] & 255;
    }

    public final int x() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = bArr[i8] & 255;
        int i10 = bArr[i8 + 1] & 255;
        this.f19516b = i8 + 4;
        return i10 | (i9 << 8);
    }

    public final int y() {
        byte[] bArr = this.f19515a;
        int i8 = this.f19516b;
        int i9 = bArr[i8] & 255;
        int i10 = i8 + 2;
        int i11 = bArr[i8 + 1] & 255;
        this.f19516b = i8 + 3;
        return (bArr[i10] & 255) | (i9 << 16) | (i11 << 8);
    }

    public final int z() {
        int iR = r();
        if (iR >= 0) {
            return iR;
        }
        throw new IllegalStateException(p000a.r.f("Top bit not zero: ", iR));
    }

    public C1534jr() {
        this.f19515a = Et.f13239f;
    }

    public C1534jr(int i8) {
        this.f19515a = new byte[i8];
        this.f19517c = i8;
    }

    public C1534jr(byte[] bArr) {
        this.f19515a = bArr;
        this.f19517c = bArr.length;
    }
}
