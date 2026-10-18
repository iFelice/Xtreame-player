package p132r;

import java.util.Arrays;
import p140s.a;
import p162u6.j;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class n implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public /* synthetic */ int[] f29685G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public /* synthetic */ Object[] f29686H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public /* synthetic */ int f29687I;

    public n() {
        int i8;
        int i9 = 4;
        while (true) {
            i8 = 40;
            if (i9 >= 32) {
                break;
            }
            int i10 = (1 << i9) - 12;
            if (40 <= i10) {
                i8 = i10;
                break;
            }
            i9++;
        }
        int i11 = i8 / 4;
        this.f29685G = new int[i11];
        this.f29686H = new Object[i11];
    }

    public final void a(int i8, Object obj) {
        int i9 = this.f29687I;
        if (i9 != 0 && i8 <= this.f29685G[i9 - 1]) {
            c(i8, obj);
            return;
        }
        if (i9 >= this.f29685G.length) {
            int i10 = (i9 + 1) * 4;
            for (int i11 = 4; i11 < 32; i11++) {
                int i12 = (1 << i11) - 12;
                if (i10 <= i12) {
                    i10 = i12;
                    break;
                }
            }
            int i13 = i10 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f29685G, i13);
            q0.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f29685G = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f29686H, i13);
            q0.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f29686H = objArrCopyOf;
        }
        this.f29685G[i9] = i8;
        this.f29686H[i9] = obj;
        this.f29687I = i9 + 1;
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final n clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        q0.f(objClone, "null cannot be cast to non-null type androidx.collection.SparseArrayCompat<E of androidx.collection.SparseArrayCompat>");
        n nVar = (n) objClone;
        nVar.f29685G = (int[]) this.f29685G.clone();
        nVar.f29686H = (Object[]) this.f29686H.clone();
        return nVar;
    }

    public final void c(int i8, Object obj) {
        int iA = a.a(this.f29687I, i8, this.f29685G);
        if (iA >= 0) {
            this.f29686H[iA] = obj;
            return;
        }
        int i9 = ~iA;
        int i10 = this.f29687I;
        if (i9 < i10) {
            Object[] objArr = this.f29686H;
            if (objArr[i9] == o.f29688a) {
                this.f29685G[i9] = i8;
                objArr[i9] = obj;
                return;
            }
        }
        if (i10 >= this.f29685G.length) {
            int i11 = (i10 + 1) * 4;
            for (int i12 = 4; i12 < 32; i12++) {
                int i13 = (1 << i12) - 12;
                if (i11 <= i13) {
                    i11 = i13;
                    break;
                }
            }
            int i14 = i11 / 4;
            int[] iArrCopyOf = Arrays.copyOf(this.f29685G, i14);
            q0.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f29685G = iArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f29686H, i14);
            q0.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f29686H = objArrCopyOf;
        }
        int i15 = this.f29687I;
        if (i15 - i9 != 0) {
            int[] iArr = this.f29685G;
            int i16 = i9 + 1;
            j.L(i16, i9, i15, iArr, iArr);
            Object[] objArr2 = this.f29686H;
            j.M(objArr2, i16, objArr2, i9, this.f29687I);
        }
        this.f29685G[i9] = i8;
        this.f29686H[i9] = obj;
        this.f29687I++;
    }

    public final String toString() {
        int i8 = this.f29687I;
        if (i8 <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(i8 * 28);
        sb.append('{');
        int i9 = this.f29687I;
        for (int i10 = 0; i10 < i9; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(this.f29685G[i10]);
            sb.append('=');
            Object obj = this.f29686H[i10];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        q0.g(string, "buffer.toString()");
        return string;
    }
}
