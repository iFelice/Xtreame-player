package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1027a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f17819f = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17820a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri[] f17821b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2225x6[] f17822c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f17823d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long[] f17824e;

    static {
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
        Integer.toString(5, 36);
        Integer.toString(6, 36);
        Integer.toString(7, 36);
        Integer.toString(8, 36);
    }

    public C1027a(int i8, int[] iArr, C2225x6[] c2225x6Arr, long[] jArr) {
        Uri uri;
        int length = iArr.length;
        int length2 = c2225x6Arr.length;
        int i9 = 0;
        p113o3.r.J(length == length2);
        this.f17820a = i8;
        this.f17823d = iArr;
        this.f17822c = c2225x6Arr;
        this.f17824e = jArr;
        this.f17821b = new Uri[length2];
        while (true) {
            Uri[] uriArr = this.f17821b;
            if (i9 >= uriArr.length) {
                return;
            }
            C2225x6 c2225x6 = c2225x6Arr[i9];
            if (c2225x6 == null) {
                uri = null;
            } else {
                C1239e5 c1239e5 = c2225x6.f21836b;
                c1239e5.getClass();
                uri = c1239e5.f18481a;
            }
            uriArr[i9] = uri;
            i9++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1027a.class == obj.getClass()) {
            C1027a c1027a = (C1027a) obj;
            if (this.f17820a == c1027a.f17820a && Arrays.equals(this.f17822c, c1027a.f17822c) && Arrays.equals(this.f17823d, c1027a.f17823d) && Arrays.equals(this.f17824e, c1027a.f17824e)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f17824e) + ((Arrays.hashCode(this.f17823d) + ((Arrays.hashCode(this.f17822c) + (((this.f17820a * 31) - 1) * 961)) * 31)) * 31)) * 961;
    }
}
