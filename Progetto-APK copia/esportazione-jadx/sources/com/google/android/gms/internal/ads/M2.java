package com.google.android.gms.internal.ads;

import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class M2 implements F2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p004a3.b f14607a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f14608b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InterfaceC1234e0 f14609c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public A1.s f14610d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f14611e;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f14618l;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean[] f14612f = new boolean[3];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final A1.x f14613g = new A1.x(32, 1);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final A1.x f14614h = new A1.x(33, 1);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final A1.x f14615i = new A1.x(34, 1);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final A1.x f14616j = new A1.x(39, 1);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final A1.x f14617k = new A1.x(40, 1);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f14619m = -9223372036854775807L;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final C1534jr f14620n = new C1534jr();

    public M2(p004a3.b bVar) {
        this.f14607a = bVar;
    }

    public final void a(int i8, byte[] bArr, int i9) {
        A1.s sVar = this.f14610d;
        if (sVar.f514e) {
            int i10 = sVar.f512c;
            int i11 = (i8 + 2) - i10;
            if (i11 < i9) {
                sVar.f515f = (bArr[i11] & 128) != 0;
                sVar.f514e = false;
            } else {
                sVar.f512c = (i9 - i8) + i10;
            }
        }
        if (!this.f14611e) {
            this.f14613g.e(i8, bArr, i9);
            this.f14614h.e(i8, bArr, i9);
            this.f14615i.e(i8, bArr, i9);
        }
        this.f14616j.e(i8, bArr, i9);
        this.f14617k.e(i8, bArr, i9);
    }

    /* JADX WARN: Code duplicated, block: B:52:0x017e  */
    @Override // com.google.android.gms.internal.ads.F2
    public final void b(C1534jr c1534jr) {
        boolean z7;
        p113o3.r.x(this.f14609c);
        int i8 = Et.f13234a;
        while (c1534jr.o() > 0) {
            int i9 = c1534jr.f19516b;
            int i10 = c1534jr.f19517c;
            byte[] bArr = c1534jr.f19515a;
            this.f14618l += (long) c1534jr.o();
            this.f14609c.f(c1534jr.o(), c1534jr);
            while (i9 < i10) {
                int iA = AbstractC2008sy.a(bArr, i9, i10, this.f14612f);
                if (iA == i10) {
                    a(i9, bArr, i10);
                    return;
                }
                int i11 = iA + 3;
                int i12 = bArr[i11] & 126;
                int i13 = iA - i9;
                if (i13 > 0) {
                    a(i9, bArr, iA);
                }
                int i14 = i10 - iA;
                long j8 = this.f14618l - ((long) i14);
                int i15 = i13 < 0 ? -i13 : 0;
                long j9 = this.f14619m;
                A1.s sVar = this.f14610d;
                boolean z8 = this.f14611e;
                if (sVar.f518i && sVar.f515f) {
                    sVar.f521l = sVar.f511b;
                    sVar.f518i = false;
                } else if (sVar.f516g || sVar.f515f) {
                    if (z8 && sVar.f517h) {
                        sVar.b(((int) (j8 - sVar.f510a)) + i14);
                    }
                    sVar.f519j = sVar.f510a;
                    sVar.f520k = sVar.f513d;
                    sVar.f521l = sVar.f511b;
                    sVar.f517h = true;
                }
                boolean z9 = this.f14611e;
                p004a3.b bVar = this.f14607a;
                A1.x xVar = this.f14615i;
                A1.x xVar2 = this.f14614h;
                A1.x xVar3 = this.f14613g;
                if (z9) {
                    xVar2 = xVar2;
                    xVar = xVar;
                } else {
                    xVar3.h(i15);
                    xVar2.h(i15);
                    xVar.h(i15);
                    if (xVar3.f596c && xVar2.f596c && xVar.f596c) {
                        String str = this.f14608b;
                        int i16 = xVar3.f598e;
                        byte[] bArr2 = new byte[xVar2.f598e + i16 + xVar.f598e];
                        System.arraycopy(xVar3.f597d, 0, bArr2, 0, i16);
                        System.arraycopy(xVar2.f597d, 0, bArr2, xVar3.f598e, xVar2.f598e);
                        System.arraycopy(xVar.f597d, 0, bArr2, xVar3.f598e + xVar2.f598e, xVar.f598e);
                        String strA = null;
                        Sw swC = AbstractC2008sy.c(xVar2.f597d, 3, xVar2.f598e, null);
                        Wv wv = swC.f16549a;
                        if (wv != null) {
                            strA = AbstractC1270el.a(wv.f17343a, wv.f17344b, wv.f17345c, wv.f17346d, wv.f17347e, wv.f17348f);
                        }
                        K k8 = new K();
                        k8.f14260a = str;
                        k8.f("video/hevc");
                        k8.f14268i = strA;
                        k8.f14277r = swC.f16552d;
                        k8.f14278s = swC.f16553e;
                        k8.f14284y = new C1928rL(swC.f16556h, swC.f16557i, swC.f16558j, null, swC.f16550b + 8, swC.f16551c + 8);
                        k8.f14281v = swC.f16554f;
                        k8.f14273n = swC.f16555g;
                        k8.f14274o = Collections.singletonList(bArr2);
                        C1804p0 c1804p0 = new C1804p0(k8);
                        this.f14609c.d(c1804p0);
                        int i17 = c1804p0.f20385o;
                        if (i17 == -1) {
                            throw new IllegalStateException();
                        }
                        W2 w7 = (W2) bVar.f8652J;
                        w7.getClass();
                        p113o3.r.M(i17 >= 0);
                        w7.f17150G = i17;
                        w7.d(i17);
                        this.f14611e = true;
                    } else {
                        xVar2 = xVar2;
                        xVar = xVar;
                    }
                }
                A1.x xVar4 = this.f14616j;
                boolean zH = xVar4.h(i15);
                C1534jr c1534jr2 = this.f14620n;
                if (zH) {
                    c1534jr2.h(AbstractC2008sy.b(xVar4.f597d, xVar4.f598e), xVar4.f597d);
                    c1534jr2.k(5);
                    ((W2) bVar.f8652J).c(j9, c1534jr2);
                }
                A1.x xVar5 = this.f14617k;
                if (xVar5.h(i15)) {
                    c1534jr2.h(AbstractC2008sy.b(xVar5.f597d, xVar5.f598e), xVar5.f597d);
                    c1534jr2.k(5);
                    ((W2) bVar.f8652J).c(j9, c1534jr2);
                }
                int i18 = i12 >> 1;
                long j10 = this.f14619m;
                A1.s sVar2 = this.f14610d;
                boolean z10 = this.f14611e;
                sVar2.f515f = false;
                sVar2.f516g = false;
                sVar2.f513d = j10;
                sVar2.f512c = 0;
                sVar2.f510a = j8;
                if (i18 < 32 || i18 == 40) {
                    z7 = true;
                } else {
                    if (sVar2.f517h && !sVar2.f518i) {
                        if (z10) {
                            sVar2.b(i14);
                        }
                        sVar2.f517h = false;
                    }
                    if (i18 <= 35 || i18 == 39) {
                        z7 = true;
                        sVar2.f516g = !sVar2.f518i;
                        sVar2.f518i = true;
                    } else {
                        z7 = true;
                    }
                }
                boolean z11 = i18 >= 16 && i18 <= 21;
                sVar2.f511b = z11;
                if (!z11 && i18 > 9) {
                    z7 = false;
                }
                sVar2.f514e = z7;
                if (!this.f14611e) {
                    xVar3.g(i18);
                    xVar2.g(i18);
                    xVar.g(i18);
                }
                xVar4.g(i18);
                xVar5.g(i18);
                i9 = i11;
                i10 = i10;
                bArr = bArr;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void c(N n7, A1.I i8) {
        i8.c();
        i8.d();
        this.f14608b = i8.f310e;
        i8.d();
        InterfaceC1234e0 interfaceC1234e0H = n7.h(i8.f309d, 2);
        this.f14609c = interfaceC1234e0H;
        this.f14610d = new A1.s(interfaceC1234e0H);
        this.f14607a.q(n7, i8);
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void d(int i8, long j8) {
        this.f14619m = j8;
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zzc(boolean z7) {
        p113o3.r.x(this.f14609c);
        int i8 = Et.f13234a;
        if (z7) {
            ((W2) this.f14607a.f8652J).d(0);
            A1.s sVar = this.f14610d;
            long j8 = this.f14618l;
            sVar.f521l = sVar.f511b;
            sVar.b((int) (j8 - sVar.f510a));
            sVar.f519j = sVar.f510a;
            sVar.f510a = j8;
            sVar.b(0);
            sVar.f517h = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.F2
    public final void zze() {
        this.f14618l = 0L;
        this.f14619m = -9223372036854775807L;
        AbstractC2008sy.g(this.f14612f);
        this.f14613g.f();
        this.f14614h.f();
        this.f14615i.f();
        this.f14616j.f();
        this.f14617k.f();
        ((W2) this.f14607a.f8652J).d(0);
        A1.s sVar = this.f14610d;
        if (sVar != null) {
            sVar.f514e = false;
            sVar.f515f = false;
            sVar.f516g = false;
            sVar.f517h = false;
            sVar.f518i = false;
        }
    }
}
