package p176w5;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31091G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f31092H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f31093I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int[] f31094J;

    public b(int i8, int i9) {
        if (i8 <= 0 || i9 <= 0) {
            throw new IllegalArgumentException("Both dimensions must be greater than 0");
        }
        this.f31091G = i8;
        this.f31092H = i9;
        int i10 = (i8 + 31) / 32;
        this.f31093I = i10;
        this.f31094J = new int[i10 * i9];
    }

    public final void a(int i8, int i9) {
        int i10 = (i8 / 32) + (i9 * this.f31093I);
        int[] iArr = this.f31094J;
        iArr[i10] = (1 << (i8 & 31)) ^ iArr[i10];
    }

    public final boolean b(int i8, int i9) {
        return ((this.f31094J[(i8 / 32) + (i9 * this.f31093I)] >>> (i8 & 31)) & 1) != 0;
    }

    public final int[] c() {
        int[] iArr = this.f31094J;
        int length = iArr.length - 1;
        while (length >= 0 && iArr[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i8 = this.f31093I;
        int i9 = length / i8;
        int i10 = (length % i8) << 5;
        int i11 = iArr[length];
        int i12 = 31;
        while ((i11 >>> i12) == 0) {
            i12--;
        }
        return new int[]{i10 + i12, i9};
    }

    public final Object clone() {
        int[] iArr = (int[]) this.f31094J.clone();
        return new b(this.f31091G, this.f31092H, this.f31093I, iArr);
    }

    public final a d(int i8, a aVar) {
        int i9 = aVar.f31090H;
        int i10 = this.f31091G;
        if (i9 < i10) {
            aVar = new a(i10);
        } else {
            int length = aVar.f31089G.length;
            for (int i11 = 0; i11 < length; i11++) {
                aVar.f31089G[i11] = 0;
            }
        }
        int i12 = this.f31093I;
        int i13 = i8 * i12;
        for (int i14 = 0; i14 < i12; i14++) {
            aVar.f31089G[(i14 << 5) / 32] = this.f31094J[i13 + i14];
        }
        return aVar;
    }

    public final int[] e() {
        int[] iArr;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            iArr = this.f31094J;
            if (i9 >= iArr.length || iArr[i9] != 0) {
                break;
            }
            i9++;
        }
        if (i9 == iArr.length) {
            return null;
        }
        int i10 = this.f31093I;
        int i11 = i9 / i10;
        int i12 = (i9 % i10) << 5;
        while ((iArr[i9] << (31 - i8)) == 0) {
            i8++;
        }
        return new int[]{i12 + i8, i11};
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f31091G == bVar.f31091G && this.f31092H == bVar.f31092H && this.f31093I == bVar.f31093I && Arrays.equals(this.f31094J, bVar.f31094J);
    }

    public final void f(int i8, int i9) {
        int i10 = (i8 / 32) + (i9 * this.f31093I);
        int[] iArr = this.f31094J;
        iArr[i10] = (1 << (i8 & 31)) | iArr[i10];
    }

    public final void g(int i8, int i9, int i10, int i11) {
        if (i9 < 0 || i8 < 0) {
            throw new IllegalArgumentException("Left and top must be nonnegative");
        }
        if (i11 <= 0 || i10 <= 0) {
            throw new IllegalArgumentException("Height and width must be at least 1");
        }
        int i12 = i10 + i8;
        int i13 = i11 + i9;
        if (i13 > this.f31092H || i12 > this.f31091G) {
            throw new IllegalArgumentException("The region must fit inside the matrix");
        }
        while (i9 < i13) {
            int i14 = this.f31093I * i9;
            for (int i15 = i8; i15 < i12; i15++) {
                int i16 = (i15 / 32) + i14;
                int[] iArr = this.f31094J;
                iArr[i16] = iArr[i16] | (1 << (i15 & 31));
            }
            i9++;
        }
    }

    public final int hashCode() {
        int i8 = this.f31091G;
        return Arrays.hashCode(this.f31094J) + (((((((i8 * 31) + i8) * 31) + this.f31092H) * 31) + this.f31093I) * 31);
    }

    public final String toString() {
        int i8 = this.f31091G;
        int i9 = this.f31092H;
        StringBuilder sb = new StringBuilder((i8 + 1) * i9);
        for (int i10 = 0; i10 < i9; i10++) {
            for (int i11 = 0; i11 < i8; i11++) {
                sb.append(b(i11, i10) ? "X " : "  ");
            }
            sb.append("\n");
        }
        return sb.toString();
    }

    public b(int i8, int i9, int i10, int[] iArr) {
        this.f31091G = i8;
        this.f31092H = i9;
        this.f31093I = i10;
        this.f31094J = iArr;
    }
}
