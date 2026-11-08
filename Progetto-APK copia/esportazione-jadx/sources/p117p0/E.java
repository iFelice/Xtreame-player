package p117p0;

import A0.O;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okhttp3.HttpUrl;
import p000a.r;
import p190y4.k;
import z4.L;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final char[] f28032d = {'\r', '\n'};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final char[] f28033e = {'\n'};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final L f28034f = L.q(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f28035a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f28036b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28037c;

    public E() {
        this.f28035a = M.f28051b;
    }

    public static int b(int i8, int i9, int i10, int i11) {
        byte b8 = (byte) i10;
        return k.C((byte) 0, q0.j(((i8 & 7) << 2) | ((i9 & 48) >> 4)), q0.j(((((byte) i9) & 15) << 4) | ((b8 & 60) >> 2)), q0.j(((b8 & 3) << 6) | (((byte) i11) & 63)));
    }

    public static int f(Charset charset) {
        H1.c("Unsupported charset: " + charset, f28034f.contains(charset));
        return (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) ? 1 : 2;
    }

    public static boolean g(byte b8) {
        return (b8 & 192) == 128;
    }

    public final int A() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = (bArr[i8 + 1] & 255) | ((bArr[i8] & 255) << 8);
        this.f28036b = i8 + 4;
        return i9;
    }

    public final long B() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 3;
        long j8 = ((((long) bArr[i8]) & 255) << 24) | ((((long) bArr[i8 + 1]) & 255) << 16) | ((((long) bArr[i8 + 2]) & 255) << 8);
        this.f28036b = i8 + 4;
        return (((long) bArr[i9]) & 255) | j8;
    }

    public final int C() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 2;
        int i10 = ((bArr[i8 + 1] & 255) << 8) | ((bArr[i8] & 255) << 16);
        this.f28036b = i8 + 3;
        return (bArr[i9] & 255) | i10;
    }

    public final int D() {
        int iL = l();
        if (iL >= 0) {
            return iL;
        }
        throw new IllegalStateException(r.f("Top bit not zero: ", iL));
    }

    public final long E() {
        long jT = t();
        if (jT >= 0) {
            return jT;
        }
        throw new IllegalStateException(O.z("Top bit not zero: ", jT));
    }

    public final int F() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 1;
        int i10 = (bArr[i8] & 255) << 8;
        this.f28036b = i8 + 2;
        return (bArr[i9] & 255) | i10;
    }

    public final long G() {
        int i8;
        int i9;
        long j8 = this.f28035a[this.f28036b];
        int i10 = 7;
        while (true) {
            if (i10 >= 0) {
                int i11 = 1 << i10;
                if ((((long) i11) & j8) == 0) {
                    if (i10 < 6) {
                        j8 &= (long) (i11 - 1);
                        i9 = 7 - i10;
                        break;
                    }
                    if (i10 == 7) {
                        i9 = 1;
                        break;
                    }
                } else {
                    i10--;
                }
            }
            i9 = 0;
            break;
        }
        if (i9 == 0) {
            throw new NumberFormatException(O.z("Invalid UTF-8 sequence first byte: ", j8));
        }
        for (i8 = 1; i8 < i9; i8++) {
            byte b8 = this.f28035a[this.f28036b + i8];
            if ((b8 & 192) != 128) {
                throw new NumberFormatException(O.z("Invalid UTF-8 sequence continuation byte: ", j8));
            }
            j8 = (j8 << 6) | ((long) (b8 & 63));
        }
        this.f28036b += i9;
        return j8;
    }

    public final Charset H() {
        if (a() >= 3) {
            byte[] bArr = this.f28035a;
            int i8 = this.f28036b;
            if (bArr[i8] == -17 && bArr[i8 + 1] == -69 && bArr[i8 + 2] == -65) {
                this.f28036b = i8 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() < 2) {
            return null;
        }
        byte[] bArr2 = this.f28035a;
        int i9 = this.f28036b;
        byte b8 = bArr2[i9];
        if (b8 == -2 && bArr2[i9 + 1] == -1) {
            this.f28036b = i9 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b8 != -1 || bArr2[i9 + 1] != -2) {
            return null;
        }
        this.f28036b = i9 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public final void I(int i8) {
        byte[] bArr = this.f28035a;
        if (bArr.length < i8) {
            bArr = new byte[i8];
        }
        J(i8, bArr);
    }

    public final void J(int i8, byte[] bArr) {
        this.f28035a = bArr;
        this.f28037c = i8;
        this.f28036b = 0;
    }

    public final void K(int i8) {
        H1.d(i8 >= 0 && i8 <= this.f28035a.length);
        this.f28037c = i8;
    }

    public final void L(int i8) {
        H1.d(i8 >= 0 && i8 <= this.f28037c);
        this.f28036b = i8;
    }

    public final void M(int i8) {
        L(this.f28036b + i8);
    }

    public final int a() {
        return Math.max(this.f28037c - this.f28036b, 0);
    }

    public final void c(int i8) {
        byte[] bArr = this.f28035a;
        if (i8 > bArr.length) {
            this.f28035a = Arrays.copyOf(bArr, i8);
        }
    }

    public final byte[] d() {
        return this.f28035a;
    }

    public final int e() {
        return this.f28036b;
    }

    public final char h(int i8, ByteOrder byteOrder) {
        byte b8;
        byte b9;
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            byte[] bArr = this.f28035a;
            int i9 = this.f28036b + i8;
            b8 = bArr[i9];
            b9 = bArr[i9 + 1];
        } else {
            byte[] bArr2 = this.f28035a;
            int i10 = this.f28036b + i8;
            b8 = bArr2[i10 + 1];
            b9 = bArr2[i10];
        }
        return (char) ((b8 << 8) | (b9 & 255));
    }

    public final int i(Charset charset) {
        int codePoint;
        int i8;
        int iB;
        H1.c("Unsupported charset: " + charset, f28034f.contains(charset));
        if (a() < f(charset)) {
            throw new IndexOutOfBoundsException("position=" + this.f28036b + ", limit=" + this.f28037c);
        }
        int i9 = 1;
        if (charset.equals(StandardCharsets.US_ASCII)) {
            byte b8 = this.f28035a[this.f28036b];
            if ((b8 & 128) != 0) {
                return 0;
            }
            codePoint = b8 & 255;
        } else if (charset.equals(StandardCharsets.UTF_8)) {
            byte b9 = this.f28035a[this.f28036b];
            if ((b9 & 128) == 0) {
                i8 = 1;
            } else if ((b9 & 224) == 192 && a() >= 2 && g(this.f28035a[this.f28036b + 1])) {
                i8 = 2;
            } else if ((this.f28035a[this.f28036b] & 240) == 224 && a() >= 3 && g(this.f28035a[this.f28036b + 1]) && g(this.f28035a[this.f28036b + 2])) {
                i8 = 3;
            } else {
                i8 = ((this.f28035a[this.f28036b] & 248) == 240 && a() >= 4 && g(this.f28035a[this.f28036b + 1]) && g(this.f28035a[this.f28036b + 2]) && g(this.f28035a[this.f28036b + 3])) ? 4 : 0;
            }
            if (i8 == 1) {
                iB = this.f28035a[this.f28036b] & 255;
            } else if (i8 == 2) {
                byte[] bArr = this.f28035a;
                int i10 = this.f28036b;
                iB = b(0, 0, bArr[i10], bArr[i10 + 1]);
            } else if (i8 == 3) {
                byte[] bArr2 = this.f28035a;
                int i11 = this.f28036b;
                iB = b(0, bArr2[i11] & 15, bArr2[i11 + 1], bArr2[i11 + 2]);
            } else {
                if (i8 != 4) {
                    return 0;
                }
                byte[] bArr3 = this.f28035a;
                int i12 = this.f28036b;
                iB = b(bArr3[i12], bArr3[i12 + 1], bArr3[i12 + 2], bArr3[i12 + 3]);
            }
            i9 = i8;
            codePoint = iB;
        } else {
            ByteOrder byteOrder = charset.equals(StandardCharsets.UTF_16LE) ? ByteOrder.LITTLE_ENDIAN : ByteOrder.BIG_ENDIAN;
            char cH = h(0, byteOrder);
            if (!Character.isHighSurrogate(cH) || a() < 4) {
                codePoint = cH;
                i9 = 2;
            } else {
                codePoint = Character.toCodePoint(cH, h(2, byteOrder));
                i9 = 4;
            }
        }
        return (codePoint << 8) | i9;
    }

    public final void j(int i8, byte[] bArr, int i9) {
        System.arraycopy(this.f28035a, this.f28036b, bArr, i8, i9);
        this.f28036b += i9;
    }

    public final char k(Charset charset, char[] cArr) {
        int i8;
        if (a() < f(charset) || (i8 = i(charset)) == 0) {
            return (char) 0;
        }
        long j8 = i8 >>> 8;
        k.n(j8, "out of range: %s", (j8 >> 32) == 0);
        int i9 = (int) j8;
        if (Character.isSupplementaryCodePoint(i9)) {
            return (char) 0;
        }
        long j9 = i9;
        char c8 = (char) j9;
        k.n(j9, "Out of range: %s", ((long) c8) == j9);
        for (char c9 : cArr) {
            if (c9 == c8) {
                this.f28036b = k.y(i8 & 255) + this.f28036b;
                return c8;
            }
        }
        return (char) 0;
    }

    public final int l() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = ((bArr[i8 + 1] & 255) << 16) | ((bArr[i8] & 255) << 24);
        int i10 = i8 + 3;
        int i11 = i9 | ((bArr[i8 + 2] & 255) << 8);
        this.f28036b = i8 + 4;
        return (bArr[i10] & 255) | i11;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c6 A[SYNTHETIC] */
    public final String m(Charset charset) {
        int i8;
        byte[] bArr;
        H1.c("Unsupported charset: " + charset, f28034f.contains(charset));
        if (a() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            H();
        }
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(charset2)) {
            i8 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i8 = 2;
        }
        int i9 = this.f28036b;
        while (true) {
            int i10 = this.f28037c;
            if (i9 >= i10 - (i8 - 1)) {
                i9 = i10;
                break;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && M.O(this.f28035a[i9])) {
                break;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr2 = this.f28035a;
                if (bArr2[i9] == 0 && M.O(bArr2[i9 + 1])) {
                    break;
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.f28035a;
                    if (bArr[i9 + 1] == 0 && M.O(bArr[i9])) {
                        break;
                    }
                }
                i9 += i8;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    bArr = this.f28035a;
                    if (bArr[i9 + 1] == 0) {
                        continue;
                    }
                }
                i9 += i8;
            }
        }
        String strX = x(i9 - this.f28036b, charset);
        if (this.f28036b != this.f28037c && k(charset, f28032d) == '\r') {
            k(charset, f28033e);
        }
        return strX;
    }

    public final int n() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = ((bArr[i8 + 1] & 255) << 8) | (bArr[i8] & 255);
        int i10 = i8 + 3;
        int i11 = i9 | ((bArr[i8 + 2] & 255) << 16);
        this.f28036b = i8 + 4;
        return ((bArr[i10] & 255) << 24) | i11;
    }

    public final long o() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 7;
        long j8 = (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16) | ((((long) bArr[i8 + 3]) & 255) << 24) | ((((long) bArr[i8 + 4]) & 255) << 32) | ((((long) bArr[i8 + 5]) & 255) << 40) | ((((long) bArr[i8 + 6]) & 255) << 48);
        this.f28036b = i8 + 8;
        return ((((long) bArr[i9]) & 255) << 56) | j8;
    }

    public final short p() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f28036b = i8 + 2;
        return (short) (((bArr[i9] & 255) << 8) | i10);
    }

    public final long q() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 3;
        long j8 = (((long) bArr[i8]) & 255) | ((((long) bArr[i8 + 1]) & 255) << 8) | ((((long) bArr[i8 + 2]) & 255) << 16);
        this.f28036b = i8 + 4;
        return ((((long) bArr[i9]) & 255) << 24) | j8;
    }

    public final int r() {
        int iN = n();
        if (iN >= 0) {
            return iN;
        }
        throw new IllegalStateException(r.f("Top bit not zero: ", iN));
    }

    public final int s() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 1;
        int i10 = bArr[i8] & 255;
        this.f28036b = i8 + 2;
        return ((bArr[i9] & 255) << 8) | i10;
    }

    public final long t() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 7;
        long j8 = ((((long) bArr[i8]) & 255) << 56) | ((((long) bArr[i8 + 1]) & 255) << 48) | ((((long) bArr[i8 + 2]) & 255) << 40) | ((((long) bArr[i8 + 3]) & 255) << 32) | ((((long) bArr[i8 + 4]) & 255) << 24) | ((((long) bArr[i8 + 5]) & 255) << 16) | ((((long) bArr[i8 + 6]) & 255) << 8);
        this.f28036b = i8 + 8;
        return (((long) bArr[i9]) & 255) | j8;
    }

    public final String u() {
        if (a() == 0) {
            return null;
        }
        int i8 = this.f28036b;
        while (i8 < this.f28037c && this.f28035a[i8] != 0) {
            i8++;
        }
        byte[] bArr = this.f28035a;
        int i9 = this.f28036b;
        String str = M.f28050a;
        String str2 = new String(bArr, i9, i8 - i9, StandardCharsets.UTF_8);
        this.f28036b = i8;
        if (i8 < this.f28037c) {
            this.f28036b = i8 + 1;
        }
        return str2;
    }

    public final String v(int i8) {
        if (i8 == 0) {
            return HttpUrl.FRAGMENT_ENCODE_SET;
        }
        int i9 = this.f28036b;
        int i10 = (i9 + i8) - 1;
        int i11 = (i10 >= this.f28037c || this.f28035a[i10] != 0) ? i8 : i8 - 1;
        byte[] bArr = this.f28035a;
        String str = M.f28050a;
        String str2 = new String(bArr, i9, i11, StandardCharsets.UTF_8);
        this.f28036b += i8;
        return str2;
    }

    public final short w() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        int i9 = i8 + 1;
        int i10 = (bArr[i8] & 255) << 8;
        this.f28036b = i8 + 2;
        return (short) ((bArr[i9] & 255) | i10);
    }

    public final String x(int i8, Charset charset) {
        String str = new String(this.f28035a, this.f28036b, i8, charset);
        this.f28036b += i8;
        return str;
    }

    public final int y() {
        return (z() << 21) | (z() << 14) | (z() << 7) | z();
    }

    public final int z() {
        byte[] bArr = this.f28035a;
        int i8 = this.f28036b;
        this.f28036b = i8 + 1;
        return bArr[i8] & 255;
    }

    public E(int i8) {
        this.f28035a = new byte[i8];
        this.f28037c = i8;
    }

    public E(byte[] bArr) {
        this.f28035a = bArr;
        this.f28037c = bArr.length;
    }

    public E(byte[] bArr, int i8) {
        this.f28035a = bArr;
        this.f28037c = i8;
    }
}
