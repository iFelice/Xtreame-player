package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class G1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final D1 f13462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f13463b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f13464c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f13465d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13466e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f13467f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f13468g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f13469h;

    public G1(D1 d6, long[] jArr, int[] iArr, int i8, long[] jArr2, int[] iArr2, long j8) {
        int length = iArr.length;
        int length2 = jArr2.length;
        p113o3.r.J(length == length2);
        int length3 = jArr.length;
        p113o3.r.J(length3 == length2);
        int length4 = iArr2.length;
        p113o3.r.J(length4 == length2);
        this.f13462a = d6;
        this.f13464c = jArr;
        this.f13465d = iArr;
        this.f13466e = i8;
        this.f13467f = jArr2;
        this.f13468g = iArr2;
        this.f13469h = j8;
        this.f13463b = length3;
        if (length4 > 0) {
            int i9 = length4 - 1;
            iArr2[i9] = iArr2[i9] | 536870912;
        }
    }

    public final int a(long j8) {
        int i8;
        int i9 = Et.f13234a;
        long[] jArr = this.f13467f;
        int iBinarySearch = Arrays.binarySearch(jArr, j8);
        if (iBinarySearch < 0) {
            i8 = ~iBinarySearch;
        } else {
            while (true) {
                int i10 = iBinarySearch + 1;
                if (i10 >= jArr.length || jArr[i10] != j8) {
                    break;
                }
                iBinarySearch = i10;
            }
            i8 = iBinarySearch;
        }
        while (i8 < jArr.length) {
            if ((this.f13468g[i8] & 1) != 0) {
                return i8;
            }
            i8++;
        }
        return -1;
    }
}
