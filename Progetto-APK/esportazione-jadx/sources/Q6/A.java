package Q6;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class A extends m {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final transient byte[][] f6043K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final transient int[] f6044L;

    public A(byte[][] bArr, int[] iArr) {
        super(m.f6065J.f6066G);
        this.f6043K = bArr;
        this.f6044L = iArr;
    }

    @Override // Q6.m
    public final String a() {
        return new m(m()).a();
    }

    @Override // Q6.m
    public final m b(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f6043K;
        int length = bArr.length;
        int i8 = 0;
        int i9 = 0;
        while (i8 < length) {
            int[] iArr = this.f6044L;
            int i10 = iArr[length + i8];
            int i11 = iArr[i8];
            messageDigest.update(bArr[i8], i10, i11 - i9);
            i8++;
            i9 = i11;
        }
        byte[] bArrDigest = messageDigest.digest();
        q0.e(bArrDigest);
        return new m(bArrDigest);
    }

    @Override // Q6.m
    public final int c() {
        return this.f6044L[this.f6043K.length - 1];
    }

    @Override // Q6.m
    public final String d() {
        return new m(m()).d();
    }

    @Override // Q6.m
    public final byte[] e() {
        return m();
    }

    @Override // Q6.m
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof m) {
            m mVar = (m) obj;
            if (mVar.c() == c() && i(mVar, c())) {
                return true;
            }
        }
        return false;
    }

    @Override // Q6.m
    public final byte f(int i8) {
        byte[][] bArr = this.f6043K;
        int length = bArr.length - 1;
        int[] iArr = this.f6044L;
        AbstractC0329b.b(iArr[length], i8, 1L);
        int iG = q0.G(this, i8);
        return bArr[iG][(i8 - (iG == 0 ? 0 : iArr[iG - 1])) + iArr[bArr.length + iG]];
    }

    @Override // Q6.m
    public final boolean h(int i8, byte[] bArr, int i9, int i10) {
        q0.h(bArr, "other");
        if (i8 < 0 || i8 > c() - i10 || i9 < 0 || i9 > bArr.length - i10) {
            return false;
        }
        int i11 = i10 + i8;
        int iG = q0.G(this, i8);
        while (i8 < i11) {
            int[] iArr = this.f6044L;
            int i12 = iG == 0 ? 0 : iArr[iG - 1];
            int i13 = iArr[iG] - i12;
            byte[][] bArr2 = this.f6043K;
            int i14 = iArr[bArr2.length + iG];
            int iMin = Math.min(i11, i13 + i12) - i8;
            if (!AbstractC0329b.a((i8 - i12) + i14, i9, iMin, bArr2[iG], bArr)) {
                return false;
            }
            i9 += iMin;
            i8 += iMin;
            iG++;
        }
        return true;
    }

    @Override // Q6.m
    public final int hashCode() {
        int i8 = this.f6067H;
        if (i8 != 0) {
            return i8;
        }
        byte[][] bArr = this.f6043K;
        int length = bArr.length;
        int i9 = 0;
        int i10 = 1;
        int i11 = 0;
        while (i9 < length) {
            int[] iArr = this.f6044L;
            int i12 = iArr[length + i9];
            int i13 = iArr[i9];
            byte[] bArr2 = bArr[i9];
            int i14 = (i13 - i11) + i12;
            while (i12 < i14) {
                i10 = (i10 * 31) + bArr2[i12];
                i12++;
            }
            i9++;
            i11 = i13;
        }
        this.f6067H = i10;
        return i10;
    }

    @Override // Q6.m
    public final boolean i(m mVar, int i8) {
        q0.h(mVar, "other");
        if (c() - i8 < 0) {
            return false;
        }
        int iG = q0.G(this, 0);
        int i9 = 0;
        int i10 = 0;
        while (i9 < i8) {
            int[] iArr = this.f6044L;
            int i11 = iG == 0 ? 0 : iArr[iG - 1];
            int i12 = iArr[iG] - i11;
            byte[][] bArr = this.f6043K;
            int i13 = iArr[bArr.length + iG];
            int iMin = Math.min(i8, i12 + i11) - i9;
            if (!mVar.h(i10, bArr[iG], (i9 - i11) + i13, iMin)) {
                return false;
            }
            i10 += iMin;
            i9 += iMin;
            iG++;
        }
        return true;
    }

    @Override // Q6.m
    public final m j() {
        return new m(m()).j();
    }

    @Override // Q6.m
    public final void l(j jVar, int i8) {
        q0.h(jVar, "buffer");
        int iG = q0.G(this, 0);
        int i9 = 0;
        while (i9 < i8) {
            int[] iArr = this.f6044L;
            int i10 = iG == 0 ? 0 : iArr[iG - 1];
            int i11 = iArr[iG] - i10;
            byte[][] bArr = this.f6043K;
            int i12 = iArr[bArr.length + iG];
            int iMin = Math.min(i8, i11 + i10) - i9;
            int i13 = (i9 - i10) + i12;
            y yVar = new y(bArr[iG], i13, i13 + iMin, true, false);
            y yVar2 = jVar.f6063G;
            if (yVar2 == null) {
                yVar.f6103g = yVar;
                yVar.f6102f = yVar;
                jVar.f6063G = yVar;
            } else {
                y yVar3 = yVar2.f6103g;
                q0.e(yVar3);
                yVar3.b(yVar);
            }
            i9 += iMin;
            iG++;
        }
        jVar.f6064H += (long) i8;
    }

    public final byte[] m() {
        byte[] bArr = new byte[c()];
        byte[][] bArr2 = this.f6043K;
        int length = bArr2.length;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i8 < length) {
            int[] iArr = this.f6044L;
            int i11 = iArr[length + i8];
            int i12 = iArr[i8];
            int i13 = i12 - i9;
            p162u6.j.K(i10, i11, i11 + i13, bArr2[i8], bArr);
            i10 += i13;
            i8++;
            i9 = i12;
        }
        return bArr;
    }

    @Override // Q6.m
    public final String toString() {
        return new m(m()).toString();
    }
}
