package K5;

import L5.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p027d2.v;
import p096m2.l;
import p130q5.b;
import p130q5.e;
import p130q5.i;
import p130q5.k;
import p130q5.m;
import p130q5.n;
import p130q5.o;
import p130q5.p;
import p176w5.d;
import p198z5.c;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final o[] f4593b = new o[0];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f4594a = new c(2);

    @Override // p130q5.k
    public final m b(l lVar) {
        return c(lVar, null);
    }

    /* JADX WARN: Code duplicated, block: B:174:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:222:0x03e4  */
    /* JADX WARN: Code duplicated, block: B:223:0x03f3  */
    /* JADX WARN: Code duplicated, block: B:226:0x042f  */
    /* JADX WARN: Code duplicated, block: B:228:0x0440  */
    @Override // p130q5.k
    public final m c(l lVar, Map map) throws i, b, e {
        ArrayList arrayList;
        M5.c cVar;
        M5.c cVar2;
        M5.c cVar3;
        char c8;
        c cVar4;
        M5.a aVarY;
        float f8;
        float f9;
        float f10;
        float f11;
        o[] oVarArr;
        o[] oVarArr2;
        d dVarE;
        double d6;
        int i8;
        int i9;
        char c9;
        int iAbs;
        int i10;
        int i11;
        int i12;
        int i13;
        c cVar5 = this.f4594a;
        int i14 = 0;
        int i15 = 1;
        if (map == null || !map.containsKey(p130q5.c.f29597H)) {
            p096m2.e eVar = new p096m2.e(lVar.i(), 25);
            p pVar = map == null ? null : (p) map.get(p130q5.c.f29605P);
            eVar.f27216I = pVar;
            p176w5.b bVar = (p176w5.b) eVar.f27215H;
            M5.e eVar2 = new M5.e(bVar, pVar);
            boolean z7 = map != null && map.containsKey(p130q5.c.f29599J);
            int i16 = bVar.f31092H;
            int i17 = (i16 * 3) / 388;
            if (i17 < 3 || z7) {
                i17 = 3;
            }
            int[] iArr = new int[5];
            int i18 = i17 - 1;
            boolean zD = false;
            while (true) {
                arrayList = eVar2.f4826b;
                if (i18 >= i16 || zD) {
                    break;
                }
                Arrays.fill(iArr, i14);
                int i19 = 0;
                while (true) {
                    i8 = bVar.f31091G;
                    if (i14 >= i8) {
                        break;
                    }
                    if (bVar.b(i14, i18)) {
                        if ((i19 & 1) == i15) {
                            i19 += i15;
                        }
                        iArr[i19] = iArr[i19] + i15;
                        i9 = 1;
                    } else if ((i19 & 1) != 0) {
                        i9 = 1;
                        iArr[i19] = iArr[i19] + 1;
                    } else if (i19 != 4) {
                        i9 = 1;
                        int i20 = i19 + 1;
                        iArr[i20] = iArr[i20] + 1;
                        i19 = i20;
                    } else if (M5.e.b(iArr) && eVar2.c(i18, i14, iArr)) {
                        if (eVar2.f4827c) {
                            zD = eVar2.d();
                            i10 = 0;
                            i9 = 1;
                        } else {
                            if (arrayList.size() > 1) {
                                Iterator it = arrayList.iterator();
                                M5.c cVar6 = null;
                                while (true) {
                                    if (!it.hasNext()) {
                                        c9 = 2;
                                        iAbs = 0;
                                        break;
                                    }
                                    M5.c cVar7 = (M5.c) it.next();
                                    Iterator it2 = it;
                                    if (cVar7.f4823d >= 2) {
                                        if (cVar6 != null) {
                                            eVar2.f4827c = true;
                                            c9 = 2;
                                            iAbs = ((int) (Math.abs(cVar6.f29645a - cVar7.f29645a) - Math.abs(cVar6.f29646b - cVar7.f29646b))) / 2;
                                            break;
                                        }
                                        cVar6 = cVar7;
                                    }
                                    it = it2;
                                }
                            } else {
                                iAbs = 0;
                                c9 = 2;
                            }
                            int i21 = iArr[c9];
                            if (iAbs > i21) {
                                i18 += (iAbs - i21) - 2;
                                i9 = 1;
                                i14 = i8 - 1;
                            } else {
                                i9 = 1;
                            }
                            i10 = 0;
                        }
                        Arrays.fill(iArr, i10);
                        i19 = 0;
                        i17 = 2;
                    } else {
                        i9 = 1;
                        iArr[0] = iArr[2];
                        iArr[1] = iArr[3];
                        iArr[2] = iArr[4];
                        iArr[3] = 1;
                        iArr[4] = 0;
                        i19 = 3;
                    }
                    i14 += i9;
                    i15 = 1;
                }
                if (M5.e.b(iArr) && eVar2.c(i18, i8, iArr)) {
                    int i22 = iArr[0];
                    if (eVar2.f4827c) {
                        zD = eVar2.d();
                    }
                    i17 = i22;
                }
                i18 += i17;
                i14 = 0;
                i15 = 1;
            }
            if (arrayList.size() < 3) {
                throw i.f29623I;
            }
            arrayList.sort(M5.e.f4824f);
            M5.c[] cVarArr = new M5.c[3];
            int i23 = 0;
            double d8 = Double.MAX_VALUE;
            while (i23 < arrayList.size() - 2) {
                M5.c cVar8 = (M5.c) arrayList.get(i23);
                float f12 = cVar8.f4822c;
                i23++;
                int i24 = i23;
                for (int i25 = 1; i24 < arrayList.size() - i25; i25 = 1) {
                    M5.c cVar9 = (M5.c) arrayList.get(i24);
                    double dE = M5.e.e(cVar8, cVar9);
                    i24 += i25;
                    for (int i26 = i24; i26 < arrayList.size(); i26++) {
                        M5.c cVar10 = (M5.c) arrayList.get(i26);
                        if (cVar10.f4822c <= 1.4f * f12) {
                            double dE2 = M5.e.e(cVar9, cVar10);
                            double dE3 = M5.e.e(cVar8, cVar10);
                            if (dE >= dE2) {
                                if (dE2 >= dE3) {
                                    d6 = dE3;
                                    dE3 = dE2;
                                } else if (dE < dE3) {
                                    d6 = dE2;
                                    dE2 = dE3;
                                    dE3 = dE;
                                } else {
                                    d6 = dE2;
                                }
                                dE2 = dE;
                            } else if (dE2 <= dE3) {
                                d6 = dE;
                                dE2 = dE3;
                                dE3 = dE2;
                            } else if (dE < dE3) {
                                d6 = dE;
                            } else {
                                d6 = dE3;
                                dE3 = dE;
                            }
                            double dAbs = Math.abs(dE2 - (d6 * 2.0d)) + Math.abs(dE2 - (dE3 * 2.0d));
                            if (dAbs < d8) {
                                cVarArr[0] = cVar8;
                                cVarArr[1] = cVar9;
                                cVarArr[2] = cVar10;
                                d8 = dAbs;
                            }
                        }
                    }
                }
            }
            if (d8 == Double.MAX_VALUE) {
                throw i.f29623I;
            }
            float fA = o.a(cVarArr[0], cVarArr[1]);
            float fA2 = o.a(cVarArr[1], cVarArr[2]);
            float fA3 = o.a(cVarArr[0], cVarArr[2]);
            if (fA2 >= fA && fA2 >= fA3) {
                cVar = cVarArr[0];
                cVar2 = cVarArr[1];
                cVar3 = cVarArr[2];
            } else if (fA3 < fA2 || fA3 < fA) {
                cVar = cVarArr[2];
                cVar2 = cVarArr[0];
                cVar3 = cVarArr[1];
            } else {
                cVar = cVarArr[1];
                cVar2 = cVarArr[0];
                cVar3 = cVarArr[2];
            }
            float f13 = cVar.f29645a;
            float f14 = cVar3.f29645a - f13;
            float f15 = cVar2.f29646b;
            float f16 = cVar.f29646b;
            if (((f15 - f16) * f14) - ((cVar2.f29645a - f13) * (cVar3.f29646b - f16)) < 0.0f) {
                c8 = 0;
                M5.c cVar11 = cVar3;
                cVar3 = cVar2;
                cVar2 = cVar11;
            } else {
                c8 = 0;
            }
            cVarArr[c8] = cVar2;
            cVarArr[1] = cVar;
            cVarArr[2] = cVar3;
            float fH = (eVar.h(cVar, cVar2) + eVar.h(cVar, cVar3)) / 2.0f;
            if (fH < 1.0f) {
                throw i.f29623I;
            }
            int iS = (v.s(o.a(cVar, cVar2) / fH) + v.s(o.a(cVar, cVar3) / fH)) / 2;
            int i27 = iS + 7;
            int i28 = i27 & 3;
            if (i28 == 0) {
                i27 = iS + 8;
            } else if (i28 == 2) {
                i27 = iS + 6;
            } else if (i28 == 3) {
                throw i.f29623I;
            }
            int[] iArr2 = f.f4724e;
            if (i27 % 4 != 1) {
                throw e.a();
            }
            try {
                f fVarC = f.c((i27 - 17) / 4);
                int i29 = (fVarC.f4726a * 4) + 10;
                int length = fVarC.f4727b.length;
                float f17 = cVar.f29645a;
                float f18 = cVar3.f29646b;
                float f19 = cVar3.f29645a;
                float f20 = cVar2.f29646b;
                float f21 = cVar2.f29645a;
                if (length > 0) {
                    float f22 = 1.0f - (3.0f / i29);
                    int i30 = (int) (((((f19 - f17) + f21) - f17) * f22) + f17);
                    int i31 = (int) (((((f18 - f16) + f20) - f16) * f22) + f16);
                    cVar4 = cVar5;
                    int i32 = 4;
                    while (true) {
                        if (i32 <= 16) {
                            try {
                                aVarY = eVar.y(fH, i32, i30, i31);
                                break;
                            } catch (i unused) {
                                i32 <<= 1;
                            }
                        }
                    }
                    f8 = i27 - 3.5f;
                    if (aVarY != null) {
                        f11 = f8 - 3.0f;
                        f10 = aVarY.f29645a;
                        f9 = aVarY.f29646b;
                    } else {
                        f9 = (f18 - f16) + f20;
                        f10 = (f19 - f17) + f21;
                        f11 = f8;
                    }
                    p176w5.b bVarK = p102n0.c.k((p176w5.b) eVar.f27215H, i27, i27, F.a.c(3.5f, 3.5f, f8, 3.5f, f11, f11, 3.5f, f8, cVar.f29645a, cVar.f29646b, cVar3.f29645a, cVar3.f29646b, f10, f9, cVar2.f29645a, cVar2.f29646b));
                    if (aVarY == null) {
                        oVarArr = new o[]{cVar2, cVar, cVar3};
                    } else {
                        oVarArr = new o[]{cVar2, cVar, cVar3, aVarY};
                    }
                    d dVarE2 = cVar4.e(bVarK, map);
                    oVarArr2 = oVarArr;
                    dVarE = dVarE2;
                } else {
                    cVar4 = cVar5;
                }
                aVarY = null;
                f8 = i27 - 3.5f;
                if (aVarY != null) {
                    f11 = f8 - 3.0f;
                    f10 = aVarY.f29645a;
                    f9 = aVarY.f29646b;
                } else {
                    f9 = (f18 - f16) + f20;
                    f10 = (f19 - f17) + f21;
                    f11 = f8;
                }
                p176w5.b bVarK2 = p102n0.c.k((p176w5.b) eVar.f27215H, i27, i27, F.a.c(3.5f, 3.5f, f8, 3.5f, f11, f11, 3.5f, f8, cVar.f29645a, cVar.f29646b, cVar3.f29645a, cVar3.f29646b, f10, f9, cVar2.f29645a, cVar2.f29646b));
                if (aVarY == null) {
                    oVarArr = new o[]{cVar2, cVar, cVar3};
                } else {
                    oVarArr = new o[]{cVar2, cVar, cVar3, aVarY};
                }
                d dVarE3 = cVar4.e(bVarK2, map);
                oVarArr2 = oVarArr;
                dVarE = dVarE3;
            } catch (IllegalArgumentException unused2) {
                throw e.a();
            }
        } else {
            p176w5.b bVarI = lVar.i();
            int[] iArrE = bVarI.e();
            int[] iArrC = bVarI.c();
            if (iArrE == null || iArrC == null) {
                throw i.f29623I;
            }
            int i33 = iArrE[0];
            int i34 = iArrE[1];
            boolean z8 = true;
            int i35 = 0;
            while (true) {
                i12 = bVarI.f31091G;
                i13 = bVarI.f31092H;
                if (i33 >= i12 || i34 >= i13) {
                    break;
                }
                if (z8 != bVarI.b(i33, i34)) {
                    i35++;
                    if (i35 == 5) {
                        break;
                    }
                    z8 = !z8;
                }
                i33++;
                i34++;
            }
            if (i33 == i12 || i34 == i13) {
                throw i.f29623I;
            }
            int i36 = iArrE[0];
            float f23 = (i33 - i36) / 7.0f;
            int i37 = iArrE[1];
            int i38 = iArrC[1];
            int i39 = iArrC[0];
            if (i36 >= i39 || i37 >= i38) {
                throw i.f29623I;
            }
            int i40 = i38 - i37;
            if (i40 != i39 - i36 && (i39 = i36 + i40) >= i12) {
                throw i.f29623I;
            }
            int iRound = Math.round(((i39 - i36) + 1) / f23);
            int iRound2 = Math.round((i40 + 1) / f23);
            if (iRound <= 0 || iRound2 <= 0) {
                throw i.f29623I;
            }
            if (iRound2 != iRound) {
                throw i.f29623I;
            }
            int i41 = (int) (f23 / 2.0f);
            int i42 = i37 + i41;
            int i43 = i36 + i41;
            int i44 = (((int) ((iRound - 1) * f23)) + i43) - i39;
            if (i44 > 0) {
                if (i44 > i41) {
                    throw i.f29623I;
                }
                i43 -= i44;
            }
            int i45 = (((int) ((iRound2 - 1) * f23)) + i42) - i38;
            if (i45 > 0) {
                if (i45 > i41) {
                    throw i.f29623I;
                }
                i42 -= i45;
            }
            p176w5.b bVar2 = new p176w5.b(iRound, iRound2);
            for (int i46 = 0; i46 < iRound2; i46++) {
                int i47 = ((int) (i46 * f23)) + i42;
                for (int i48 = 0; i48 < iRound; i48++) {
                    if (bVarI.b(((int) (i48 * f23)) + i43, i47)) {
                        bVar2.f(i48, i46);
                    }
                }
            }
            dVarE = cVar5.e(bVar2, map);
            oVarArr2 = f4593b;
        }
        Object obj = dVarE.f31104e;
        if (obj instanceof L5.e) {
            ((L5.e) obj).getClass();
            if (oVarArr2.length >= 3) {
                o oVar = oVarArr2[0];
                oVarArr2[0] = oVarArr2[2];
                oVarArr2[2] = oVar;
            }
        }
        m mVar = new m(dVarE.f31101b, dVarE.f31100a, oVarArr2, p130q5.a.f29589R);
        List list = dVarE.f31102c;
        if (list != null) {
            mVar.b(n.f29635H, list);
        }
        String str = dVarE.f31103d;
        if (str != null) {
            mVar.b(n.f29636I, str);
        }
        int i49 = dVarE.f31105f;
        if (i49 >= 0 && (i11 = dVarE.f31106g) >= 0) {
            mVar.b(n.f29642O, Integer.valueOf(i11));
            mVar.b(n.f29643P, Integer.valueOf(i49));
        }
        return mVar;
    }

    @Override // p130q5.k
    public final void a() {
    }
}
