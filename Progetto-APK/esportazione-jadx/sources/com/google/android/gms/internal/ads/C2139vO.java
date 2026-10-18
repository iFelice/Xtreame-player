package com.google.android.gms.internal.ads;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2139vO {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f21519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1104bO[] f21520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int[] f21521c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[][][] f21522d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C1104bO f21523e;

    public C2139vO(int[] iArr, C1104bO[] c1104bOArr, int[] iArr2, int[][][] iArr3, C1104bO c1104bO) {
        this.f21519a = iArr;
        this.f21520b = c1104bOArr;
        this.f21522d = iArr3;
        this.f21521c = iArr2;
        this.f21523e = c1104bO;
    }

    public final int a(int i8) {
        return this.f21519a[i8];
    }

    public final C1104bO b(int i8) {
        return this.f21520b[i8];
    }

    public final C1104bO c() {
        return this.f21523e;
    }
}
