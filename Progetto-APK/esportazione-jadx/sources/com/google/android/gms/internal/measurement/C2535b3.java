package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.b3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2535b3 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C2535b3 f23099f = new C2535b3(0, new int[0], new Object[0], false);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f23100a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int[] f23101b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object[] f23102c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f23103d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f23104e;

    public C2535b3(int i8, int[] iArr, Object[] objArr, boolean z7) {
        this.f23100a = i8;
        this.f23101b = iArr;
        this.f23102c = objArr;
        this.f23104e = z7;
    }

    public static C2535b3 b() {
        return new C2535b3(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int iG;
        int iO;
        int iG2;
        int i8 = this.f23103d;
        if (i8 != -1) {
            return i8;
        }
        int iG3 = 0;
        for (int i9 = 0; i9 < this.f23100a; i9++) {
            int i10 = this.f23101b[i9];
            int i11 = i10 >>> 3;
            int i12 = i10 & 7;
            if (i12 != 0) {
                if (i12 != 1) {
                    if (i12 == 2) {
                        int i13 = i11 << 3;
                        AbstractC2576i2 abstractC2576i2 = (AbstractC2576i2) this.f23102c[i9];
                        int iG4 = C2588k2.G(i13);
                        int iN = abstractC2576i2.n();
                        iG3 = C2588k2.G(iN) + iN + iG4 + iG3;
                    } else if (i12 == 3) {
                        int iG5 = C2588k2.G(i11 << 3);
                        iG = iG5 + iG5;
                        iO = ((C2535b3) this.f23102c[i9]).a();
                    } else {
                        if (i12 != 5) {
                            throw new IllegalStateException(new A2());
                        }
                        ((Integer) this.f23102c[i9]).getClass();
                        iG2 = C2588k2.G(i11 << 3) + 4;
                    }
                } else {
                    ((Long) this.f23102c[i9]).getClass();
                    iG2 = C2588k2.G(i11 << 3) + 8;
                }
                iG3 = iG2 + iG3;
            } else {
                int i14 = i11 << 3;
                long jLongValue = ((Long) this.f23102c[i9]).longValue();
                iG = C2588k2.G(i14);
                iO = C2588k2.o(jLongValue);
            }
            iG3 = iO + iG + iG3;
        }
        this.f23103d = iG3;
        return iG3;
    }

    public final void c(int i8, Object obj) {
        if (!this.f23104e) {
            throw new UnsupportedOperationException();
        }
        e(this.f23100a + 1);
        int[] iArr = this.f23101b;
        int i9 = this.f23100a;
        iArr[i9] = i8;
        this.f23102c[i9] = obj;
        this.f23100a = i9 + 1;
    }

    public final void d(C2594l2 c2594l2) {
        if (this.f23100a != 0) {
            for (int i8 = 0; i8 < this.f23100a; i8++) {
                int i9 = this.f23101b[i8];
                Object obj = this.f23102c[i8];
                int i10 = i9 & 7;
                int i11 = i9 >>> 3;
                if (i10 == 0) {
                    c2594l2.p(i11, ((Long) obj).longValue());
                } else if (i10 == 1) {
                    c2594l2.l(i11, ((Long) obj).longValue());
                } else if (i10 == 2) {
                    c2594l2.g(i11, (AbstractC2576i2) obj);
                } else if (i10 == 3) {
                    c2594l2.f23193a.y(i11, 3);
                    ((C2535b3) obj).d(c2594l2);
                    c2594l2.f23193a.y(i11, 4);
                } else {
                    if (i10 != 5) {
                        throw new RuntimeException(new A2());
                    }
                    c2594l2.k(i11, ((Integer) obj).intValue());
                }
            }
        }
    }

    public final void e(int i8) {
        int[] iArr = this.f23101b;
        if (i8 > iArr.length) {
            int i9 = this.f23100a;
            int i10 = (i9 / 2) + i9;
            if (i10 >= i8) {
                i8 = i10;
            }
            if (i8 < 8) {
                i8 = 8;
            }
            this.f23101b = Arrays.copyOf(iArr, i8);
            this.f23102c = Arrays.copyOf(this.f23102c, i8);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof C2535b3)) {
            return false;
        }
        C2535b3 c2535b3 = (C2535b3) obj;
        int i8 = this.f23100a;
        if (i8 == c2535b3.f23100a) {
            int[] iArr = this.f23101b;
            int[] iArr2 = c2535b3.f23101b;
            for (int i9 = 0; i9 < i8; i9++) {
                if (iArr[i9] == iArr2[i9]) {
                }
            }
            Object[] objArr = this.f23102c;
            Object[] objArr2 = c2535b3.f23102c;
            int i10 = this.f23100a;
            for (int i11 = 0; i11 < i10; i11++) {
                if (objArr[i11].equals(objArr2[i11])) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i8 = this.f23100a;
        int i9 = i8 + 527;
        int[] iArr = this.f23101b;
        int iHashCode = 17;
        int i10 = 17;
        for (int i11 = 0; i11 < i8; i11++) {
            i10 = (i10 * 31) + iArr[i11];
        }
        int i12 = ((i9 * 31) + i10) * 31;
        Object[] objArr = this.f23102c;
        int i13 = this.f23100a;
        for (int i14 = 0; i14 < i13; i14++) {
            iHashCode = (iHashCode * 31) + objArr[i14].hashCode();
        }
        return i12 + iHashCode;
    }
}
