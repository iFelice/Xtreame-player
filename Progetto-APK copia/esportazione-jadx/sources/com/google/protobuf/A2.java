package com.google.protobuf;

import Z3.C0433o;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class A2 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final A2 f24234f = new A2(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f24235a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f24236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f24237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f24238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f24239e;

    public A2() {
        this(0, new int[8], new Object[8], true);
    }

    public static A2 e(A2 a8, A2 a9) {
        int i8 = a8.f24235a + a9.f24235a;
        int[] iArrCopyOf = Arrays.copyOf(a8.f24236b, i8);
        System.arraycopy(a9.f24236b, 0, iArrCopyOf, a8.f24235a, a9.f24235a);
        Object[] objArrCopyOf = Arrays.copyOf(a8.f24237c, i8);
        System.arraycopy(a9.f24237c, 0, objArrCopyOf, a8.f24235a, a9.f24235a);
        return new A2(i8, iArrCopyOf, objArrCopyOf, true);
    }

    public final void a() {
        if (!this.f24239e) {
            throw new UnsupportedOperationException();
        }
    }

    public final void b(int i8) {
        int[] iArr = this.f24236b;
        if (i8 > iArr.length) {
            int i9 = this.f24235a;
            int i10 = (i9 / 2) + i9;
            if (i10 >= i8) {
                i8 = i10;
            }
            if (i8 < 8) {
                i8 = 8;
            }
            this.f24236b = Arrays.copyOf(iArr, i8);
            this.f24237c = Arrays.copyOf(this.f24237c, i8);
        }
    }

    public final int c() {
        int iT0;
        int i8 = this.f24238d;
        if (i8 != -1) {
            return i8;
        }
        int iC = 0;
        for (int i9 = 0; i9 < this.f24235a; i9++) {
            int i10 = this.f24236b[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 == 0) {
                iT0 = AbstractC2970z.t0(i11, ((Long) this.f24237c[i9]).longValue());
            } else if (i12 == 1) {
                ((Long) this.f24237c[i9]).getClass();
                iT0 = AbstractC2970z.e0(i11);
            } else if (i12 != 2) {
                if (i12 == 3) {
                    iC = ((A2) this.f24237c[i9]).c() + (AbstractC2970z.q0(i11) * 2) + iC;
                } else {
                    if (i12 != 5) {
                        throw new IllegalStateException(C2966x1.c());
                    }
                    ((Integer) this.f24237c[i9]).getClass();
                    iT0 = AbstractC2970z.d0(i11);
                }
            } else {
                iT0 = AbstractC2970z.Z(i11, (r) this.f24237c[i9]);
            }
            iC = iT0 + iC;
        }
        this.f24238d = iC;
        return iC;
    }

    public final boolean d(int i8, AbstractC2961w abstractC2961w) throws C2963w1 {
        int iF;
        a();
        int i9 = i8 >>> 3;
        int i10 = i8 & 7;
        if (i10 == 0) {
            f(i8, Long.valueOf(abstractC2961w.v()));
            return true;
        }
        if (i10 == 1) {
            f(i8, Long.valueOf(abstractC2961w.r()));
            return true;
        }
        if (i10 == 2) {
            f(i8, abstractC2961w.n());
            return true;
        }
        if (i10 != 3) {
            if (i10 == 4) {
                return false;
            }
            if (i10 != 5) {
                throw C2966x1.c();
            }
            f(i8, Integer.valueOf(abstractC2961w.q()));
            return true;
        }
        A2 a8 = new A2();
        do {
            iF = abstractC2961w.F();
            if (iF == 0) {
                break;
            }
        } while (a8.d(iF, abstractC2961w));
        abstractC2961w.a((i9 << 3) | 4);
        f(i8, a8);
        return true;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof A2)) {
            return false;
        }
        A2 a8 = (A2) obj;
        int i8 = this.f24235a;
        if (i8 == a8.f24235a) {
            int[] iArr = this.f24236b;
            int[] iArr2 = a8.f24236b;
            for (int i9 = 0; i9 < i8; i9++) {
                if (iArr[i9] == iArr2[i9]) {
                }
            }
            Object[] objArr = this.f24237c;
            Object[] objArr2 = a8.f24237c;
            int i10 = this.f24235a;
            for (int i11 = 0; i11 < i10; i11++) {
                if (objArr[i11].equals(objArr2[i11])) {
                }
            }
            return true;
        }
        return false;
    }

    public final void f(int i8, Object obj) {
        a();
        b(this.f24235a + 1);
        int[] iArr = this.f24236b;
        int i9 = this.f24235a;
        iArr[i9] = i8;
        this.f24237c[i9] = obj;
        this.f24235a = i9 + 1;
    }

    public final void g(C0433o c0433o) {
        if (this.f24235a == 0) {
            return;
        }
        c0433o.getClass();
        for (int i8 = 0; i8 < this.f24235a; i8++) {
            int i9 = this.f24236b[i8];
            Object obj = this.f24237c[i8];
            int i10 = i9 >>> 3;
            int i11 = i9 & 7;
            if (i11 == 0) {
                c0433o.q(i10, ((Long) obj).longValue());
            } else if (i11 == 1) {
                c0433o.m(i10, ((Long) obj).longValue());
            } else if (i11 == 2) {
                c0433o.i(i10, (r) obj);
            } else if (i11 == 3) {
                ((AbstractC2970z) c0433o.f8372H).O0(i10, 3);
                ((A2) obj).g(c0433o);
                ((AbstractC2970z) c0433o.f8372H).O0(i10, 4);
            } else {
                if (i11 != 5) {
                    throw new RuntimeException(C2966x1.c());
                }
                c0433o.l(i10, ((Integer) obj).intValue());
            }
        }
    }

    public final int hashCode() {
        int i8 = this.f24235a;
        int i9 = (527 + i8) * 31;
        int[] iArr = this.f24236b;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = (i9 + i10) * 31;
        Object[] objArr = this.f24237c;
        int i13 = this.f24235a;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }

    public A2(int i8, int[] iArr, Object[] objArr, boolean z7) {
        this.f24238d = -1;
        this.f24235a = i8;
        this.f24236b = iArr;
        this.f24237c = objArr;
        this.f24239e = z7;
    }
}
