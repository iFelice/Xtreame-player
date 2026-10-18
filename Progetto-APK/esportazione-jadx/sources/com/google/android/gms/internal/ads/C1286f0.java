package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.f0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1286f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f18645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f18646c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18648e;

    public C1286f0(byte[] bArr, int i8) {
        this.f18644a = 1;
        this.f18645b = bArr;
        this.f18648e = i8;
    }

    public final int a() {
        switch (this.f18644a) {
            case 0:
                return (this.f18647d * 8) + this.f18648e;
            default:
                return ((this.f18648e - this.f18646c) * 8) - this.f18647d;
        }
    }

    public final int b(int i8) {
        int i9;
        this.f18648e += i8;
        int i10 = 0;
        while (true) {
            i9 = this.f18648e;
            int i11 = 2;
            if (i9 <= 8) {
                break;
            }
            int i12 = i9 - 8;
            this.f18648e = i12;
            byte[] bArr = this.f18645b;
            int i13 = this.f18647d;
            i10 |= (bArr[i13] & 255) << i12;
            if (true != s(i13 + 1)) {
                i11 = 1;
            }
            this.f18647d = i13 + i11;
        }
        byte[] bArr2 = this.f18645b;
        int i14 = this.f18647d;
        int i15 = i10 | ((bArr2[i14] & 255) >> (8 - i9));
        int i16 = 32 - i8;
        if (i9 == 8) {
            this.f18648e = 0;
            this.f18647d = i14 + (true != s(i14 + 1) ? 1 : 2);
        }
        int i17 = ((-1) >>> i16) & i15;
        q();
        return i17;
    }

    public final int c() {
        switch (this.f18644a) {
            case 1:
                p113o3.r.M(this.f18647d == 0);
                return this.f18646c;
            default:
                int i8 = 0;
                while (!p()) {
                    i8++;
                }
                int iB = ((1 << i8) - 1) + (i8 > 0 ? b(i8) : 0);
                return ((iB + 1) / 2) * (iB % 2 == 0 ? -1 : 1);
        }
    }

    public final int d(int i8) {
        int i9 = this.f18647d;
        int i10 = 8 - this.f18648e;
        int i11 = i9 + 1;
        byte[] bArr = this.f18645b;
        int iMin = Math.min(i8, i10);
        int i12 = ((bArr[i9] & 255) >> this.f18648e) & (255 >> (8 - iMin));
        while (iMin < i8) {
            i12 |= (this.f18645b[i11] & 255) << iMin;
            iMin += 8;
            i11++;
        }
        int i13 = i12 & ((-1) >>> (32 - i8));
        f(i8);
        return i13;
    }

    public final int e() {
        switch (this.f18644a) {
            case 1:
                return (this.f18646c * 8) + this.f18647d;
            default:
                int i8 = 0;
                while (!p()) {
                    i8++;
                }
                return ((1 << i8) - 1) + (i8 > 0 ? b(i8) : 0);
        }
    }

    public final void f(int i8) {
        int i9;
        int i10 = i8 / 8;
        int i11 = this.f18647d + i10;
        this.f18647d = i11;
        int i12 = (i8 - (i10 * 8)) + this.f18648e;
        this.f18648e = i12;
        if (i12 > 7) {
            i11++;
            this.f18647d = i11;
            i12 -= 8;
            this.f18648e = i12;
        }
        boolean z7 = false;
        if (i11 >= 0 && (i11 < (i9 = this.f18646c) || (i11 == i9 && i12 == 0))) {
            z7 = true;
        }
        p113o3.r.M(z7);
    }

    public final int g(int i8) {
        int i9;
        if (i8 == 0) {
            return 0;
        }
        this.f18647d += i8;
        int i10 = 0;
        while (true) {
            i9 = this.f18647d;
            if (i9 <= 8) {
                break;
            }
            int i11 = i9 - 8;
            this.f18647d = i11;
            byte[] bArr = this.f18645b;
            int i12 = this.f18646c;
            this.f18646c = i12 + 1;
            i10 |= (bArr[i12] & 255) << i11;
        }
        byte[] bArr2 = this.f18645b;
        int i13 = this.f18646c;
        int i14 = i10 | ((bArr2[i13] & 255) >> (8 - i9));
        int i15 = 32 - i8;
        if (i9 == 8) {
            this.f18647d = 0;
            this.f18646c = i13 + 1;
        }
        int i16 = ((-1) >>> i15) & i14;
        y();
        return i16;
    }

    public final void h() {
        int i8 = this.f18648e;
        if (i8 > 0) {
            m(8 - i8);
        }
    }

    public final boolean i() {
        int i8 = (this.f18645b[this.f18647d] & 255) >> this.f18648e;
        f(1);
        return 1 == (i8 & 1);
    }

    public final long j(int i8) {
        if (i8 <= 32) {
            int iG = g(i8);
            int i9 = Et.f13234a;
            return 4294967295L & ((long) iG);
        }
        int iG2 = g(i8 - 32);
        int iG3 = g(32);
        int i10 = Et.f13234a;
        return (4294967295L & ((long) iG3)) | ((((long) iG2) & 4294967295L) << 32);
    }

    public final void k() {
        int i8 = this.f18648e + 1;
        this.f18648e = i8;
        if (i8 == 8) {
            this.f18648e = 0;
            int i9 = this.f18647d;
            this.f18647d = i9 + (true == s(i9 + 1) ? 2 : 1);
        }
        q();
    }

    public final void l() {
        if (this.f18647d == 0) {
            return;
        }
        this.f18647d = 0;
        this.f18646c++;
        y();
    }

    public final void m(int i8) {
        int i9 = this.f18647d;
        int i10 = i8 / 8;
        int i11 = i9 + i10;
        this.f18647d = i11;
        int i12 = (i8 - (i10 * 8)) + this.f18648e;
        this.f18648e = i12;
        if (i12 > 7) {
            this.f18647d = i11 + 1;
            this.f18648e = i12 - 8;
        }
        while (true) {
            i9++;
            if (i9 > this.f18647d) {
                q();
                return;
            } else if (s(i9)) {
                this.f18647d++;
                i9 += 2;
            }
        }
    }

    public final boolean n(int i8) {
        int i9 = this.f18647d;
        int i10 = i8 / 8;
        int i11 = i9 + i10;
        int i12 = (this.f18648e + i8) - (i10 * 8);
        if (i12 > 7) {
            i11++;
            i12 -= 8;
        }
        while (true) {
            i9++;
            if (i9 > i11 || i11 >= this.f18646c) {
                break;
            }
            if (s(i9)) {
                i11++;
                i9 += 2;
            }
        }
        int i13 = this.f18646c;
        if (i11 >= i13) {
            return i11 == i13 && i12 == 0;
        }
        return true;
    }

    public final void o(byte[] bArr, int i8) {
        int i9;
        int i10 = 0;
        while (true) {
            i9 = i8 >> 3;
            if (i10 >= i9) {
                break;
            }
            byte[] bArr2 = this.f18645b;
            int i11 = this.f18646c;
            int i12 = i11 + 1;
            this.f18646c = i12;
            byte b8 = bArr2[i11];
            int i13 = this.f18647d;
            byte b9 = (byte) (b8 << i13);
            bArr[i10] = b9;
            bArr[i10] = (byte) (((bArr2[i12] & 255) >> (8 - i13)) | b9);
            i10++;
        }
        int i14 = i8 & 7;
        if (i14 == 0) {
            return;
        }
        byte b10 = (byte) (bArr[i9] & (255 >> i14));
        bArr[i9] = b10;
        int i15 = this.f18647d;
        if (i15 + i14 > 8) {
            byte[] bArr3 = this.f18645b;
            int i16 = this.f18646c;
            this.f18646c = i16 + 1;
            b10 = (byte) (b10 | ((bArr3[i16] & 255) << i15));
            bArr[i9] = b10;
            i15 -= 8;
        }
        int i17 = i15 + i14;
        this.f18647d = i17;
        byte[] bArr4 = this.f18645b;
        int i18 = this.f18646c;
        bArr[i9] = (byte) (((byte) (((255 & bArr4[i18]) >> (8 - i17)) << (8 - i14))) | b10);
        if (i17 == 8) {
            this.f18647d = 0;
            this.f18646c = i18 + 1;
        }
        y();
    }

    public final boolean p() {
        int i8 = this.f18645b[this.f18647d] & (128 >> this.f18648e);
        k();
        return i8 != 0;
    }

    public final void q() {
        int i8;
        int i9 = this.f18647d;
        boolean z7 = false;
        if (i9 >= 0 && (i9 < (i8 = this.f18646c) || (i9 == i8 && this.f18648e == 0))) {
            z7 = true;
        }
        p113o3.r.M(z7);
    }

    public final void r(C1534jr c1534jr) {
        byte[] bArr = c1534jr.f19515a;
        int i8 = c1534jr.f19517c;
        this.f18645b = bArr;
        this.f18646c = 0;
        this.f18647d = 0;
        this.f18648e = i8;
        t(c1534jr.f19516b * 8);
    }

    public final boolean s(int i8) {
        if (i8 < 2 || i8 >= this.f18646c) {
            return false;
        }
        byte[] bArr = this.f18645b;
        return bArr[i8] == 3 && bArr[i8 + (-2)] == 0 && bArr[i8 + (-1)] == 0;
    }

    public final void t(int i8) {
        int i9 = i8 / 8;
        this.f18646c = i9;
        this.f18647d = i8 - (i9 * 8);
        y();
    }

    public final void u() {
        int i8 = this.f18647d + 1;
        this.f18647d = i8;
        if (i8 == 8) {
            this.f18647d = 0;
            this.f18646c++;
        }
        y();
    }

    public final void v(int i8) {
        int i9 = i8 / 8;
        int i10 = this.f18646c + i9;
        this.f18646c = i10;
        int i11 = (i8 - (i9 * 8)) + this.f18647d;
        this.f18647d = i11;
        if (i11 > 7) {
            this.f18646c = i10 + 1;
            this.f18647d = i11 - 8;
        }
        y();
    }

    public final void w(int i8) {
        p113o3.r.M(this.f18647d == 0);
        this.f18646c += i8;
        y();
    }

    public final boolean x() {
        int i8 = this.f18645b[this.f18646c] & (128 >> this.f18647d);
        u();
        return i8 != 0;
    }

    public final void y() {
        int i8;
        int i9 = this.f18646c;
        boolean z7 = false;
        if (i9 >= 0 && (i9 < (i8 = this.f18648e) || (i9 == i8 && this.f18647d == 0))) {
            z7 = true;
        }
        p113o3.r.M(z7);
    }

    public C1286f0() {
        this.f18644a = 1;
        this.f18645b = Et.f13239f;
    }

    public C1286f0(byte[] bArr) {
        this.f18644a = 0;
        this.f18645b = bArr;
        this.f18646c = bArr.length;
    }

    public C1286f0(byte[] bArr, int i8, int i9) {
        this.f18644a = 2;
        this.f18645b = bArr;
        this.f18647d = i8;
        this.f18646c = i9;
        this.f18648e = 0;
        q();
    }
}
