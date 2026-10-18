package com.google.android.gms.internal.ads;

import java.math.RoundingMode;
import p094m0.C3125h;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e3, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1237e3 implements InterfaceC1186d3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final N f18473a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final InterfaceC1234e0 f18474b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3125h f18475c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1804p0 f18476d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18477e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f18478f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f18479g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f18480h;

    public C1237e3(N n7, InterfaceC1234e0 interfaceC1234e0, C3125h c3125h, String str, int i8) throws C0800Ka {
        this.f18473a = n7;
        this.f18474b = interfaceC1234e0;
        this.f18475c = c3125h;
        int i9 = c3125h.f26863b * c3125h.f26866e;
        int i10 = c3125h.f26865d;
        int i11 = i9 / 8;
        if (i10 != i11) {
            throw C0800Ka.a("Expected block size: " + i11 + "; got: " + i10, null);
        }
        int i12 = c3125h.f26864c * i11;
        int i13 = i12 * 8;
        int iMax = Math.max(i11, i12 / 10);
        this.f18477e = iMax;
        K k8 = new K();
        k8.f(str);
        k8.f14266g = i13;
        k8.f14267h = i13;
        k8.f14272m = iMax;
        k8.f14285z = c3125h.f26863b;
        k8.f14253A = c3125h.f26864c;
        k8.f14254B = i8;
        this.f18476d = new C1804p0(k8);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final void a(long j8) {
        this.f18478f = j8;
        this.f18479g = 0;
        this.f18480h = 0L;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final boolean b(M m7, long j8) {
        int i8;
        int i9;
        long j9 = j8;
        while (j9 > 0 && (i8 = this.f18479g) < (i9 = this.f18477e)) {
            int iE = this.f18474b.e(m7, (int) Math.min(i9 - i8, j9), true);
            if (iE == -1) {
                j9 = 0;
            } else {
                this.f18479g += iE;
                j9 -= (long) iE;
            }
        }
        int i10 = this.f18479g;
        C3125h c3125h = this.f18475c;
        int i11 = c3125h.f26865d;
        int i12 = i10 / i11;
        if (i12 > 0) {
            long jV = this.f18478f + Et.v(this.f18480h, 1000000L, c3125h.f26864c, RoundingMode.FLOOR);
            int i13 = i12 * i11;
            int i14 = this.f18479g - i13;
            this.f18474b.b(jV, 1, i13, i14, null);
            this.f18480h += (long) i12;
            this.f18479g = i14;
        }
        return j9 <= 0;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1186d3
    public final void zza(int i8, long j8) {
        this.f18473a.g(new C1341g3(this.f18475c, 1, i8, j8));
        this.f18474b.d(this.f18476d);
    }
}
