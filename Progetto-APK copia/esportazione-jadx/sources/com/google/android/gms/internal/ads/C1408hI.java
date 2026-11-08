package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hI, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1408hI {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C1408hI f19078f = new C1408hI(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f19079a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f19080b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f19081c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f19082d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f19083e;

    public C1408hI(int i8, int[] iArr, Object[] objArr, boolean z7) {
        this.f19079a = i8;
        this.f19080b = iArr;
        this.f19081c = objArr;
        this.f19083e = z7;
    }

    public static C1408hI b() {
        return new C1408hI(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iM;
        int iN;
        int iM2;
        int i8 = this.f19082d;
        if (i8 != -1) {
            return i8;
        }
        int iM3 = 0;
        for (int i9 = 0; i9 < this.f19079a; i9++) {
            int i10 = this.f19080b[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        int i13 = i11 << 3;
                        XG xg = (XG) this.f19081c[i9];
                        int iM4 = AbstractC1407hH.M(i13);
                        int iN2 = xg.n();
                        iM3 = AbstractC1407hH.M(iN2) + iN2 + iM4 + iM3;
                    } else if (i12 == 3) {
                        int iM5 = AbstractC1407hH.M(i11 << 3);
                        iM = iM5 + iM5;
                        iN = ((C1408hI) this.f19081c[i9]).a();
                    } else {
                        if (i12 != 5) {
                            throw new IllegalStateException(new C2340zH());
                        }
                        ((Integer) this.f19081c[i9]).getClass();
                        iM2 = AbstractC1407hH.M(i11 << 3) + 4;
                    }
                } else {
                    ((Long) this.f19081c[i9]).getClass();
                    iM2 = AbstractC1407hH.M(i11 << 3) + 8;
                }
                iM3 = iM2 + iM3;
            } else {
                int i14 = i11 << 3;
                long jLongValue = ((Long) this.f19081c[i9]).longValue();
                iM = AbstractC1407hH.M(i14);
                iN = AbstractC1407hH.N(jLongValue);
            }
            iM3 = iN + iM + iM3;
        }
        this.f19082d = iM3;
        return iM3;
    }

    public final void c(int i8, Object obj) {
        if (!this.f19083e) {
            throw new UnsupportedOperationException();
        }
        e(this.f19079a + 1);
        int[] iArr = this.f19080b;
        int i9 = this.f19079a;
        iArr[i9] = i8;
        this.f19081c[i9] = obj;
        this.f19079a = i9 + 1;
    }

    public final void d(C1459iH c1459iH) {
        if (this.f19079a != 0) {
            for (int i8 = 0; i8 < this.f19079a; i8++) {
                int i9 = this.f19080b[i8];
                Object obj = this.f19081c[i8];
                int i10 = i9 & 7;
                int i11 = i9 >>> 3;
                if (i10 == 0) {
                    c1459iH.n(i11, ((Long) obj).longValue());
                } else if (i10 == 1) {
                    c1459iH.j(i11, ((Long) obj).longValue());
                } else if (i10 == 2) {
                    c1459iH.f(i11, (XG) obj);
                } else if (i10 == 3) {
                    c1459iH.f19290a.a0(i11, 3);
                    ((C1408hI) obj).d(c1459iH);
                    c1459iH.f19290a.a0(i11, 4);
                } else {
                    if (i10 != 5) {
                        throw new RuntimeException(new C2340zH());
                    }
                    c1459iH.i(i11, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final void e(int i8) {
        int[] iArr = this.f19080b;
        if (i8 > iArr.length) {
            int i9 = this.f19079a;
            int i10 = (i9 / 2) + i9;
            if (i10 >= i8) {
                i8 = i10;
            }
            if (i8 < 8) {
                i8 = 8;
            }
            this.f19080b = Arrays.copyOf(iArr, i8);
            this.f19081c = Arrays.copyOf(this.f19081c, i8);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C1408hI)) {
            return false;
        }
        C1408hI c1408hI = (C1408hI) obj;
        int i8 = this.f19079a;
        if (i8 == c1408hI.f19079a) {
            int[] iArr = this.f19080b;
            int[] iArr2 = c1408hI.f19080b;
            for (int i9 = 0; i9 < i8; i9++) {
                if (iArr[i9] == iArr2[i9]) {
                }
            }
            Object[] objArr = this.f19081c;
            Object[] objArr2 = c1408hI.f19081c;
            int i10 = this.f19079a;
            for (int i11 = 0; i11 < i10; i11++) {
                if (objArr[i11].equals(objArr2[i11])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f19079a;
        int i9 = i8 + 527;
        int[] iArr = this.f19080b;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = ((i9 * 31) + i10) * 31;
        Object[] objArr = this.f19081c;
        int i13 = this.f19079a;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }
}
