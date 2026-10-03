package p154t5;

import N.r;
import Z3.C0433o;
import p027d2.v;
import p102n0.c;
import p130q5.i;
import p130q5.o;
import p176w5.b;
import p178x.n;

/* JADX INFO: loaded from: classes2.dex */
public final class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int[] f30304g = {3808, 476, 2107, 1799};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b f30305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f30308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f30309e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30310f;

    public a(b bVar) {
        this.f30305a = bVar;
    }

    public static o[] b(o[] oVarArr, int i8, int i9) {
        float f8 = i9 / (i8 * 2.0f);
        o oVar = oVarArr[0];
        float f9 = oVar.f29645a;
        o oVar2 = oVarArr[2];
        float f10 = oVar2.f29645a;
        float f11 = f9 - f10;
        float f12 = oVar.f29646b;
        float f13 = oVar2.f29646b;
        float f14 = f12 - f13;
        float f15 = (f9 + f10) / 2.0f;
        float f16 = (f12 + f13) / 2.0f;
        float f17 = f11 * f8;
        float f18 = f14 * f8;
        o oVar3 = new o(f15 + f17, f16 + f18);
        o oVar4 = new o(f15 - f17, f16 - f18);
        o oVar5 = oVarArr[1];
        float f19 = oVar5.f29645a;
        o oVar6 = oVarArr[3];
        float f20 = oVar6.f29645a;
        float f21 = f19 - f20;
        float f22 = oVar5.f29646b;
        float f23 = oVar6.f29646b;
        float f24 = f22 - f23;
        float f25 = (f19 + f20) / 2.0f;
        float f26 = (f22 + f23) / 2.0f;
        float f27 = f21 * f8;
        float f28 = f8 * f24;
        return new o[]{oVar3, new o(f25 + f27, f26 + f28), oVar4, new o(f25 - f27, f26 - f28)};
    }

    public final p138r5.a a(boolean z7) throws i {
        o oVarC;
        o oVar;
        o oVar2;
        o oVar3;
        o oVarC2;
        o oVar4;
        o oVar5;
        o oVar6;
        int i8;
        int i9;
        int i10;
        long j8;
        long j9;
        int i11 = -1;
        int i12 = 2;
        int i13 = 1;
        b bVar = this.f30305a;
        try {
            o[] oVarArrB = new n(bVar).b();
            oVar2 = oVarArrB[0];
            oVar3 = oVarArrB[1];
            oVar = oVarArrB[2];
            oVarC = oVarArrB[3];
        } catch (i unused) {
            int i14 = bVar.f31091G / 2;
            int i15 = bVar.f31092H / 2;
            int i16 = i14 + 7;
            int i17 = i15 - 7;
            o oVarC3 = e(new r(i16, i17, 11, 0), false, 1, -1).c();
            int i18 = i15 + 7;
            o oVarC4 = e(new r(i16, i18, 11, 0), false, 1, 1).c();
            int i19 = i14 - 7;
            o oVarC5 = e(new r(i19, i18, 11, 0), false, -1, 1).c();
            oVarC = e(new r(i19, i17, 11, 0), false, -1, -1).c();
            oVar = oVarC5;
            oVar2 = oVarC3;
            oVar3 = oVarC4;
        }
        int iS = v.s((((oVar2.f29645a + oVarC.f29645a) + oVar3.f29645a) + oVar.f29645a) / 4.0f);
        int iS2 = v.s((((oVar2.f29646b + oVarC.f29646b) + oVar3.f29646b) + oVar.f29646b) / 4.0f);
        try {
            o[] oVarArrB2 = new n(bVar, 15, iS, iS2).b();
            oVar4 = oVarArrB2[0];
            o oVar7 = oVarArrB2[1];
            o oVar8 = oVarArrB2[2];
            oVar6 = oVarArrB2[3];
            oVarC2 = oVar7;
            oVar5 = oVar8;
        } catch (i unused2) {
            int i20 = iS + 7;
            int i21 = iS2 - 7;
            o oVarC6 = e(new r(i20, i21, 11, 0), false, 1, -1).c();
            int i22 = iS2 + 7;
            oVarC2 = e(new r(i20, i22, 11, 0), false, 1, 1).c();
            int i23 = iS - 7;
            o oVarC7 = e(new r(i23, i22, 11, 0), false, -1, 1).c();
            o oVarC8 = e(new r(i23, i21, 11, 0), false, -1, -1).c();
            oVar4 = oVarC6;
            oVar5 = oVarC7;
            oVar6 = oVarC8;
        }
        r rVar = new r(v.s((((oVar4.f29645a + oVar6.f29645a) + oVarC2.f29645a) + oVar5.f29645a) / 4.0f), v.s((((oVar4.f29646b + oVar6.f29646b) + oVarC2.f29646b) + oVar5.f29646b) / 4.0f), 11, 0);
        this.f30309e = 1;
        r rVar2 = rVar;
        r rVar3 = rVar2;
        r rVar4 = rVar3;
        boolean z8 = true;
        while (this.f30309e < 9) {
            r rVarE = e(rVar, z8, i13, i11);
            r rVarE2 = e(rVar2, z8, i13, i13);
            r rVarE3 = e(rVar3, z8, i11, i13);
            r rVarE4 = e(rVar4, z8, i11, i11);
            if (this.f30309e > i12) {
                double dI = (v.i(rVarE4.f4919H, rVarE4.f4920I, rVarE.f4919H, rVarE.f4920I) * this.f30309e) / (v.i(rVar4.f4919H, rVar4.f4920I, rVar.f4919H, rVar.f4920I) * (this.f30309e + 2));
                if (dI < 0.75d || dI > 1.25d) {
                    break;
                }
                r rVar5 = new r(rVarE.f4919H - 3, rVarE.f4920I + 3, 11, 0);
                r rVar6 = new r(rVarE2.f4919H - 3, rVarE2.f4920I - 3, 11, 0);
                r rVar7 = new r(rVarE3.f4919H + 3, rVarE3.f4920I - 3, 11, 0);
                r rVar8 = new r(rVarE4.f4919H + 3, rVarE4.f4920I + 3, 11, 0);
                int iC = c(rVar8, rVar5);
                if (iC == 0 || c(rVar5, rVar6) != iC || c(rVar6, rVar7) != iC || c(rVar7, rVar8) != iC) {
                    break;
                }
            }
            z8 = !z8;
            this.f30309e++;
            rVar2 = rVarE2;
            rVar = rVarE;
            rVar3 = rVarE3;
            rVar4 = rVarE4;
            i11 = -1;
            i12 = 2;
            i13 = 1;
        }
        int i24 = this.f30309e;
        if (i24 != 5 && i24 != 7) {
            throw i.f29623I;
        }
        this.f30306b = i24 == 5;
        int i25 = i24 * 2;
        o[] oVarArrB3 = b(new o[]{new o(rVar.f4919H + 0.5f, rVar.f4920I - 0.5f), new o(rVar2.f4919H + 0.5f, rVar2.f4920I + 0.5f), new o(rVar3.f4919H - 0.5f, rVar3.f4920I + 0.5f), new o(rVar4.f4919H - 0.5f, rVar4.f4920I - 0.5f)}, i25 - 3, i25);
        if (z7) {
            o oVar9 = oVarArrB3[0];
            oVarArrB3[0] = oVarArrB3[2];
            oVarArrB3[2] = oVar9;
        }
        if (!g(oVarArrB3[0]) || !g(oVarArrB3[1]) || !g(oVarArrB3[2]) || !g(oVarArrB3[3])) {
            throw i.f29623I;
        }
        int i26 = this.f30309e * 2;
        int[] iArr = {h(oVarArrB3[0], oVarArrB3[1], i26), h(oVarArrB3[1], oVarArrB3[2], i26), h(oVarArrB3[2], oVarArrB3[3], i26), h(oVarArrB3[3], oVarArrB3[0], i26)};
        int i27 = 0;
        for (int i28 = 0; i28 < 4; i28++) {
            int i29 = iArr[i28];
            i27 = (i27 << 3) + ((i29 >> (i26 - 2)) << 1) + (i29 & 1);
        }
        int i30 = ((i27 & 1) << 11) + (i27 >> 1);
        int i31 = 0;
        while (true) {
            if (i31 >= 4) {
                throw i.f29623I;
            }
            if (Integer.bitCount(f30304g[i31] ^ i30) <= 2) {
                this.f30310f = i31;
                long j10 = 0;
                int i32 = 0;
                for (int i33 = 4; i32 < i33; i33 = 4) {
                    int i34 = iArr[(this.f30310f + i32) % i33];
                    if (this.f30306b) {
                        j8 = j10 << 7;
                        i10 = 1;
                        j9 = (i34 >> 1) & 127;
                    } else {
                        i10 = 1;
                        j8 = j10 << 10;
                        j9 = ((i34 >> 2) & 992) + ((i34 >> 1) & 31);
                    }
                    j10 = j8 + j9;
                    i32 += i10;
                }
                if (this.f30306b) {
                    i8 = 2;
                    i9 = 7;
                } else {
                    i8 = 4;
                    i9 = 10;
                }
                int i35 = i9 - i8;
                int[] iArr2 = new int[i9];
                for (int i36 = i9 - 1; i36 >= 0; i36--) {
                    iArr2[i36] = ((int) j10) & 15;
                    j10 >>= 4;
                }
                try {
                    new C0433o(p184x5.a.f31206k, 19).e(iArr2, i35);
                    int i37 = 0;
                    for (int i38 = 0; i38 < i8; i38++) {
                        i37 = (i37 << 4) + iArr2[i38];
                    }
                    if (this.f30306b) {
                        this.f30307c = (i37 >> 6) + 1;
                        this.f30308d = (i37 & 63) + 1;
                    } else {
                        this.f30307c = (i37 >> 11) + 1;
                        this.f30308d = (i37 & 2047) + 1;
                    }
                    int i39 = this.f30310f;
                    o oVar10 = oVarArrB3[i39 % 4];
                    o oVar11 = oVarArrB3[(i39 + 1) % 4];
                    o oVar12 = oVarArrB3[(i39 + 2) % 4];
                    o oVar13 = oVarArrB3[(i39 + 3) % 4];
                    int iD = d();
                    float f8 = iD / 2.0f;
                    float f9 = this.f30309e;
                    float f10 = f8 - f9;
                    float f11 = f8 + f9;
                    return new p138r5.a(c.k(bVar, iD, iD, F.a.c(f10, f10, f11, f10, f11, f11, f10, f11, oVar10.f29645a, oVar10.f29646b, oVar11.f29645a, oVar11.f29646b, oVar12.f29645a, oVar12.f29646b, oVar13.f29645a, oVar13.f29646b)), b(oVarArrB3, this.f30309e * 2, d()), this.f30306b, this.f30308d, this.f30307c);
                } catch (p184x5.c unused3) {
                    throw i.f29623I;
                }
            }
            i31++;
        }
    }

    public final int c(r rVar, r rVar2) {
        float fI = v.i(rVar.f4919H, rVar.f4920I, rVar2.f4919H, rVar2.f4920I);
        int i8 = rVar2.f4919H;
        int i9 = rVar.f4919H;
        float f8 = (i8 - i9) / fI;
        int i10 = rVar2.f4920I;
        int i11 = rVar.f4920I;
        float f9 = (i10 - i11) / fI;
        float f10 = i9;
        float f11 = i11;
        b bVar = this.f30305a;
        boolean zB = bVar.b(i9, i11);
        int iCeil = (int) Math.ceil(fI);
        int i12 = 0;
        for (int i13 = 0; i13 < iCeil; i13++) {
            f10 += f8;
            f11 += f9;
            if (bVar.b(v.s(f10), v.s(f11)) != zB) {
                i12++;
            }
        }
        float f12 = i12 / fI;
        if (f12 <= 0.1f || f12 >= 0.9f) {
            return (f12 <= 0.1f) == zB ? 1 : -1;
        }
        return 0;
    }

    public final int d() {
        if (this.f30306b) {
            return (this.f30307c * 4) + 11;
        }
        int i8 = this.f30307c;
        if (i8 <= 4) {
            return (i8 * 4) + 15;
        }
        return ((((i8 - 4) / 8) + 1) * 2) + (i8 * 4) + 15;
    }

    public final r e(r rVar, boolean z7, int i8, int i9) {
        b bVar;
        int i10 = rVar.f4919H + i8;
        int i11 = rVar.f4920I;
        while (true) {
            i11 += i9;
            boolean zF = f(i10, i11);
            bVar = this.f30305a;
            if (!zF || bVar.b(i10, i11) != z7) {
                break;
            }
            i10 += i8;
        }
        int i12 = i10 - i8;
        int i13 = i11 - i9;
        while (f(i12, i13) && bVar.b(i12, i13) == z7) {
            i12 += i8;
        }
        int i14 = i12 - i8;
        while (f(i14, i13) && bVar.b(i14, i13) == z7) {
            i13 += i9;
        }
        return new r(i14, i13 - i9, 11, 0);
    }

    public final boolean f(int i8, int i9) {
        if (i8 < 0) {
            return false;
        }
        b bVar = this.f30305a;
        return i8 < bVar.f31091G && i9 > 0 && i9 < bVar.f31092H;
    }

    public final boolean g(o oVar) {
        return f(v.s(oVar.f29645a), v.s(oVar.f29646b));
    }

    public final int h(o oVar, o oVar2, int i8) {
        float f8 = oVar.f29645a;
        float f9 = oVar2.f29645a;
        float f10 = oVar.f29646b;
        float f11 = oVar2.f29646b;
        float fH = v.h(f8, f10, f9, f11);
        float f12 = fH / i8;
        float f13 = oVar2.f29645a;
        float f14 = oVar.f29645a;
        float f15 = ((f13 - f14) * f12) / fH;
        float f16 = ((f11 - f10) * f12) / fH;
        int i9 = 0;
        for (int i10 = 0; i10 < i8; i10++) {
            float f17 = i10;
            if (this.f30305a.b(v.s((f17 * f15) + f14), v.s((f17 * f16) + f10))) {
                i9 |= 1 << ((i8 - i10) - 1);
            }
        }
        return i9;
    }
}
