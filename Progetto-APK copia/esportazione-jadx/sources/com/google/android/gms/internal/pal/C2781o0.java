package com.google.android.gms.internal.pal;

import com.google.android.gms.internal.ads.AbstractC2090uc;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.pal.o0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2781o0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C2781o0 f23969f = new C2781o0(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f23970a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f23971b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f23972c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f23973d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f23974e;

    public C2781o0(int i8, int[] iArr, Object[] objArr, boolean z7) {
        this.f23970a = i8;
        this.f23971b = iArr;
        this.f23972c = objArr;
        this.f23974e = z7;
    }

    public static C2781o0 b() {
        return new C2781o0(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iI0;
        int iJ0;
        int i8 = this.f23973d;
        if (i8 != -1) {
            return i8;
        }
        int iA = 0;
        for (int i9 = 0; i9 < this.f23970a; i9++) {
            int i10 = this.f23971b[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 != 0) {
                if (i12 == 1) {
                    ((Long) this.f23972c[i9]).getClass();
                    iA = AbstractC2090uc.A(i11 << 3, 8, iA);
                } else if (i12 == 2) {
                    r rVar = (r) this.f23972c[i9];
                    int iI1 = C2835v.I0(i11 << 3);
                    int i13 = rVar.i();
                    iA = AbstractC2090uc.x(i13, i13, iI1, iA);
                } else if (i12 == 3) {
                    int iZ0 = C2835v.Z0(i11);
                    iI0 = iZ0 + iZ0;
                    iJ0 = ((C2781o0) this.f23972c[i9]).a();
                } else {
                    if (i12 != 5) {
                        throw new IllegalStateException(L.a());
                    }
                    ((Integer) this.f23972c[i9]).getClass();
                    iA = AbstractC2090uc.A(i11 << 3, 4, iA);
                }
            } else {
                long jLongValue = ((Long) this.f23972c[i9]).longValue();
                iI0 = C2835v.I0(i11 << 3);
                iJ0 = C2835v.J0(jLongValue);
            }
            iA = iJ0 + iI0 + iA;
        }
        this.f23973d = iA;
        return iA;
    }

    public final void c(int i8, Object obj) {
        if (!this.f23974e) {
            throw new UnsupportedOperationException();
        }
        int i9 = this.f23970a;
        int[] iArr = this.f23971b;
        if (i9 == iArr.length) {
            int i10 = i9 + (i9 < 4 ? 8 : i9 >> 1);
            this.f23971b = Arrays.copyOf(iArr, i10);
            this.f23972c = Arrays.copyOf(this.f23972c, i10);
        }
        int[] iArr2 = this.f23971b;
        int i11 = this.f23970a;
        iArr2[i11] = i8;
        this.f23972c[i11] = obj;
        this.f23970a = i11 + 1;
    }

    public final void d(C2843w c2843w) {
        if (this.f23970a != 0) {
            for (int i8 = 0; i8 < this.f23970a; i8++) {
                int i9 = this.f23971b[i8];
                Object obj = this.f23972c[i8];
                int i10 = i9 >>> 3;
                int i11 = i9 & 7;
                if (i11 == 0) {
                    c2843w.n(i10, ((Long) obj).longValue());
                } else if (i11 == 1) {
                    c2843w.j(i10, ((Long) obj).longValue());
                } else if (i11 == 2) {
                    c2843w.f(i10, (r) obj);
                } else if (i11 == 3) {
                    c2843w.f24050a.S0(i10, 3);
                    ((C2781o0) obj).d(c2843w);
                    c2843w.f24050a.S0(i10, 4);
                } else {
                    if (i11 != 5) {
                        throw new RuntimeException(L.a());
                    }
                    c2843w.i(i10, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C2781o0)) {
            return false;
        }
        C2781o0 c2781o0 = (C2781o0) obj;
        int i8 = this.f23970a;
        if (i8 == c2781o0.f23970a) {
            int[] iArr = this.f23971b;
            int[] iArr2 = c2781o0.f23971b;
            for (int i9 = 0; i9 < i8; i9++) {
                if (iArr[i9] == iArr2[i9]) {
                }
            }
            Object[] objArr = this.f23972c;
            Object[] objArr2 = c2781o0.f23972c;
            int i10 = this.f23970a;
            for (int i11 = 0; i11 < i10; i11++) {
                if (objArr[i11].equals(objArr2[i11])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f23970a;
        int i9 = (i8 + 527) * 31;
        int[] iArr = this.f23971b;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = (i9 + i10) * 31;
        Object[] objArr = this.f23972c;
        int i13 = this.f23970a;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }
}
