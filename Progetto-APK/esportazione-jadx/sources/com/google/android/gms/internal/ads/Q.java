package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class Q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f15530c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f15532e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f15533f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f15534g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f15535h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f15536i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f15537j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final C2218x f15538k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Q9 f15539l;

    public Q(int i8, int i9, int i10, int i11, int i12, int i13, int i14, long j8, C2218x c2218x, Q9 q9) {
        this.f15528a = i8;
        this.f15529b = i9;
        this.f15530c = i10;
        this.f15531d = i11;
        this.f15532e = i12;
        this.f15533f = d(i12);
        this.f15534g = i13;
        this.f15535h = i14;
        this.f15536i = c(i14);
        this.f15537j = j8;
        this.f15538k = c2218x;
        this.f15539l = q9;
    }

    public static int c(int i8) {
        if (i8 == 8) {
            return 1;
        }
        if (i8 == 12) {
            return 2;
        }
        if (i8 == 16) {
            return 4;
        }
        if (i8 != 20) {
            return i8 != 24 ? -1 : 6;
        }
        return 5;
    }

    public static int d(int i8) {
        switch (i8) {
            case 8000:
                return 4;
            case 16000:
                return 5;
            case 22050:
                return 6;
            case 24000:
                return 7;
            case 32000:
                return 8;
            case 44100:
                return 9;
            case 48000:
                return 10;
            case 88200:
                return 1;
            case 96000:
                return 11;
            case 176400:
                return 2;
            case 192000:
                return 3;
            default:
                return -1;
        }
    }

    public final long a() {
        long j8 = this.f15537j;
        if (j8 == 0) {
            return -9223372036854775807L;
        }
        return (j8 * 1000000) / ((long) this.f15532e);
    }

    public final C1804p0 b(byte[] bArr, Q9 q9) {
        bArr[4] = -128;
        Q9 q10 = this.f15539l;
        if (q10 != null) {
            q9 = q10.e(q9);
        }
        K k8 = new K();
        k8.f("audio/flac");
        int i8 = this.f15531d;
        if (i8 <= 0) {
            i8 = -1;
        }
        k8.f14272m = i8;
        k8.f14285z = this.f15534g;
        k8.f14253A = this.f15532e;
        k8.f14254B = Et.r(this.f15535h);
        k8.f14274o = Collections.singletonList(bArr);
        k8.f14269j = q9;
        return new C1804p0(k8);
    }

    public Q(byte[] bArr, int i8) {
        C1286f0 c1286f0 = new C1286f0(bArr, bArr.length);
        c1286f0.t(i8 * 8);
        this.f15528a = c1286f0.g(16);
        this.f15529b = c1286f0.g(16);
        this.f15530c = c1286f0.g(24);
        this.f15531d = c1286f0.g(24);
        int iG = c1286f0.g(20);
        this.f15532e = iG;
        this.f15533f = d(iG);
        this.f15534g = c1286f0.g(3) + 1;
        int iG2 = c1286f0.g(5) + 1;
        this.f15535h = iG2;
        this.f15536i = c(iG2);
        this.f15537j = c1286f0.j(36);
        this.f15538k = null;
        this.f15539l = null;
    }
}
