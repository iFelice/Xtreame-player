package p184x5;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f31218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f31219b;

    public b(a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new IllegalArgumentException();
        }
        this.f31218a = aVar;
        int length = iArr.length;
        int i8 = 1;
        if (length <= 1 || iArr[0] != 0) {
            this.f31219b = iArr;
            return;
        }
        while (i8 < length && iArr[i8] == 0) {
            i8++;
        }
        if (i8 == length) {
            this.f31219b = new int[]{0};
            return;
        }
        int i9 = length - i8;
        int[] iArr2 = new int[i9];
        this.f31219b = iArr2;
        System.arraycopy(iArr, i8, iArr2, 0, i9);
    }

    public final b a(b bVar) {
        a aVar = bVar.f31218a;
        a aVar2 = this.f31218a;
        if (!aVar2.equals(aVar)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (e()) {
            return bVar;
        }
        if (bVar.e()) {
            return this;
        }
        int[] iArr = this.f31219b;
        int length = iArr.length;
        int[] iArr2 = bVar.f31219b;
        if (length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length2 = iArr.length - iArr2.length;
        System.arraycopy(iArr, 0, iArr3, 0, length2);
        for (int i8 = length2; i8 < iArr.length; i8++) {
            iArr3[i8] = iArr2[i8 - length2] ^ iArr[i8];
        }
        return new b(aVar2, iArr3);
    }

    public final int b(int i8) {
        if (i8 == 0) {
            return c(0);
        }
        int[] iArr = this.f31219b;
        if (i8 != 1) {
            int iC = iArr[0];
            int length = iArr.length;
            for (int i9 = 1; i9 < length; i9++) {
                iC = this.f31218a.c(i8, iC) ^ iArr[i9];
            }
            return iC;
        }
        int i10 = 0;
        for (int i11 : iArr) {
            a aVar = a.f31203h;
            i10 ^= i11;
        }
        return i10;
    }

    public final int c(int i8) {
        int[] iArr = this.f31219b;
        return iArr[(iArr.length - 1) - i8];
    }

    public final int d() {
        return this.f31219b.length - 1;
    }

    public final boolean e() {
        return this.f31219b[0] == 0;
    }

    public final b f(int i8) {
        a aVar = this.f31218a;
        if (i8 == 0) {
            return aVar.f31213c;
        }
        if (i8 == 1) {
            return this;
        }
        int[] iArr = this.f31219b;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i9 = 0; i9 < length; i9++) {
            iArr2[i9] = aVar.c(iArr[i9], i8);
        }
        return new b(aVar, iArr2);
    }

    public final b g(b bVar) {
        a aVar = bVar.f31218a;
        a aVar2 = this.f31218a;
        if (!aVar2.equals(aVar)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (e() || bVar.e()) {
            return aVar2.f31213c;
        }
        int[] iArr = this.f31219b;
        int length = iArr.length;
        int[] iArr2 = bVar.f31219b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i8 = 0; i8 < length; i8++) {
            int i9 = iArr[i8];
            for (int i10 = 0; i10 < length2; i10++) {
                int i11 = i8 + i10;
                iArr3[i11] = iArr3[i11] ^ aVar2.c(i9, iArr2[i10]);
            }
        }
        return new b(aVar2, iArr3);
    }

    public final b h(int i8, int i9) {
        if (i8 < 0) {
            throw new IllegalArgumentException();
        }
        a aVar = this.f31218a;
        if (i9 == 0) {
            return aVar.f31213c;
        }
        int[] iArr = this.f31219b;
        int length = iArr.length;
        int[] iArr2 = new int[i8 + length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr2[i10] = aVar.c(iArr[i10], i9);
        }
        return new b(aVar, iArr2);
    }

    public final String toString() {
        if (e()) {
            return "0";
        }
        StringBuilder sb = new StringBuilder(d() * 8);
        for (int iD = d(); iD >= 0; iD--) {
            int iC = c(iD);
            if (iC != 0) {
                if (iC < 0) {
                    if (iD == d()) {
                        sb.append("-");
                    } else {
                        sb.append(" - ");
                    }
                    iC = -iC;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iD == 0 || iC != 1) {
                    a aVar = this.f31218a;
                    if (iC == 0) {
                        aVar.getClass();
                        throw new IllegalArgumentException();
                    }
                    int i8 = aVar.f31212b[iC];
                    if (i8 == 0) {
                        sb.append('1');
                    } else if (i8 == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(i8);
                    }
                }
                if (iD != 0) {
                    if (iD == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iD);
                    }
                }
            }
        }
        return sb.toString();
    }
}
