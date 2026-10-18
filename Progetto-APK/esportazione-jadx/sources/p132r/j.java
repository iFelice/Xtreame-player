package p132r;

import java.util.Arrays;
import p102n0.c;
import p140s.a;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class j implements Cloneable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public /* synthetic */ boolean f29671G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public /* synthetic */ long[] f29672H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public /* synthetic */ Object[] f29673I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public /* synthetic */ int f29674J;

    public j() {
        int i8;
        int i9 = 4;
        while (true) {
            i8 = 80;
            if (i9 >= 32) {
                break;
            }
            int i10 = (1 << i9) - 12;
            if (80 <= i10) {
                i8 = i10;
                break;
            }
            i9++;
        }
        int i11 = i8 / 8;
        this.f29672H = new long[i11];
        this.f29673I = new Object[i11];
    }

    public final void a(Long l4, long j8) {
        int i8 = this.f29674J;
        if (i8 != 0 && j8 <= this.f29672H[i8 - 1]) {
            g(l4, j8);
            return;
        }
        if (this.f29671G) {
            long[] jArr = this.f29672H;
            if (i8 >= jArr.length) {
                Object[] objArr = this.f29673I;
                int i9 = 0;
                for (int i10 = 0; i10 < i8; i10++) {
                    Object obj = objArr[i10];
                    if (obj != k.f29675a) {
                        if (i10 != i9) {
                            jArr[i9] = jArr[i10];
                            objArr[i9] = obj;
                            objArr[i10] = null;
                        }
                        i9++;
                    }
                }
                this.f29671G = false;
                this.f29674J = i9;
            }
        }
        int i11 = this.f29674J;
        if (i11 >= this.f29672H.length) {
            int i12 = (i11 + 1) * 8;
            for (int i13 = 4; i13 < 32; i13++) {
                int i14 = (1 << i13) - 12;
                if (i12 <= i14) {
                    i12 = i14;
                    break;
                }
            }
            int i15 = i12 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f29672H, i15);
            q0.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f29672H = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f29673I, i15);
            q0.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f29673I = objArrCopyOf;
        }
        this.f29672H[i11] = j8;
        this.f29673I[i11] = l4;
        this.f29674J = i11 + 1;
    }

    public final void b() {
        int i8 = this.f29674J;
        Object[] objArr = this.f29673I;
        for (int i9 = 0; i9 < i8; i9++) {
            objArr[i9] = null;
        }
        this.f29674J = 0;
        this.f29671G = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final j clone() throws CloneNotSupportedException {
        Object objClone = super.clone();
        q0.f(objClone, "null cannot be cast to non-null type androidx.collection.LongSparseArray<E of androidx.collection.LongSparseArray>");
        j jVar = (j) objClone;
        jVar.f29672H = (long[]) this.f29672H.clone();
        jVar.f29673I = (Object[]) this.f29673I.clone();
        return jVar;
    }

    public final Object d(long j8) {
        Object obj;
        int iB = a.b(this.f29672H, this.f29674J, j8);
        if (iB < 0 || (obj = this.f29673I[iB]) == k.f29675a) {
            return null;
        }
        return obj;
    }

    public final Object e(long j8) {
        Object obj;
        int iB = a.b(this.f29672H, this.f29674J, j8);
        if (iB < 0 || (obj = this.f29673I[iB]) == k.f29675a) {
            return -1L;
        }
        return obj;
    }

    public final long f(int i8) {
        if (!(i8 >= 0 && i8 < this.f29674J)) {
            c.p("Expected index to be within 0..size()-1, but was " + i8);
            throw null;
        }
        if (this.f29671G) {
            int i9 = this.f29674J;
            long[] jArr = this.f29672H;
            Object[] objArr = this.f29673I;
            int i10 = 0;
            for (int i11 = 0; i11 < i9; i11++) {
                Object obj = objArr[i11];
                if (obj != k.f29675a) {
                    if (i11 != i10) {
                        jArr[i10] = jArr[i11];
                        objArr[i10] = obj;
                        objArr[i11] = null;
                    }
                    i10++;
                }
            }
            this.f29671G = false;
            this.f29674J = i10;
        }
        return this.f29672H[i8];
    }

    public final void g(Object obj, long j8) {
        int iB = a.b(this.f29672H, this.f29674J, j8);
        if (iB >= 0) {
            this.f29673I[iB] = obj;
            return;
        }
        int i8 = ~iB;
        int i9 = this.f29674J;
        if (i8 < i9) {
            Object[] objArr = this.f29673I;
            if (objArr[i8] == k.f29675a) {
                this.f29672H[i8] = j8;
                objArr[i8] = obj;
                return;
            }
        }
        if (this.f29671G) {
            long[] jArr = this.f29672H;
            if (i9 >= jArr.length) {
                Object[] objArr2 = this.f29673I;
                int i10 = 0;
                for (int i11 = 0; i11 < i9; i11++) {
                    Object obj2 = objArr2[i11];
                    if (obj2 != k.f29675a) {
                        if (i11 != i10) {
                            jArr[i10] = jArr[i11];
                            objArr2[i10] = obj2;
                            objArr2[i11] = null;
                        }
                        i10++;
                    }
                }
                this.f29671G = false;
                this.f29674J = i10;
                i8 = ~a.b(this.f29672H, i10, j8);
            }
        }
        int i12 = this.f29674J;
        if (i12 >= this.f29672H.length) {
            int i13 = (i12 + 1) * 8;
            for (int i14 = 4; i14 < 32; i14++) {
                int i15 = (1 << i14) - 12;
                if (i13 <= i15) {
                    i13 = i15;
                    break;
                }
            }
            int i16 = i13 / 8;
            long[] jArrCopyOf = Arrays.copyOf(this.f29672H, i16);
            q0.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f29672H = jArrCopyOf;
            Object[] objArrCopyOf = Arrays.copyOf(this.f29673I, i16);
            q0.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f29673I = objArrCopyOf;
        }
        int i17 = this.f29674J - i8;
        if (i17 != 0) {
            long[] jArr2 = this.f29672H;
            int i18 = i8 + 1;
            q0.h(jArr2, "<this>");
            System.arraycopy(jArr2, i8, jArr2, i18, i17);
            Object[] objArr3 = this.f29673I;
            p162u6.j.M(objArr3, i18, objArr3, i8, this.f29674J);
        }
        this.f29672H[i8] = j8;
        this.f29673I[i8] = obj;
        this.f29674J++;
    }

    public final int h() {
        if (this.f29671G) {
            int i8 = this.f29674J;
            long[] jArr = this.f29672H;
            Object[] objArr = this.f29673I;
            int i9 = 0;
            for (int i10 = 0; i10 < i8; i10++) {
                Object obj = objArr[i10];
                if (obj != k.f29675a) {
                    if (i10 != i9) {
                        jArr[i9] = jArr[i10];
                        objArr[i9] = obj;
                        objArr[i10] = null;
                    }
                    i9++;
                }
            }
            this.f29671G = false;
            this.f29674J = i9;
        }
        return this.f29674J;
    }

    public final Object i(int i8) {
        if (!(i8 >= 0 && i8 < this.f29674J)) {
            c.p("Expected index to be within 0..size()-1, but was " + i8);
            throw null;
        }
        if (this.f29671G) {
            int i9 = this.f29674J;
            long[] jArr = this.f29672H;
            Object[] objArr = this.f29673I;
            int i10 = 0;
            for (int i11 = 0; i11 < i9; i11++) {
                Object obj = objArr[i11];
                if (obj != k.f29675a) {
                    if (i11 != i10) {
                        jArr[i10] = jArr[i11];
                        objArr[i10] = obj;
                        objArr[i11] = null;
                    }
                    i10++;
                }
            }
            this.f29671G = false;
            this.f29674J = i10;
        }
        return this.f29673I[i8];
    }

    public final String toString() {
        if (h() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f29674J * 28);
        sb.append('{');
        int i8 = this.f29674J;
        for (int i9 = 0; i9 < i8; i9++) {
            if (i9 > 0) {
                sb.append(", ");
            }
            sb.append(f(i9));
            sb.append('=');
            Object objI = i(i9);
            if (objI != sb) {
                sb.append(objI);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        String string = sb.toString();
        q0.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }
}
