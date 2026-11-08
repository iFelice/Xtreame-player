package com.google.android.gms.internal.ads;

import W0.C0369b;

/* JADX INFO: loaded from: classes.dex */
public final class O2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1534jr f15117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0369b f15118b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f15119c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15120d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public InterfaceC1234e0 f15121e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f15122f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15123g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15124h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f15125i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f15126j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f15127k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f15128l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f15129m;

    public O2(String str, int i8) {
        C1534jr c1534jr = new C1534jr(4);
        this.f15117a = c1534jr;
        c1534jr.f19515a[0] = -1;
        this.f15118b = new C0369b();
        this.f15129m = -9223372036854775807L;
        this.f15119c = str;
        this.f15120d = i8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        p113o3.r.x(this.f15121e);
        while (c1534jr.o() > 0) {
            int i8 = this.f15123g;
            C1534jr c1534jr2 = this.f15117a;
            if (i8 == 0) {
                byte[] bArr = c1534jr.f19515a;
                int i9 = c1534jr.f19516b;
                int i10 = c1534jr.f19517c;
                while (true) {
                    if (i9 >= i10) {
                        c1534jr.j(i10);
                        break;
                    }
                    int i11 = i9 + 1;
                    byte b8 = bArr[i9];
                    boolean z7 = (b8 & 255) == 255;
                    boolean z8 = this.f15126j && (b8 & 224) == 224;
                    this.f15126j = z7;
                    if (z8) {
                        c1534jr.j(i11);
                        this.f15126j = false;
                        c1534jr2.f19515a[1] = bArr[i9];
                        this.f15124h = 2;
                        this.f15123g = 1;
                        break;
                    }
                    i9 = i11;
                }
            } else if (i8 != 1) {
                int iMin = Math.min(c1534jr.o(), this.f15128l - this.f15124h);
                this.f15121e.f(iMin, c1534jr);
                int i12 = this.f15124h + iMin;
                this.f15124h = i12;
                if (i12 >= this.f15128l) {
                    p113o3.r.M(this.f15129m != -9223372036854775807L);
                    this.f15121e.b(this.f15129m, 1, this.f15128l, 0, null);
                    this.f15129m += this.f15127k;
                    this.f15124h = 0;
                    this.f15123g = 0;
                }
            } else {
                int iMin2 = Math.min(c1534jr.o(), 4 - this.f15124h);
                c1534jr.f(this.f15124h, c1534jr2.f19515a, iMin2);
                int i13 = this.f15124h + iMin2;
                this.f15124h = i13;
                if (i13 >= 4) {
                    c1534jr2.j(0);
                    int iR = c1534jr2.r();
                    C0369b c0369b = this.f15118b;
                    if (c0369b.b(iR)) {
                        this.f15128l = c0369b.f7375c;
                        if (!this.f15125i) {
                            this.f15127k = (((long) c0369b.f7379g) * 1000000) / ((long) c0369b.f7376d);
                            K k8 = new K();
                            k8.f14260a = this.f15122f;
                            k8.f(c0369b.f7374b);
                            k8.f14272m = 4096;
                            k8.f14285z = c0369b.f7377e;
                            k8.f14253A = c0369b.f7376d;
                            k8.f14263d = this.f15119c;
                            k8.f14265f = this.f15120d;
                            this.f15121e.d(new C1804p0(k8));
                            this.f15125i = true;
                        }
                        c1534jr2.j(0);
                        this.f15121e.f(4, c1534jr2);
                        this.f15123g = 2;
                    } else {
                        this.f15124h = 0;
                        this.f15123g = 1;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f15122f = i8.f310e;
        i8.d();
        this.f15121e = n7.h(i8.f309d, 1);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f15129m = j8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f15123g = 0;
        this.f15124h = 0;
        this.f15126j = false;
        this.f15129m = -9223372036854775807L;
    }
}
