package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class GK {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC2138vN f13497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f13498b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UN[] f13499c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f13500d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f13501e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public HK f13502f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f13503g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean[] f13504h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AbstractC1048aK[] f13505i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AbstractC2191wO f13506j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final QK f13507k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public GK f13508l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C1104bO f13509m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public C2295yO f13510n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f13511o;

    public GK(AbstractC1048aK[] abstractC1048aKArr, long j8, AbstractC2191wO abstractC2191wO, CO co, QK qk, HK hk, C2295yO c2295yO) {
        this.f13505i = abstractC1048aKArr;
        this.f13511o = j8;
        this.f13506j = abstractC2191wO;
        this.f13507k = qk;
        C2190wN c2190wN = hk.f13742a;
        this.f13498b = c2190wN.f21690a;
        this.f13502f = hk;
        this.f13509m = C1104bO.f18041d;
        this.f13510n = c2295yO;
        this.f13499c = new UN[2];
        this.f13504h = new boolean[2];
        qk.getClass();
        int i8 = WK.f17199k;
        Pair pair = (Pair) c2190wN.f21690a;
        Object obj = pair.first;
        C2190wN c2190wNA = c2190wN.a(pair.second);
        OK ok = (OK) qk.f16011d.get(obj);
        ok.getClass();
        qk.f16014g.add(ok);
        NK nk = (NK) qk.f16013f.get(ok);
        if (nk != null) {
            nk.f14899a.g(nk.f14900b);
        }
        ok.f15156c.add(c2190wNA);
        C1879qN c1879qNB = ok.f15154a.b(c2190wNA, co, hk.f13743b);
        qk.f16010c.put(c1879qNB, ok);
        qk.i();
        long j9 = hk.f13745d;
        this.f13497a = j9 != -9223372036854775807L ? new C1413hN(c1879qNB, j9) : c1879qNB;
    }

    public final long a(C2295yO c2295yO, long j8, boolean z7, boolean[] zArr) {
        AbstractC1048aK[] abstractC1048aKArr;
        int i8 = 0;
        while (true) {
            boolean z8 = true;
            if (i8 >= c2295yO.f22029a) {
                break;
            }
            if (z7 || !c2295yO.a(this.f13510n, i8)) {
                z8 = false;
            }
            this.f13504h[i8] = z8;
            i8++;
        }
        int i9 = 0;
        while (true) {
            abstractC1048aKArr = this.f13505i;
            if (i9 >= 2) {
                break;
            }
            abstractC1048aKArr[i9].getClass();
            i9++;
        }
        i();
        this.f13510n = c2295yO;
        if (this.f13508l == null) {
            int i10 = 0;
            while (true) {
                C2295yO c2295yO2 = this.f13510n;
                if (i10 >= c2295yO2.f22029a) {
                    break;
                }
                c2295yO2.b(i10);
                InterfaceC2087uO interfaceC2087uO = this.f13510n.f22031c[i10];
                i10++;
            }
        }
        long jK = this.f13497a.k(c2295yO.f22031c, this.f13504h, this.f13499c, zArr, j8);
        for (int i11 = 0; i11 < 2; i11++) {
            abstractC1048aKArr[i11].getClass();
        }
        this.f13501e = false;
        for (int i12 = 0; i12 < 2; i12++) {
            if (this.f13499c[i12] != null) {
                p113o3.r.M(c2295yO.b(i12));
                abstractC1048aKArr[i12].getClass();
                this.f13501e = true;
            } else {
                p113o3.r.M(c2295yO.f22031c[i12] == null);
            }
        }
        return jK;
    }

    public final long b() {
        if (!this.f13500d) {
            return this.f13502f.f13743b;
        }
        long jZzb = this.f13501e ? this.f13497a.zzb() : Long.MIN_VALUE;
        return jZzb == Long.MIN_VALUE ? this.f13502f.f13746e : jZzb;
    }

    public final long c() {
        return this.f13502f.f13743b + this.f13511o;
    }

    public final C2295yO d() {
        return this.f13510n;
    }

    public final C2295yO e(AbstractC0774Ie abstractC0774Ie) {
        AbstractC1048aK[] abstractC1048aKArr;
        InterfaceC2087uO[] interfaceC2087uOArr;
        boolean z7;
        int[][][] iArr;
        C1104bO[] c1104bOArr;
        boolean z8;
        C1804p0[] c1804p0Arr;
        int i8;
        int[] iArr2;
        C1104bO c1104bO = this.f13509m;
        C2190wN c2190wN = this.f13502f.f13742a;
        AbstractC2191wO abstractC2191wO = this.f13506j;
        abstractC2191wO.getClass();
        int[] iArr3 = new int[3];
        C0961Ve[][] c0961VeArr = new C0961Ve[3][];
        int[][][] iArr4 = new int[3][][];
        for (int i9 = 0; i9 < 3; i9++) {
            int i10 = c1104bO.f18042a;
            c0961VeArr[i9] = new C0961Ve[i10];
            iArr4[i9] = new int[i10][];
        }
        int i11 = 2;
        int[] iArr5 = new int[2];
        int i12 = 0;
        while (true) {
            abstractC1048aKArr = this.f13505i;
            if (i12 >= 2) {
                break;
            }
            abstractC1048aKArr[i12].getClass();
            iArr5[i12] = 8;
            i12++;
        }
        int i13 = 0;
        while (i13 < c1104bO.f18042a) {
            C0961Ve c0961VeA = c1104bO.a(i13);
            int i14 = 0;
            int i15 = 2;
            int i16 = 0;
            boolean z9 = true;
            while (true) {
                c1804p0Arr = c0961VeA.f17072d;
                i8 = c0961VeA.f17069a;
                if (i14 >= i11) {
                    break;
                }
                AbstractC1048aK abstractC1048aK = abstractC1048aKArr[i14];
                C1104bO c1104bO2 = c1104bO;
                AbstractC2191wO abstractC2191wO2 = abstractC2191wO;
                int i17 = 0;
                int iMax = 0;
                while (i17 < i8) {
                    iMax = Math.max(iMax, abstractC1048aK.q(c1804p0Arr[i17]) & 7);
                    i17++;
                    iArr5 = iArr5;
                }
                int[] iArr6 = iArr5;
                boolean z10 = iArr3[i14] == 0;
                if (iMax > i16) {
                    z9 = z10;
                    i16 = iMax;
                    i15 = i14;
                } else if (iMax == i16 && c0961VeA.f17071c == 5 && !z9 && z10) {
                    i16 = iMax;
                    i15 = i14;
                    z9 = true;
                }
                i14++;
                c1104bO = c1104bO2;
                abstractC2191wO = abstractC2191wO2;
                iArr5 = iArr6;
                i11 = 2;
            }
            C1104bO c1104bO3 = c1104bO;
            AbstractC2191wO abstractC2191wO3 = abstractC2191wO;
            int[] iArr7 = iArr5;
            if (i15 == 2) {
                iArr2 = new int[i8];
            } else {
                AbstractC1048aK abstractC1048aK2 = abstractC1048aKArr[i15];
                int[] iArr8 = new int[i8];
                for (int i18 = 0; i18 < i8; i18++) {
                    iArr8[i18] = abstractC1048aK2.q(c1804p0Arr[i18]);
                }
                iArr2 = iArr8;
            }
            int i19 = iArr3[i15];
            c0961VeArr[i15][i19] = c0961VeA;
            iArr4[i15][i19] = iArr2;
            iArr3[i15] = i19 + 1;
            i13++;
            c1104bO = c1104bO3;
            abstractC2191wO = abstractC2191wO3;
            iArr5 = iArr7;
            i11 = 2;
        }
        AbstractC2191wO abstractC2191wO4 = abstractC2191wO;
        int[] iArr9 = iArr5;
        int i20 = 2;
        C1104bO[] c1104bOArr2 = new C1104bO[2];
        String[] strArr = new String[2];
        int[] iArr10 = new int[2];
        int i21 = 0;
        while (i21 < i20) {
            int i22 = iArr3[i21];
            c1104bOArr2[i21] = new C1104bO((C0961Ve[]) Et.g(i22, c0961VeArr[i21]));
            iArr4[i21] = (int[][]) Et.g(i22, iArr4[i21]);
            strArr[i21] = abstractC1048aKArr[i21].m();
            iArr10[i21] = abstractC1048aKArr[i21].f17867b;
            i21++;
            i20 = 2;
        }
        C2139vO c2139vO = new C2139vO(iArr10, c1104bOArr2, iArr9, iArr4, new C1104bO((C0961Ve[]) Et.g(iArr3[i20], c0961VeArr[i20])));
        Pair pairA = abstractC2191wO4.a(c2139vO, iArr4, iArr9);
        InterfaceC2087uO[] interfaceC2087uOArr2 = (InterfaceC2087uO[]) pairA.second;
        List[] listArr = new List[interfaceC2087uOArr2.length];
        for (int i23 = 0; i23 < interfaceC2087uOArr2.length; i23++) {
            InterfaceC2087uO interfaceC2087uO = interfaceC2087uOArr2[i23];
            listArr[i23] = interfaceC2087uO != null ? AbstractC2073uA.w(interfaceC2087uO) : PA.f15340K;
        }
        C1917rA c1917rA = new C1917rA();
        int i24 = 0;
        for (int i25 = 2; i24 < i25; i25 = 2) {
            C1104bO[] c1104bOArr3 = c2139vO.f21520b;
            C1104bO c1104bO4 = c1104bOArr3[i24];
            List list = listArr[i24];
            int i26 = 0;
            while (i26 < c1104bO4.f18042a) {
                C0961Ve c0961VeA2 = c1104bO4.a(i26);
                int i27 = c1104bOArr3[i24].a(i26).f17069a;
                int[] iArr11 = new int[i27];
                int i28 = 0;
                int i29 = 0;
                while (true) {
                    iArr = c2139vO.f21522d;
                    if (i28 >= i27) {
                        break;
                    }
                    List[] listArr2 = listArr;
                    if ((iArr[i24][i26][i28] & 7) == 4) {
                        iArr11[i29] = i28;
                        i29++;
                    }
                    i28++;
                    listArr = listArr2;
                }
                List[] listArr3 = listArr;
                int[] iArrCopyOf = Arrays.copyOf(iArr11, i29);
                String str = null;
                int iMin = 16;
                C1104bO c1104bO5 = c1104bO4;
                int i30 = 0;
                boolean z11 = false;
                int i31 = 0;
                while (i30 < iArrCopyOf.length) {
                    int[] iArr12 = iArrCopyOf;
                    String str2 = c1104bOArr3[i24].a(i26).f17072d[iArrCopyOf[i30]].f20383m;
                    int i32 = i31 + 1;
                    if (i31 == 0) {
                        str = str2;
                    } else {
                        z11 |= !Objects.equals(str, str2);
                    }
                    iMin = Math.min(iMin, iArr[i24][i26][i30] & 24);
                    i30++;
                    i31 = i32;
                    iArrCopyOf = iArr12;
                }
                if (z11) {
                    iMin = Math.min(iMin, c2139vO.f21521c[i24]);
                }
                boolean z12 = iMin != 0;
                int i33 = c0961VeA2.f17069a;
                int[] iArr13 = new int[i33];
                boolean[] zArr = new boolean[i33];
                int i34 = 0;
                while (i34 < i33) {
                    iArr13[i34] = iArr[i24][i26][i34] & 7;
                    int[][][] iArr14 = iArr;
                    int i35 = 0;
                    while (true) {
                        if (i35 >= list.size()) {
                            c1104bOArr = c1104bOArr3;
                            z8 = false;
                            break;
                        }
                        InterfaceC2087uO interfaceC2087uO2 = (InterfaceC2087uO) list.get(i35);
                        c1104bOArr = c1104bOArr3;
                        if (interfaceC2087uO2.zze().equals(c0961VeA2) && interfaceC2087uO2.zzb(i34) != -1) {
                            z8 = true;
                            break;
                        }
                        i35++;
                        c1104bOArr3 = c1104bOArr;
                    }
                    zArr[i34] = z8;
                    i34++;
                    iArr = iArr14;
                    c1104bOArr3 = c1104bOArr;
                }
                c1917rA.b(new C2198wg(c0961VeA2, z12, iArr13, zArr));
                i26++;
                listArr = listArr3;
                c1104bO4 = c1104bO5;
                c1104bOArr3 = c1104bOArr3;
            }
            i24++;
        }
        int i36 = 0;
        while (true) {
            C1104bO c1104bO6 = c2139vO.f21523e;
            if (i36 >= c1104bO6.f18042a) {
                break;
            }
            C0961Ve c0961VeA3 = c1104bO6.a(i36);
            int i37 = c0961VeA3.f17069a;
            int[] iArr15 = new int[i37];
            Arrays.fill(iArr15, 0);
            c1917rA.b(new C2198wg(c0961VeA3, false, iArr15, new boolean[i37]));
            i36++;
        }
        C2295yO c2295yO = new C2295yO((YK[]) pairA.first, (InterfaceC2087uO[]) pairA.second, new C0761Hg(c1917rA.h()), c2139vO);
        int i38 = 0;
        while (true) {
            int i39 = c2295yO.f22029a;
            interfaceC2087uOArr = c2295yO.f22031c;
            if (i38 >= i39) {
                break;
            }
            if (c2295yO.b(i38)) {
                if (interfaceC2087uOArr[i38] == null) {
                    abstractC1048aKArr[i38].getClass();
                    z7 = false;
                } else {
                    z7 = true;
                }
                p113o3.r.M(z7);
            } else {
                p113o3.r.M(interfaceC2087uOArr[i38] == null);
            }
            i38++;
        }
        for (InterfaceC2087uO interfaceC2087uO3 : interfaceC2087uOArr) {
        }
        return c2295yO;
    }

    public final void f(float f8, AbstractC0774Ie abstractC0774Ie) {
        this.f13500d = true;
        this.f13509m = this.f13497a.zzi();
        C2295yO c2295yOE = e(abstractC0774Ie);
        HK hk = this.f13502f;
        long jMax = hk.f13743b;
        long j8 = hk.f13746e;
        if (j8 != -9223372036854775807L && jMax >= j8) {
            jMax = Math.max(0L, j8 - 1);
        }
        long jA = a(c2295yOE, jMax, false, new boolean[2]);
        long j9 = this.f13511o;
        HK hk2 = this.f13502f;
        long j10 = hk2.f13743b;
        this.f13511o = (j10 - jA) + j9;
        if (jA != j10) {
            hk2 = new HK(hk2.f13742a, jA, hk2.f13744c, hk2.f13745d, hk2.f13746e, hk2.f13747f, hk2.f13748g, hk2.f13749h);
        }
        this.f13502f = hk2;
    }

    public final void g() {
        i();
        InterfaceC2138vN interfaceC2138vN = this.f13497a;
        try {
            boolean z7 = interfaceC2138vN instanceof C1413hN;
            QK qk = this.f13507k;
            if (z7) {
                qk.d(((C1413hN) interfaceC2138vN).f19085G);
            } else {
                qk.d(interfaceC2138vN);
            }
        } catch (RuntimeException e8) {
            Zo.d("MediaPeriodHolder", "Period release failed.", e8);
        }
    }

    public final boolean h() {
        if (this.f13500d) {
            return !this.f13501e || this.f13497a.zzb() == Long.MIN_VALUE;
        }
        return false;
    }

    public final void i() {
        if (this.f13508l != null) {
            return;
        }
        int i8 = 0;
        while (true) {
            C2295yO c2295yO = this.f13510n;
            if (i8 >= c2295yO.f22029a) {
                return;
            }
            c2295yO.b(i8);
            InterfaceC2087uO interfaceC2087uO = this.f13510n.f22031c[i8];
            i8++;
        }
    }
}
