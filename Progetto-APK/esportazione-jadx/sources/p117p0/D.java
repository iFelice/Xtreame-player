package p117p0;

import com.google.android.gms.internal.measurement.H1;

/* JADX INFO: loaded from: classes.dex */
public final class D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f28027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f28028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f28029c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f28030d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f28031e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public D(byte[] bArr, int i8, Object obj) {
        this(bArr, bArr.length);
        this.f28027a = i8;
        if (i8 != 2) {
        } else {
            this.f28028b = bArr;
            this.f28029c = bArr.length;
        }
    }

    public final void a() {
        int i8;
        int i9;
        int i10;
        boolean z7 = false;
        switch (this.f28027a) {
            case 0:
                int i11 = this.f28029c;
                if (i11 >= 0 && (i11 < (i8 = this.f28031e) || (i11 == i8 && this.f28030d == 0))) {
                    z7 = true;
                }
                H1.i(z7);
                break;
            case 1:
                int i12 = this.f28030d;
                if (i12 >= 0 && (i12 < (i9 = this.f28029c) || (i12 == i9 && this.f28031e == 0))) {
                    z7 = true;
                }
                H1.i(z7);
                break;
            default:
                int i13 = this.f28030d;
                if (i13 >= 0 && (i13 < (i10 = this.f28029c) || (i13 == i10 && this.f28031e == 0))) {
                    z7 = true;
                }
                H1.i(z7);
                break;
        }
    }

    public final int b() {
        return ((this.f28031e - this.f28029c) * 8) - this.f28030d;
    }

    public final void c() {
        switch (this.f28027a) {
            case 0:
                if (this.f28030d != 0) {
                    this.f28030d = 0;
                    this.f28029c++;
                    a();
                    break;
                }
                break;
            default:
                int i8 = this.f28031e;
                if (i8 > 0) {
                    u(8 - i8);
                }
                break;
        }
    }

    public final boolean d(int i8) {
        int i9 = this.f28030d;
        int i10 = i8 / 8;
        int i11 = i9 + i10;
        int i12 = (this.f28031e + i8) - (i10 * 8);
        if (i12 > 7) {
            i11++;
            i12 -= 8;
        }
        while (true) {
            i9++;
            if (i9 > i11 || i11 >= this.f28029c) {
                break;
            }
            if (s(i9)) {
                i11++;
                i9 += 2;
            }
        }
        int i13 = this.f28029c;
        if (i11 >= i13) {
            return i11 == i13 && i12 == 0;
        }
        return true;
    }

    public final boolean e() {
        int i8 = this.f28030d;
        int i9 = this.f28031e;
        int i10 = 0;
        while (this.f28030d < this.f28029c && !h()) {
            i10++;
        }
        boolean z7 = this.f28030d == this.f28029c;
        this.f28030d = i8;
        this.f28031e = i9;
        return !z7 && d((i10 * 2) + 1);
    }

    public final int f() {
        H1.i(this.f28030d == 0);
        return this.f28029c;
    }

    public final int g() {
        switch (this.f28027a) {
            case 0:
                return (this.f28029c * 8) + this.f28030d;
            default:
                return (this.f28030d * 8) + this.f28031e;
        }
    }

    public final boolean h() {
        boolean z7;
        switch (this.f28027a) {
            case 0:
                z7 = (this.f28028b[this.f28029c] & (128 >> this.f28030d)) != 0;
                t();
                break;
            case 1:
                z7 = (this.f28028b[this.f28030d] & (128 >> this.f28031e)) != 0;
                t();
                break;
            default:
                z7 = (((this.f28028b[this.f28030d] & 255) >> this.f28031e) & 1) == 1;
                u(1);
                break;
        }
        return z7;
    }

    public final int i(int i8) {
        switch (this.f28027a) {
            case 0:
                if (i8 == 0) {
                    return 0;
                }
                this.f28030d += i8;
                int i9 = 0;
                while (true) {
                    int i10 = this.f28030d;
                    if (i10 <= 8) {
                        byte[] bArr = this.f28028b;
                        int i11 = this.f28029c;
                        int i12 = ((-1) >>> (32 - i8)) & (i9 | ((255 & bArr[i11]) >> (8 - i10)));
                        if (i10 == 8) {
                            this.f28030d = 0;
                            this.f28029c = i11 + 1;
                        }
                        a();
                        return i12;
                    }
                    int i13 = i10 - 8;
                    this.f28030d = i13;
                    byte[] bArr2 = this.f28028b;
                    int i14 = this.f28029c;
                    this.f28029c = i14 + 1;
                    i9 |= (bArr2[i14] & 255) << i13;
                }
                break;
            case 1:
                this.f28031e += i8;
                int i15 = 0;
                while (true) {
                    int i16 = this.f28031e;
                    int i17 = 2;
                    if (i16 <= 8) {
                        byte[] bArr3 = this.f28028b;
                        int i18 = this.f28030d;
                        int i19 = ((-1) >>> (32 - i8)) & (i15 | ((255 & bArr3[i18]) >> (8 - i16)));
                        if (i16 == 8) {
                            this.f28031e = 0;
                            this.f28030d = i18 + (s(i18 + 1) ? 2 : 1);
                        }
                        a();
                        return i19;
                    }
                    int i20 = i16 - 8;
                    this.f28031e = i20;
                    byte[] bArr4 = this.f28028b;
                    int i21 = this.f28030d;
                    i15 |= (bArr4[i21] & 255) << i20;
                    if (!s(i21 + 1)) {
                        i17 = 1;
                    }
                    this.f28030d = i21 + i17;
                }
                break;
            default:
                int i22 = this.f28030d;
                int iMin = Math.min(i8, 8 - this.f28031e);
                int i23 = i22 + 1;
                int i24 = ((this.f28028b[i22] & 255) >> this.f28031e) & (255 >> (8 - iMin));
                while (iMin < i8) {
                    i24 |= (this.f28028b[i23] & 255) << iMin;
                    iMin += 8;
                    i23++;
                }
                int i25 = i24 & ((-1) >>> (32 - i8));
                u(i8);
                return i25;
        }
    }

    public final void j(byte[] bArr, int i8) {
        int i9 = i8 >> 3;
        for (int i10 = 0; i10 < i9; i10++) {
            byte[] bArr2 = this.f28028b;
            int i11 = this.f28029c;
            int i12 = i11 + 1;
            this.f28029c = i12;
            byte b8 = bArr2[i11];
            int i13 = this.f28030d;
            byte b9 = (byte) (b8 << i13);
            bArr[i10] = b9;
            bArr[i10] = (byte) (((255 & bArr2[i12]) >> (8 - i13)) | b9);
        }
        int i14 = i8 & 7;
        if (i14 == 0) {
            return;
        }
        byte b10 = (byte) (bArr[i9] & (255 >> i14));
        bArr[i9] = b10;
        int i15 = this.f28030d;
        if (i15 + i14 > 8) {
            byte[] bArr3 = this.f28028b;
            int i16 = this.f28029c;
            this.f28029c = i16 + 1;
            bArr[i9] = (byte) (b10 | ((bArr3[i16] & 255) << i15));
            this.f28030d = i15 - 8;
        }
        int i17 = this.f28030d + i14;
        this.f28030d = i17;
        byte[] bArr4 = this.f28028b;
        int i18 = this.f28029c;
        bArr[i9] = (byte) (((byte) (((255 & bArr4[i18]) >> (8 - i17)) << (8 - i14))) | bArr[i9]);
        if (i17 == 8) {
            this.f28030d = 0;
            this.f28029c = i18 + 1;
        }
        a();
    }

    public final long k(int i8) {
        if (i8 <= 32) {
            int i9 = i(i8);
            String str = M.f28050a;
            return 4294967295L & ((long) i9);
        }
        int i10 = i(i8 - 32);
        int i11 = i(32);
        String str2 = M.f28050a;
        return (4294967295L & ((long) i11)) | ((((long) i10) & 4294967295L) << 32);
    }

    public final void l(byte[] bArr, int i8) {
        H1.i(this.f28030d == 0);
        System.arraycopy(this.f28028b, this.f28029c, bArr, 0, i8);
        this.f28029c += i8;
        a();
    }

    public final int m() {
        int i8 = 0;
        while (!h()) {
            i8++;
        }
        return ((1 << i8) - 1) + (i8 > 0 ? i(i8) : 0);
    }

    public final int n() {
        int iM = m();
        return ((iM + 1) / 2) * (iM % 2 == 0 ? -1 : 1);
    }

    public final int o() {
        return m();
    }

    public final void p(int i8, byte[] bArr) {
        this.f28028b = bArr;
        this.f28029c = 0;
        this.f28030d = 0;
        this.f28031e = i8;
    }

    public final void q(E e8) {
        p(e8.f28037c, e8.f28035a);
        r(e8.f28036b * 8);
    }

    public final void r(int i8) {
        int i9 = i8 / 8;
        this.f28029c = i9;
        this.f28030d = i8 - (i9 * 8);
        a();
    }

    public final boolean s(int i8) {
        if (2 <= i8 && i8 < this.f28029c) {
            byte[] bArr = this.f28028b;
            if (bArr[i8] == 3 && bArr[i8 - 2] == 0 && bArr[i8 - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    public final void t() {
        switch (this.f28027a) {
            case 0:
                int i8 = this.f28030d + 1;
                this.f28030d = i8;
                if (i8 == 8) {
                    this.f28030d = 0;
                    this.f28029c++;
                }
                a();
                break;
            default:
                int i9 = this.f28031e + 1;
                this.f28031e = i9;
                if (i9 == 8) {
                    this.f28031e = 0;
                    int i10 = this.f28030d;
                    this.f28030d = i10 + (s(i10 + 1) ? 2 : 1);
                }
                a();
                break;
        }
    }

    public final void u(int i8) {
        switch (this.f28027a) {
            case 0:
                int i9 = i8 / 8;
                int i10 = this.f28029c + i9;
                this.f28029c = i10;
                int i11 = (i8 - (i9 * 8)) + this.f28030d;
                this.f28030d = i11;
                if (i11 > 7) {
                    this.f28029c = i10 + 1;
                    this.f28030d = i11 - 8;
                }
                a();
                break;
            case 1:
                int i12 = this.f28030d;
                int i13 = i8 / 8;
                int i14 = i12 + i13;
                this.f28030d = i14;
                int i15 = (i8 - (i13 * 8)) + this.f28031e;
                this.f28031e = i15;
                if (i15 > 7) {
                    this.f28030d = i14 + 1;
                    this.f28031e = i15 - 8;
                }
                while (true) {
                    i12++;
                    if (i12 > this.f28030d) {
                        a();
                        break;
                    } else if (s(i12)) {
                        this.f28030d++;
                        i12 += 2;
                    }
                }
                break;
            default:
                int i16 = i8 / 8;
                int i17 = this.f28030d + i16;
                this.f28030d = i17;
                int i18 = (i8 - (i16 * 8)) + this.f28031e;
                this.f28031e = i18;
                if (i18 > 7) {
                    this.f28030d = i17 + 1;
                    this.f28031e = i18 - 8;
                }
                a();
                break;
        }
    }

    public final void v(int i8) {
        H1.i(this.f28030d == 0);
        this.f28029c += i8;
        a();
    }

    public D() {
        this.f28027a = 0;
        this.f28028b = M.f28051b;
    }

    public D(byte[] bArr, int i8, int i9) {
        this.f28027a = 1;
        this.f28028b = bArr;
        this.f28030d = i8;
        this.f28029c = i9;
        this.f28031e = 0;
        a();
    }

    public D(byte[] bArr, int i8) {
        this.f28027a = 0;
        this.f28028b = bArr;
        this.f28031e = i8;
    }

    public D(int i8, int i9) {
        this.f28027a = 3;
        this.f28029c = i8;
        this.f28030d = i9;
        this.f28028b = new byte[(i9 * 2) - 1];
        this.f28031e = 0;
    }
}
