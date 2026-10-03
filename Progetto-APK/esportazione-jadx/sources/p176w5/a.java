package p176w5;

import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int[] f31089G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31090H;

    public a() {
        this.f31090H = 0;
        this.f31089G = new int[1];
    }

    public final void a(boolean z7) {
        c(this.f31090H + 1);
        if (z7) {
            int[] iArr = this.f31089G;
            int i8 = this.f31090H;
            int i9 = i8 / 32;
            iArr[i9] = (1 << (i8 & 31)) | iArr[i9];
        }
        this.f31090H++;
    }

    public final void b(int i8, int i9) {
        if (i9 < 0 || i9 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        c(this.f31090H + i9);
        while (i9 > 0) {
            boolean z7 = true;
            if (((i8 >> (i9 - 1)) & 1) != 1) {
                z7 = false;
            }
            a(z7);
            i9--;
        }
    }

    public final void c(int i8) {
        int[] iArr = this.f31089G;
        if (i8 > (iArr.length << 5)) {
            int[] iArr2 = new int[(i8 + 31) / 32];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            this.f31089G = iArr2;
        }
    }

    public final Object clone() {
        int[] iArr = (int[]) this.f31089G.clone();
        int i8 = this.f31090H;
        a aVar = new a();
        aVar.f31089G = iArr;
        aVar.f31090H = i8;
        return aVar;
    }

    public final boolean d(int i8) {
        return ((1 << (i8 & 31)) & this.f31089G[i8 / 32]) != 0;
    }

    public final int e(int i8) {
        int i9 = this.f31090H;
        if (i8 >= i9) {
            return i9;
        }
        int i10 = i8 / 32;
        int i11 = (-(1 << (i8 & 31))) & this.f31089G[i10];
        while (i11 == 0) {
            i10++;
            int[] iArr = this.f31089G;
            if (i10 == iArr.length) {
                return this.f31090H;
            }
            i11 = iArr[i10];
        }
        return Math.min(Integer.numberOfTrailingZeros(i11) + (i10 << 5), this.f31090H);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f31090H == aVar.f31090H && Arrays.equals(this.f31089G, aVar.f31089G);
    }

    public final int f(int i8) {
        int i9 = this.f31090H;
        if (i8 >= i9) {
            return i9;
        }
        int i10 = i8 / 32;
        int i11 = (-(1 << (i8 & 31))) & (~this.f31089G[i10]);
        while (i11 == 0) {
            i10++;
            int[] iArr = this.f31089G;
            if (i10 == iArr.length) {
                return this.f31090H;
            }
            i11 = ~iArr[i10];
        }
        return Math.min(Integer.numberOfTrailingZeros(i11) + (i10 << 5), this.f31090H);
    }

    public final int g() {
        return (this.f31090H + 7) / 8;
    }

    public final boolean h(int i8, int i9) {
        if (i9 < i8 || i8 < 0 || i9 > this.f31090H) {
            throw new IllegalArgumentException();
        }
        if (i9 == i8) {
            return true;
        }
        int i10 = i9 - 1;
        int i11 = i8 / 32;
        int i12 = i10 / 32;
        int i13 = i11;
        while (i13 <= i12) {
            if ((((2 << (i13 >= i12 ? 31 & i10 : 31)) - (1 << (i13 > i11 ? 0 : i8 & 31))) & this.f31089G[i13]) != 0) {
                return false;
            }
            i13++;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f31089G) + (this.f31090H * 31);
    }

    public final void i() {
        int[] iArr = new int[this.f31089G.length];
        int i8 = (this.f31090H - 1) / 32;
        int i9 = i8 + 1;
        for (int i10 = 0; i10 < i9; i10++) {
            long j8 = this.f31089G[i10];
            long j9 = ((j8 & 1431655765) << 1) | ((j8 >> 1) & 1431655765);
            long j10 = ((j9 & 858993459) << 2) | ((j9 >> 2) & 858993459);
            long j11 = ((j10 & 252645135) << 4) | ((j10 >> 4) & 252645135);
            long j12 = ((j11 & 16711935) << 8) | ((j11 >> 8) & 16711935);
            iArr[i8 - i10] = (int) (((j12 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j12 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i11 = this.f31090H;
        int i12 = i9 << 5;
        if (i11 != i12) {
            int i13 = i12 - i11;
            int i14 = iArr[0] >>> i13;
            for (int i15 = 1; i15 < i9; i15++) {
                int i16 = iArr[i15];
                iArr[i15 - 1] = i14 | (i16 << (32 - i13));
                i14 = i16 >>> i13;
            }
            iArr[i8] = i14;
        }
        this.f31089G = iArr;
    }

    public final void j(int i8) {
        int[] iArr = this.f31089G;
        int i9 = i8 / 32;
        iArr[i9] = (1 << (i8 & 31)) | iArr[i9];
    }

    public final String toString() {
        int i8 = this.f31090H;
        StringBuilder sb = new StringBuilder((i8 / 8) + i8 + 1);
        for (int i9 = 0; i9 < this.f31090H; i9++) {
            if ((i9 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(d(i9) ? 'X' : '.');
        }
        return sb.toString();
    }

    public a(int i8) {
        this.f31090H = i8;
        this.f31089G = new int[(i8 + 31) / 32];
    }
}
