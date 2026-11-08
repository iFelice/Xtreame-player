package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class T5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final T5 f16590b = new T5(new C1027a[0]);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final C1027a f16591c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1027a[] f16592a;

    static {
        C1027a c1027a = new C1027a(-1, new int[0], new C2225x6[0], new long[0]);
        int[] iArr = c1027a.f17823d;
        int length = iArr.length;
        int iMax = Math.max(0, length);
        int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
        Arrays.fill(iArrCopyOf, length, iMax, 0);
        long[] jArr = c1027a.f17824e;
        int length2 = jArr.length;
        int iMax2 = Math.max(0, length2);
        long[] jArrCopyOf = Arrays.copyOf(jArr, iMax2);
        Arrays.fill(jArrCopyOf, length2, iMax2, -9223372036854775807L);
        f16591c = new C1027a(0, iArrCopyOf, (C2225x6[]) Arrays.copyOf(c1027a.f17822c, 0), jArrCopyOf);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public T5(C1027a[] c1027aArr) {
        this.f16592a = c1027aArr;
    }

    public final C1027a a(int i8) {
        return i8 < 0 ? f16591c : this.f16592a[i8];
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && T5.class == obj.getClass() && Arrays.equals(this.f16592a, ((T5) obj).f16592a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f16592a) + (((int) (-9223372036854775807L)) * 961);
    }

    public final String toString() {
        return p148t.a.c("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[", "])");
    }
}
