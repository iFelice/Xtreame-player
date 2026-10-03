package G5;

import B0.w0;
import H5.f;
import W0.C0371d;
import Z3.C0433o;
import com.google.android.gms.common.api.d;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import p096m2.l;
import p130q5.e;
import p130q5.i;
import p130q5.k;
import p130q5.m;
import p130q5.n;
import p130q5.o;

/* JADX INFO: loaded from: classes2.dex */
public final class b implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final m[] f3412a = new m[0];

    public static int d(o oVar, o oVar2) {
        if (oVar == null || oVar2 == null) {
            return 0;
        }
        return (int) Math.abs(oVar.f29645a - oVar2.f29645a);
    }

    public static int e(o oVar, o oVar2) {
        return (oVar == null || oVar2 == null) ? d.API_PRIORITY_OTHER : (int) Math.abs(oVar.f29645a - oVar2.f29645a);
    }

    @Override // p130q5.k
    public final m b(l lVar) {
        return c(lVar, null);
    }

    /* JADX WARN: Code duplicated, block: B:129:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:132:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:135:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:136:0x0311  */
    /* JADX WARN: Code duplicated, block: B:137:0x0316  */
    /* JADX WARN: Code duplicated, block: B:35:0x0156  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // p130q5.k
    public final m c(l lVar, Map map) throws i, p130q5.b, e {
        m mVar;
        H5.d dVar;
        C0371d c0371dI;
        C0371d c0371dI2;
        H5.b bVar;
        int i8;
        int i9;
        int i10;
        int i11;
        p176w5.d dVarB;
        int i12;
        x0 x0Var;
        C0371d c0371d;
        Iterator it;
        int i13;
        int i14;
        H5.b bVar2;
        int i15;
        int i16;
        C0371d c0371d2;
        x0 x0Var2;
        int i17;
        int i18;
        int i19;
        H5.b bVar3;
        int i20;
        int i21;
        x0 x0Var3;
        int i22;
        int i23;
        int iMin;
        C0371d c0371dC;
        ArrayList arrayList = new ArrayList();
        p176w5.b bVarI = lVar.i();
        ArrayList arrayListA = J5.a.a(bVarI);
        char c8 = 2;
        char c9 = 0;
        int i24 = 1;
        if (arrayListA.isEmpty()) {
            int[] iArr = (int[]) bVarI.f31094J.clone();
            int i25 = bVarI.f31093I;
            int i26 = bVarI.f31091G;
            int i27 = bVarI.f31092H;
            p176w5.b bVar4 = new p176w5.b(i26, i27, i25, iArr);
            p176w5.a aVar = new p176w5.a(i26);
            p176w5.a aVar2 = new p176w5.a(i26);
            int i28 = (i27 + 1) / 2;
            for (int i29 = 0; i29 < i28; i29++) {
                aVar = bVar4.d(i29, aVar);
                int i30 = (i27 - 1) - i29;
                aVar2 = bVar4.d(i30, aVar2);
                aVar.i();
                aVar2.i();
                int[] iArr2 = aVar2.f31089G;
                int i31 = bVar4.f31093I;
                int[] iArr3 = bVar4.f31094J;
                System.arraycopy(iArr2, 0, iArr3, i29 * i31, i31);
                System.arraycopy(aVar.f31089G, 0, iArr3, i30 * i31, i31);
            }
            arrayListA = J5.a.a(bVar4);
            bVarI = bVar4;
        }
        Iterator it2 = arrayListA.iterator();
        while (it2.hasNext()) {
            o[] oVarArr = (o[]) it2.next();
            o oVar = oVarArr[4];
            o oVar2 = oVarArr[5];
            o oVar3 = oVarArr[6];
            o oVar4 = oVarArr[7];
            int iMin2 = Math.min(Math.min(e(oVarArr[c9], oVar), (e(oVarArr[6], oVarArr[c8]) * 17) / 18), Math.min(e(oVarArr[i24], oVarArr[5]), (e(oVarArr[7], oVarArr[3]) * 17) / 18));
            int iMax = Math.max(Math.max(d(oVarArr[c9], oVarArr[4]), (d(oVarArr[6], oVarArr[c8]) * 17) / 18), Math.max(d(oVarArr[i24], oVarArr[5]), (d(oVarArr[7], oVarArr[3]) * 17) / 18));
            C0433o c0433o = f.f3780a;
            H5.b bVar5 = new H5.b(bVarI, oVar, oVar2, oVar3, oVar4);
            w0 w0Var = null;
            H5.d dVarD = null;
            H5.b bVar6 = bVar5;
            boolean z7 = true;
            H5.d dVarD2 = null;
            while (true) {
                if (oVar != null) {
                    dVarD = f.d(bVarI, bVar6, oVar, true, iMin2, iMax);
                }
                dVar = dVarD;
                if (oVar3 != null) {
                    dVarD2 = f.d(bVarI, bVar6, oVar3, false, iMin2, iMax);
                }
                if (dVar != null || dVarD2 != null) {
                    if (dVar == null || (c0371dI2 = dVar.I()) == null) {
                        if (dVarD2 == null) {
                            c0371dI = c0371dI2;
                            c0371dI = c0371dI2;
                            c0371dI = c0371dI2;
                            c0371dI = w0Var;
                        } else {
                            c0371dI = dVarD2.I();
                        }
                    } else if (dVarD2 != null) {
                        C0371d c0371dI3 = dVarD2.I();
                        c0371dI = c0371dI2;
                        if (c0371dI3 != null && c0371dI2.f7388b != c0371dI3.f7388b && c0371dI2.f7389c != c0371dI3.f7389c && c0371dI2.f7392f != c0371dI3.f7392f) {
                            c0371dI = c0371dI2;
                            c0371dI = c0371dI2;
                            c0371dI = c0371dI2;
                            c0371dI = w0Var;
                        }
                    }
                    if (c0371dI != 0) {
                        H5.b bVarA = f.a(dVar);
                        H5.b bVarA2 = f.a(dVarD2);
                        if (bVarA == null) {
                            bVarA = bVarA2;
                        } else if (bVarA2 != null) {
                            bVarA = new H5.b(bVarA.f3766a, bVarA.f3767b, bVarA.f3768c, bVarA2.f3769d, bVarA2.f3770e);
                        }
                        w0Var = new w0(c0371dI, bVarA);
                    }
                }
                if (w0Var == null) {
                    throw i.f29623I;
                }
                bVar6 = (H5.b) w0Var.f1123K;
                bVar = bVar6;
                i8 = bVar.f3774i;
                i9 = bVar.f3773h;
                if (!z7 || bVar6 == null || (bVar6.f3773h >= i9 && bVar6.f3774i <= i8)) {
                    break;
                }
                dVarD = dVar;
                w0Var = null;
                z7 = false;
            }
            w0Var.f1123K = bVar;
            int i32 = w0Var.f1120H + 1;
            Object obj = w0Var.f1122J;
            ((x0[]) obj)[c9] = dVar;
            ((x0[]) obj)[i32] = dVarD2;
            boolean z8 = dVar != null;
            int i33 = 1;
            while (i33 <= i32) {
                int i34 = z8 ? i33 : i32 - i33;
                if (((x0[]) w0Var.f1122J)[i34] == null) {
                    x0 dVar2 = (i34 == 0 || i34 == i32) ? new H5.d(bVar, i34 == 0) : new x0(bVar);
                    ((x0[]) w0Var.f1122J)[i34] = dVar2;
                    int i35 = i9;
                    int i36 = iMin2;
                    int iMax2 = iMax;
                    int i37 = -1;
                    while (i35 <= i8) {
                        int i38 = z8 ? 1 : -1;
                        int i39 = i34 - i38;
                        Iterator it3 = it2;
                        if (i39 < 0 || i39 > w0Var.f1120H + i24) {
                            c0371d2 = null;
                        } else {
                            x0 x0Var4 = ((x0[]) w0Var.f1122J)[i39];
                            c0371d2 = ((C0371d[]) x0Var4.f22391I)[x0Var4.p(i35)];
                        }
                        if (c0371d2 != null) {
                            i17 = z8 ? c0371d2.f7389c : c0371d2.f7388b;
                        } else {
                            C0371d c0371dN = ((x0[]) w0Var.f1122J)[i34].n(i35);
                            if (c0371dN != null) {
                                i17 = z8 ? c0371dN.f7388b : c0371dN.f7389c;
                            } else {
                                if (i39 >= 0 && i39 <= w0Var.f1120H + 1) {
                                    c0371dN = ((x0[]) w0Var.f1122J)[i39].n(i35);
                                }
                                if (c0371dN != null) {
                                    i17 = z8 ? c0371dN.f7389c : c0371dN.f7388b;
                                } else {
                                    int i40 = i34;
                                    int i41 = 0;
                                    while (true) {
                                        int i42 = i40 - i38;
                                        if (i42 < 0 || i42 > w0Var.f1120H + 1) {
                                            x0Var2 = dVar2;
                                            if (!z8) {
                                                i17 = ((H5.b) w0Var.f1123K).f3772g;
                                                break;
                                            }
                                            i17 = ((H5.b) w0Var.f1123K).f3771f;
                                            break;
                                        }
                                        C0371d[] c0371dArr = (C0371d[]) ((x0[]) w0Var.f1122J)[i42].f22391I;
                                        int length = c0371dArr.length;
                                        x0Var2 = dVar2;
                                        int i43 = 0;
                                        while (i43 < length) {
                                            int i44 = length;
                                            C0371d c0371d3 = c0371dArr[i43];
                                            if (c0371d3 != null) {
                                                i17 = ((c0371d3.f7389c - c0371d3.f7388b) * i38 * i41) + (z8 ? c0371d3.f7389c : c0371d3.f7388b);
                                                break;
                                            }
                                            i43++;
                                            length = i44;
                                        }
                                        i41++;
                                        i40 = i42;
                                        dVar2 = x0Var2;
                                    }
                                }
                                if (i17 >= 0 || i17 > bVar.f3772g) {
                                    if (i37 != -1) {
                                        i23 = i37;
                                    } else {
                                        i18 = i9;
                                        i19 = i34;
                                        bVar3 = bVar;
                                        i20 = i33;
                                        i21 = i32;
                                        x0Var3 = x0Var2;
                                        i22 = i8;
                                    }
                                    i23 = i37;
                                    iMax2 = iMax2;
                                    iMin = i36;
                                    i35++;
                                    dVar2 = x0Var3;
                                    i36 = iMin;
                                    i37 = i23;
                                    i34 = i19;
                                    it2 = it3;
                                    i9 = i18;
                                    i8 = i22;
                                    bVar = bVar3;
                                    i33 = i20;
                                    i32 = i21;
                                    i24 = 1;
                                } else {
                                    i23 = i17;
                                }
                                x0Var3 = x0Var2;
                                i18 = i9;
                                i22 = i8;
                                i19 = i34;
                                bVar3 = bVar;
                                i20 = i33;
                                i21 = i32;
                                c0371dC = f.c(bVarI, bVar.f3771f, bVar.f3772g, z8, i23, i35, i36, iMax2);
                                if (c0371dC != null) {
                                    ((C0371d[]) x0Var3.f22391I)[x0Var3.p(i35)] = c0371dC;
                                    iMin = Math.min(i36, c0371dC.f7389c - c0371dC.f7388b);
                                    iMax2 = Math.max(iMax2, c0371dC.f7389c - c0371dC.f7388b);
                                } else {
                                    i23 = i37;
                                    iMax2 = iMax2;
                                    iMin = i36;
                                }
                                i35++;
                                dVar2 = x0Var3;
                                i36 = iMin;
                                i37 = i23;
                                i34 = i19;
                                it2 = it3;
                                i9 = i18;
                                i8 = i22;
                                bVar = bVar3;
                                i33 = i20;
                                i32 = i21;
                                i24 = 1;
                            }
                        }
                        x0Var2 = dVar2;
                        if (i17 >= 0) {
                            if (i37 != -1) {
                                i23 = i37;
                                x0Var3 = x0Var2;
                                i18 = i9;
                                i22 = i8;
                                i19 = i34;
                                bVar3 = bVar;
                                i20 = i33;
                                i21 = i32;
                                c0371dC = f.c(bVarI, bVar.f3771f, bVar.f3772g, z8, i23, i35, i36, iMax2);
                                if (c0371dC != null) {
                                    ((C0371d[]) x0Var3.f22391I)[x0Var3.p(i35)] = c0371dC;
                                    iMin = Math.min(i36, c0371dC.f7389c - c0371dC.f7388b);
                                    iMax2 = Math.max(iMax2, c0371dC.f7389c - c0371dC.f7388b);
                                }
                                i35++;
                                dVar2 = x0Var3;
                                i36 = iMin;
                                i37 = i23;
                                i34 = i19;
                                it2 = it3;
                                i9 = i18;
                                i8 = i22;
                                bVar = bVar3;
                                i33 = i20;
                                i32 = i21;
                                i24 = 1;
                            } else {
                                i18 = i9;
                                i19 = i34;
                                bVar3 = bVar;
                                i20 = i33;
                                i21 = i32;
                                x0Var3 = x0Var2;
                                i22 = i8;
                            }
                        } else if (i37 != -1) {
                            i23 = i37;
                            x0Var3 = x0Var2;
                            i18 = i9;
                            i22 = i8;
                            i19 = i34;
                            bVar3 = bVar;
                            i20 = i33;
                            i21 = i32;
                            c0371dC = f.c(bVarI, bVar.f3771f, bVar.f3772g, z8, i23, i35, i36, iMax2);
                            if (c0371dC != null) {
                                ((C0371d[]) x0Var3.f22391I)[x0Var3.p(i35)] = c0371dC;
                                iMin = Math.min(i36, c0371dC.f7389c - c0371dC.f7388b);
                                iMax2 = Math.max(iMax2, c0371dC.f7389c - c0371dC.f7388b);
                            }
                            i35++;
                            dVar2 = x0Var3;
                            i36 = iMin;
                            i37 = i23;
                            i34 = i19;
                            it2 = it3;
                            i9 = i18;
                            i8 = i22;
                            bVar = bVar3;
                            i33 = i20;
                            i32 = i21;
                            i24 = 1;
                        } else {
                            i18 = i9;
                            i19 = i34;
                            bVar3 = bVar;
                            i20 = i33;
                            i21 = i32;
                            x0Var3 = x0Var2;
                            i22 = i8;
                        }
                        i23 = i37;
                        iMax2 = iMax2;
                        iMin = i36;
                        i35++;
                        dVar2 = x0Var3;
                        i36 = iMin;
                        i37 = i23;
                        i34 = i19;
                        it2 = it3;
                        i9 = i18;
                        i8 = i22;
                        bVar = bVar3;
                        i33 = i20;
                        i32 = i21;
                        i24 = 1;
                    }
                    it = it2;
                    i13 = i9;
                    i14 = i8;
                    bVar2 = bVar;
                    i15 = i33;
                    i16 = i32;
                    iMax = iMax2;
                    iMin2 = i36;
                } else {
                    it = it2;
                    i13 = i9;
                    i14 = i8;
                    bVar2 = bVar;
                    i15 = i33;
                    i16 = i32;
                }
                i33 = i15 + 1;
                it2 = it;
                i9 = i13;
                i8 = i14;
                bVar = bVar2;
                i32 = i16;
                i24 = 1;
            }
            Iterator it4 = it2;
            H5.a[][] aVarArr = (H5.a[][]) Array.newInstance((Class<?>) H5.a.class, ((C0371d) w0Var.f1121I).f7392f, w0Var.f1120H + 2);
            for (H5.a[] aVarArr2 : aVarArr) {
                int i45 = 0;
                while (true) {
                    if (i45 < aVarArr2.length) {
                        aVarArr2[i45] = new H5.a();
                        i45++;
                    }
                }
            }
            w0Var.b(((x0[]) w0Var.f1122J)[0]);
            int i46 = 1;
            w0Var.b(((x0[]) w0Var.f1122J)[w0Var.f1120H + 1]);
            int i47 = 928;
            while (true) {
                x0[] x0VarArr = (x0[]) w0Var.f1122J;
                x0 x0Var5 = x0VarArr[0];
                if (x0Var5 != null && (x0Var = x0VarArr[w0Var.f1120H + i46]) != null) {
                    C0371d[] c0371dArr2 = (C0371d[]) x0Var5.f22391I;
                    C0371d[] c0371dArr3 = (C0371d[]) x0Var.f22391I;
                    for (int i48 = 0; i48 < c0371dArr2.length; i48++) {
                        C0371d c0371d4 = c0371dArr2[i48];
                        if (c0371d4 != null && (c0371d = c0371dArr3[i48]) != null && c0371d4.f7392f == c0371d.f7392f) {
                            for (int i49 = 1; i49 <= w0Var.f1120H; i49++) {
                                C0371d c0371d5 = ((C0371d[]) ((x0[]) w0Var.f1122J)[i49].f22391I)[i48];
                                if (c0371d5 != null) {
                                    int i50 = c0371dArr2[i48].f7392f;
                                    c0371d5.f7392f = i50;
                                    if (!c0371d5.b(i50)) {
                                        ((C0371d[]) ((x0[]) w0Var.f1122J)[i49].f22391I)[i48] = null;
                                    }
                                }
                            }
                        }
                    }
                }
                x0 x0Var6 = ((x0[]) w0Var.f1122J)[0];
                if (x0Var6 == null) {
                    i10 = 0;
                } else {
                    C0371d[] c0371dArr4 = (C0371d[]) x0Var6.f22391I;
                    i10 = 0;
                    for (int i51 = 0; i51 < c0371dArr4.length; i51++) {
                        C0371d c0371d6 = c0371dArr4[i51];
                        if (c0371d6 != null) {
                            int i52 = c0371d6.f7392f;
                            int i53 = 0;
                            for (int i54 = 1; i54 < w0Var.f1120H + 1 && i53 < 2; i54++) {
                                C0371d c0371d7 = ((C0371d[]) ((x0[]) w0Var.f1122J)[i54].f22391I)[i51];
                                if (c0371d7 != null) {
                                    if (!c0371d7.b(c0371d7.f7392f)) {
                                        if (c0371d7.b(i52)) {
                                            c0371d7.f7392f = i52;
                                            i53 = 0;
                                        } else {
                                            i53++;
                                        }
                                    }
                                    if (!c0371d7.b(c0371d7.f7392f)) {
                                        i10++;
                                    }
                                }
                            }
                        }
                    }
                }
                x0 x0Var7 = ((x0[]) w0Var.f1122J)[w0Var.f1120H + 1];
                if (x0Var7 == null) {
                    i11 = 0;
                } else {
                    C0371d[] c0371dArr5 = (C0371d[]) x0Var7.f22391I;
                    i11 = 0;
                    for (int i55 = 0; i55 < c0371dArr5.length; i55++) {
                        C0371d c0371d8 = c0371dArr5[i55];
                        if (c0371d8 != null) {
                            int i56 = c0371d8.f7392f;
                            int i57 = 0;
                            for (int i58 = w0Var.f1120H + 1; i58 > 0 && i57 < 2; i58--) {
                                C0371d c0371d9 = ((C0371d[]) ((x0[]) w0Var.f1122J)[i58].f22391I)[i55];
                                if (c0371d9 != null) {
                                    if (!c0371d9.b(c0371d9.f7392f)) {
                                        if (c0371d9.b(i56)) {
                                            c0371d9.f7392f = i56;
                                            i57 = 0;
                                        } else {
                                            i57++;
                                        }
                                    }
                                    if (!c0371d9.b(c0371d9.f7392f)) {
                                        i11++;
                                    }
                                }
                            }
                        }
                    }
                }
                int i59 = i10 + i11;
                if (i59 == 0) {
                    i59 = 0;
                } else {
                    for (int i60 = 1; i60 < w0Var.f1120H + 1; i60++) {
                        C0371d[] c0371dArr6 = (C0371d[]) ((x0[]) w0Var.f1122J)[i60].f22391I;
                        for (int i61 = 0; i61 < c0371dArr6.length; i61++) {
                            C0371d c0371d10 = c0371dArr6[i61];
                            if (c0371d10 != null && !c0371d10.b(c0371d10.f7392f)) {
                                C0371d c0371d11 = c0371dArr6[i61];
                                x0[] x0VarArr2 = (x0[]) w0Var.f1122J;
                                C0371d[] c0371dArr7 = (C0371d[]) x0VarArr2[i60 - 1].f22391I;
                                x0 x0Var8 = x0VarArr2[i60 + 1];
                                C0371d[] c0371dArr8 = x0Var8 != null ? (C0371d[]) x0Var8.f22391I : c0371dArr7;
                                C0371d[] c0371dArr9 = new C0371d[14];
                                c0371dArr9[2] = c0371dArr7[i61];
                                c0371dArr9[3] = c0371dArr8[i61];
                                if (i61 > 0) {
                                    int i62 = i61 - 1;
                                    c0371dArr9[0] = c0371dArr6[i62];
                                    c0371dArr9[4] = c0371dArr7[i62];
                                    c0371dArr9[5] = c0371dArr8[i62];
                                }
                                if (i61 > 1) {
                                    int i63 = i61 - 2;
                                    c0371dArr9[8] = c0371dArr6[i63];
                                    c0371dArr9[10] = c0371dArr7[i63];
                                    c0371dArr9[11] = c0371dArr8[i63];
                                }
                                if (i61 < c0371dArr6.length - 1) {
                                    int i64 = i61 + 1;
                                    c0371dArr9[1] = c0371dArr6[i64];
                                    c0371dArr9[6] = c0371dArr7[i64];
                                    c0371dArr9[7] = c0371dArr8[i64];
                                }
                                if (i61 < c0371dArr6.length - 2) {
                                    int i65 = i61 + 2;
                                    c0371dArr9[9] = c0371dArr6[i65];
                                    c0371dArr9[12] = c0371dArr7[i65];
                                    c0371dArr9[13] = c0371dArr8[i65];
                                }
                                int i66 = 0;
                                for (int i67 = 14; i66 < i67; i67 = 14) {
                                    C0371d c0371d12 = c0371dArr9[i66];
                                    if (c0371d12 != null && c0371d12.b(c0371d12.f7392f) && c0371d12.f7390d == c0371d11.f7390d) {
                                        c0371d11.f7392f = c0371d12.f7392f;
                                        break;
                                    }
                                    i66++;
                                }
                            }
                        }
                    }
                }
                if (i59 <= 0 || i59 >= i47) {
                    break;
                }
                i47 = i59;
                i46 = 1;
            }
            int i68 = 0;
            for (x0 x0Var9 : (x0[]) w0Var.f1122J) {
                if (x0Var9 != null) {
                    for (C0371d c0371d13 : (C0371d[]) x0Var9.f22391I) {
                        if (c0371d13 != null && (i12 = c0371d13.f7392f) >= 0 && i12 < aVarArr.length) {
                            aVarArr[i12][i68].b(c0371d13.f7391e);
                        }
                    }
                }
                i68++;
            }
            H5.a aVar3 = aVarArr[0][1];
            int[] iArrA = aVar3.a();
            int i69 = w0Var.f1120H;
            Object obj2 = w0Var.f1121I;
            int i70 = (((C0371d) obj2).f7392f * i69) - (2 << ((C0371d) obj2).f7389c);
            if (iArrA.length == 0) {
                if (i70 <= 0 || i70 > 928) {
                    throw i.f29623I;
                }
                aVar3.b(i70);
            } else if (iArrA[0] != i70 && i70 > 0 && i70 <= 928) {
                aVar3.b(i70);
            }
            ArrayList arrayList2 = new ArrayList();
            int[] iArr4 = new int[((C0371d) w0Var.f1121I).f7392f * w0Var.f1120H];
            ArrayList arrayList3 = new ArrayList();
            ArrayList arrayList4 = new ArrayList();
            for (int i71 = 0; i71 < ((C0371d) w0Var.f1121I).f7392f; i71++) {
                int i72 = 0;
                while (i72 < w0Var.f1120H) {
                    int i73 = i72 + 1;
                    int[] iArrA2 = aVarArr[i71][i73].a();
                    int i74 = (w0Var.f1120H * i71) + i72;
                    if (iArrA2.length == 0) {
                        arrayList2.add(Integer.valueOf(i74));
                    } else if (iArrA2.length == 1) {
                        iArr4[i74] = iArrA2[0];
                    } else {
                        arrayList4.add(Integer.valueOf(i74));
                        arrayList3.add(iArrA2);
                    }
                    i72 = i73;
                }
            }
            int size = arrayList3.size();
            int[][] iArr5 = new int[size][];
            for (int i75 = 0; i75 < size; i75++) {
                iArr5[i75] = (int[]) arrayList3.get(i75);
            }
            int i76 = ((C0371d) w0Var.f1121I).f7389c;
            int[] iArrA3 = a.a(arrayList2);
            int[] iArrA4 = a.a(arrayList4);
            int length2 = iArrA4.length;
            int[] iArr6 = new int[length2];
            int i77 = 100;
            while (true) {
                int i78 = i77 - 1;
                if (i77 <= 0) {
                    throw p130q5.b.a();
                }
                for (int i79 = 0; i79 < length2; i79++) {
                    iArr4[iArrA4[i79]] = iArr5[i79][iArr6[i79]];
                }
                try {
                    dVarB = f.b(i76, iArr4, iArrA3);
                } catch (p130q5.b unused) {
                    if (length2 == 0) {
                        throw p130q5.b.a();
                    }
                    for (int i80 = 0; i80 < length2; i80++) {
                        int i81 = iArr6[i80];
                        if (i81 < iArr5[i80].length - 1) {
                            iArr6[i80] = i81 + 1;
                            break;
                        }
                        iArr6[i80] = 0;
                        if (i80 == length2 - 1) {
                            throw p130q5.b.a();
                        }
                    }
                    i77 = i78;
                }
            }
            m mVar2 = new m(dVarB.f31101b, null, oVarArr, p130q5.a.f29588Q);
            mVar2.b(n.f29636I, dVarB.f31103d);
            c cVar = (c) dVarB.f31104e;
            if (cVar != null) {
                mVar2.b(n.f29641N, cVar);
            }
            arrayList.add(mVar2);
            it2 = it4;
            c8 = 2;
            c9 = 0;
            i24 = 1;
        }
        m[] mVarArr = (m[]) arrayList.toArray(f3412a);
        if (mVarArr.length == 0 || (mVar = mVarArr[0]) == null) {
            throw i.f29623I;
        }
        return mVar;
    }

    @Override // p130q5.k
    public final void a() {
    }
}
