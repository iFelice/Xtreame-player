package p178x;

import com.google.protobuf.U2;
import java.util.ArrayList;
import java.util.Iterator;
import p170w.d;
import p170w.e;

/* JADX INFO: loaded from: classes.dex */
public final class c extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f31125k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f31126l;

    public c(int i8, d dVar) {
        d dVar2;
        super(dVar);
        this.f31125k = new ArrayList();
        this.f31173f = i8;
        d dVar3 = this.f31169b;
        d dVarK = dVar3.k(i8);
        while (true) {
            dVar2 = dVar3;
            dVar3 = dVarK;
            if (dVar3 == null) {
                break;
            } else {
                dVarK = dVar3.k(this.f31173f);
            }
        }
        this.f31169b = dVar2;
        int i9 = this.f31173f;
        Object obj = i9 == 0 ? dVar2.f30824d : i9 == 1 ? dVar2.f30826e : null;
        ArrayList<p> arrayList = this.f31125k;
        arrayList.add(obj);
        d dVarJ = dVar2.j(this.f31173f);
        while (dVarJ != null) {
            int i10 = this.f31173f;
            arrayList.add(i10 == 0 ? dVarJ.f30824d : i10 == 1 ? dVarJ.f30826e : null);
            dVarJ = dVarJ.j(this.f31173f);
        }
        for (p pVar : arrayList) {
            int i11 = this.f31173f;
            if (i11 == 0) {
                pVar.f31169b.f30820b = this;
            } else if (i11 == 1) {
                pVar.f31169b.f30822c = this;
            }
        }
        if (this.f31173f == 0 && ((e) this.f31169b.f30810S).f30874u0 && arrayList.size() > 1) {
            this.f31169b = ((p) U2.g(arrayList, 1)).f31169b;
        }
        this.f31126l = this.f31173f == 0 ? this.f31169b.f30833h0 : this.f31169b.f30835i0;
    }

    /* JADX WARN: Code duplicated, block: B:295:0x00e5 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:62:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:64:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:65:0x00da  */
    /* JADX WARN: Code duplicated, block: B:67:0x00dd A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:91:0x0153  */
    @Override // p178x.d
    public final void a(d dVar) {
        int i8;
        int i9;
        ArrayList arrayList;
        int i10;
        int i11;
        int i12;
        int i13;
        float f8;
        int i14;
        boolean z7;
        ArrayList arrayList2;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        float f9;
        f fVar = this.f31175h;
        if (fVar.f31145j) {
            f fVar2 = this.f31176i;
            if (fVar2.f31145j) {
                d dVar2 = this.f31169b.f30810S;
                boolean z8 = dVar2 instanceof e ? ((e) dVar2).f30874u0 : false;
                int i22 = fVar2.f31142g - fVar.f31142g;
                ArrayList arrayList3 = this.f31125k;
                int size = arrayList3.size();
                int i23 = 0;
                while (true) {
                    i8 = -1;
                    i9 = 8;
                    if (i23 >= size) {
                        i23 = -1;
                        break;
                    } else if (((p) arrayList3.get(i23)).f31169b.f30829f0 != 8) {
                        break;
                    } else {
                        i23++;
                    }
                }
                int i24 = size - 1;
                for (int i25 = i24; i25 >= 0; i25--) {
                    if (((p) arrayList3.get(i25)).f31169b.f30829f0 != 8) {
                        i8 = i25;
                        break;
                    }
                }
                int i26 = 0;
                while (true) {
                    if (i26 >= 2) {
                        arrayList = arrayList3;
                        i10 = i23;
                        i11 = 0;
                        i12 = 0;
                        i13 = 0;
                        f8 = 0.0f;
                        break;
                    }
                    int i27 = 0;
                    i13 = 0;
                    int i28 = 0;
                    int i29 = 0;
                    f8 = 0.0f;
                    while (i27 < size) {
                        p pVar = (p) arrayList3.get(i27);
                        d dVar3 = pVar.f31169b;
                        ArrayList arrayList4 = arrayList3;
                        if (dVar3.f30829f0 == i9) {
                            i20 = i23;
                        } else {
                            i29++;
                            if (i27 > 0 && i27 >= i23) {
                                i13 += pVar.f31175h.f31141f;
                            }
                            g gVar = pVar.f31172e;
                            int i30 = gVar.f31142g;
                            i20 = i23;
                            boolean z9 = pVar.f31171d != 3;
                            if (z9) {
                                int i31 = this.f31173f;
                                if (i31 == 0 && !dVar3.f30824d.f31172e.f31145j) {
                                    return;
                                }
                                if (i31 == 1 && !dVar3.f30826e.f31172e.f31145j) {
                                    return;
                                }
                            } else {
                                if (pVar.f31168a == 1 && i26 == 0) {
                                    i21 = gVar.f31148m;
                                    i28++;
                                } else {
                                    if (gVar.f31145j) {
                                        i21 = i30;
                                    }
                                    if (z9) {
                                        i13 += i21;
                                    } else {
                                        i28++;
                                        f9 = dVar3.f30837j0[this.f31173f];
                                        if (f9 >= 0.0f) {
                                            f8 += f9;
                                        }
                                    }
                                    if (i27 >= i24 && i27 < i8) {
                                        i13 += -pVar.f31176i.f31141f;
                                    }
                                }
                                z9 = true;
                                if (z9) {
                                    i28++;
                                    f9 = dVar3.f30837j0[this.f31173f];
                                    if (f9 >= 0.0f) {
                                        f8 += f9;
                                    }
                                } else {
                                    i13 += i21;
                                }
                                if (i27 >= i24) {
                                }
                            }
                            i21 = i30;
                            if (z9) {
                                i28++;
                                f9 = dVar3.f30837j0[this.f31173f];
                                if (f9 >= 0.0f) {
                                    f8 += f9;
                                }
                            } else {
                                i13 += i21;
                            }
                            if (i27 >= i24) {
                            }
                        }
                        i27++;
                        arrayList3 = arrayList4;
                        i23 = i20;
                        i9 = 8;
                    }
                    arrayList = arrayList3;
                    i10 = i23;
                    if (i13 < i22 || i28 == 0) {
                        i11 = i28;
                        i12 = i29;
                        break;
                    } else {
                        i26++;
                        arrayList3 = arrayList;
                        i23 = i10;
                        i9 = 8;
                    }
                }
                int i32 = fVar.f31142g;
                if (z8) {
                    i32 = fVar2.f31142g;
                }
                if (i13 > i22) {
                    i32 = z8 ? i32 + ((int) (((i13 - i22) / 2.0f) + 0.5f)) : i32 - ((int) (((i13 - i22) / 2.0f) + 0.5f));
                }
                if (i11 > 0) {
                    float f10 = i22 - i13;
                    int i33 = (int) ((f10 / i11) + 0.5f);
                    int i34 = 0;
                    int i35 = 0;
                    while (i34 < size) {
                        ArrayList arrayList5 = arrayList;
                        p pVar2 = (p) arrayList5.get(i34);
                        int i36 = i33;
                        d dVar4 = pVar2.f31169b;
                        int i37 = i13;
                        int i38 = i32;
                        if (dVar4.f30829f0 != 8 && pVar2.f31171d == 3) {
                            g gVar2 = pVar2.f31172e;
                            if (gVar2.f31145j) {
                                z8 = z8;
                            } else {
                                int i39 = f8 > 0.0f ? (int) (((dVar4.f30837j0[this.f31173f] * f10) / f8) + 0.5f) : i36;
                                if (this.f31173f == 0) {
                                    i18 = dVar4.f30854v;
                                    i19 = dVar4.f30853u;
                                } else {
                                    i18 = dVar4.f30857y;
                                    i19 = dVar4.f30856x;
                                }
                                int iMax = Math.max(i19, pVar2.f31168a == 1 ? Math.min(i39, gVar2.f31148m) : i39);
                                if (i18 > 0) {
                                    iMax = Math.min(i18, iMax);
                                }
                                if (iMax != i39) {
                                    i35++;
                                    i39 = iMax;
                                }
                                gVar2.d(i39);
                            }
                        } else {
                            z8 = z8;
                        }
                        i34++;
                        i33 = i36;
                        i13 = i37;
                        i32 = i38;
                        z8 = z8;
                        f10 = f10;
                        arrayList = arrayList5;
                    }
                    i14 = i32;
                    z7 = z8;
                    arrayList2 = arrayList;
                    int i40 = i13;
                    if (i35 > 0) {
                        i11 -= i35;
                        int i41 = 0;
                        i13 = 0;
                        while (i41 < size) {
                            p pVar3 = (p) arrayList2.get(i41);
                            if (pVar3.f31169b.f30829f0 == 8) {
                                i17 = i10;
                            } else {
                                i17 = i10;
                                if (i41 > 0 && i41 >= i17) {
                                    i13 += pVar3.f31175h.f31141f;
                                }
                                i13 += pVar3.f31172e.f31142g;
                                if (i41 < i24 && i41 < i8) {
                                    i13 += -pVar3.f31176i.f31141f;
                                }
                            }
                            i41++;
                            i10 = i17;
                        }
                        i15 = i10;
                    } else {
                        i15 = i10;
                        i13 = i40;
                    }
                    i16 = 2;
                    if (this.f31126l == 2 && i35 == 0) {
                        this.f31126l = 0;
                    }
                } else {
                    i14 = i32;
                    z7 = z8;
                    arrayList2 = arrayList;
                    i15 = i10;
                    i16 = 2;
                }
                if (i13 > i22) {
                    this.f31126l = i16;
                }
                if (i12 > 0 && i11 == 0 && i15 == i8) {
                    this.f31126l = i16;
                }
                int i42 = this.f31126l;
                if (i42 == 1) {
                    int i43 = i12 > 1 ? (i22 - i13) / (i12 - 1) : i12 == 1 ? (i22 - i13) / 2 : 0;
                    if (i11 > 0) {
                        i43 = 0;
                    }
                    int i44 = i14;
                    for (int i45 = 0; i45 < size; i45++) {
                        p pVar4 = (p) arrayList2.get(z7 ? size - (i45 + 1) : i45);
                        int i46 = pVar4.f31169b.f30829f0;
                        f fVar3 = pVar4.f31176i;
                        f fVar4 = pVar4.f31175h;
                        if (i46 == 8) {
                            fVar4.d(i44);
                            fVar3.d(i44);
                        } else {
                            if (i45 > 0) {
                                i44 = z7 ? i44 - i43 : i44 + i43;
                            }
                            if (i45 > 0 && i45 >= i15) {
                                i44 = z7 ? i44 - fVar4.f31141f : i44 + fVar4.f31141f;
                            }
                            if (z7) {
                                fVar3.d(i44);
                            } else {
                                fVar4.d(i44);
                            }
                            g gVar3 = pVar4.f31172e;
                            int i47 = gVar3.f31142g;
                            if (pVar4.f31171d == 3 && pVar4.f31168a == 1) {
                                i47 = gVar3.f31148m;
                            }
                            i44 = z7 ? i44 - i47 : i44 + i47;
                            if (z7) {
                                fVar4.d(i44);
                            } else {
                                fVar3.d(i44);
                            }
                            pVar4.f31174g = true;
                            if (i45 < i24 && i45 < i8) {
                                i44 = z7 ? i44 - (-fVar3.f31141f) : i44 + (-fVar3.f31141f);
                            }
                        }
                    }
                    return;
                }
                if (i42 == 0) {
                    int i48 = (i22 - i13) / (i12 + 1);
                    if (i11 > 0) {
                        i48 = 0;
                    }
                    int i49 = i14;
                    for (int i50 = 0; i50 < size; i50++) {
                        p pVar5 = (p) arrayList2.get(z7 ? size - (i50 + 1) : i50);
                        int i51 = pVar5.f31169b.f30829f0;
                        f fVar5 = pVar5.f31176i;
                        f fVar6 = pVar5.f31175h;
                        if (i51 == 8) {
                            fVar6.d(i49);
                            fVar5.d(i49);
                        } else {
                            int i52 = z7 ? i49 - i48 : i49 + i48;
                            if (i50 > 0 && i50 >= i15) {
                                i52 = z7 ? i52 - fVar6.f31141f : i52 + fVar6.f31141f;
                            }
                            if (z7) {
                                fVar5.d(i52);
                            } else {
                                fVar6.d(i52);
                            }
                            g gVar4 = pVar5.f31172e;
                            int iMin = gVar4.f31142g;
                            if (pVar5.f31171d == 3 && pVar5.f31168a == 1) {
                                iMin = Math.min(iMin, gVar4.f31148m);
                            }
                            i49 = z7 ? i52 - iMin : i52 + iMin;
                            if (z7) {
                                fVar6.d(i49);
                            } else {
                                fVar5.d(i49);
                            }
                            if (i50 < i24 && i50 < i8) {
                                i49 = z7 ? i49 - (-fVar5.f31141f) : i49 + (-fVar5.f31141f);
                            }
                        }
                    }
                    return;
                }
                if (i42 == 2) {
                    float f11 = this.f31173f == 0 ? this.f31169b.f30823c0 : this.f31169b.f30825d0;
                    if (z7) {
                        f11 = 1.0f - f11;
                    }
                    int i53 = (int) (((i22 - i13) * f11) + 0.5f);
                    if (i53 < 0 || i11 > 0) {
                        i53 = 0;
                    }
                    int i54 = z7 ? i14 - i53 : i14 + i53;
                    for (int i55 = 0; i55 < size; i55++) {
                        p pVar6 = (p) arrayList2.get(z7 ? size - (i55 + 1) : i55);
                        int i56 = pVar6.f31169b.f30829f0;
                        f fVar7 = pVar6.f31176i;
                        f fVar8 = pVar6.f31175h;
                        if (i56 == 8) {
                            fVar8.d(i54);
                            fVar7.d(i54);
                        } else {
                            if (i55 > 0 && i55 >= i15) {
                                i54 = z7 ? i54 - fVar8.f31141f : i54 + fVar8.f31141f;
                            }
                            if (z7) {
                                fVar7.d(i54);
                            } else {
                                fVar8.d(i54);
                            }
                            g gVar5 = pVar6.f31172e;
                            int i57 = gVar5.f31142g;
                            if (pVar6.f31171d == 3 && pVar6.f31168a == 1) {
                                i57 = gVar5.f31148m;
                            }
                            i54 = z7 ? i54 - i57 : i54 + i57;
                            if (z7) {
                                fVar8.d(i54);
                            } else {
                                fVar7.d(i54);
                            }
                            if (i55 < i24 && i55 < i8) {
                                i54 = z7 ? i54 - (-fVar7.f31141f) : i54 + (-fVar7.f31141f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // p178x.p
    public final void d() {
        ArrayList arrayList = this.f31125k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((p) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        d dVar = ((p) arrayList.get(0)).f31169b;
        d dVar2 = ((p) arrayList.get(size - 1)).f31169b;
        int i8 = this.f31173f;
        f fVar = this.f31176i;
        f fVar2 = this.f31175h;
        if (i8 == 0) {
            p170w.c cVar = dVar.f30799H;
            p170w.c cVar2 = dVar2.f30801J;
            f fVarI = p.i(cVar, 0);
            int iD = cVar.d();
            d dVarM = m();
            if (dVarM != null) {
                iD = dVarM.f30799H.d();
            }
            if (fVarI != null) {
                p.b(fVar2, fVarI, iD);
            }
            f fVarI2 = p.i(cVar2, 0);
            int iD2 = cVar2.d();
            d dVarN = n();
            if (dVarN != null) {
                iD2 = dVarN.f30801J.d();
            }
            if (fVarI2 != null) {
                p.b(fVar, fVarI2, -iD2);
            }
        } else {
            p170w.c cVar3 = dVar.f30800I;
            p170w.c cVar4 = dVar2.f30802K;
            f fVarI3 = p.i(cVar3, 1);
            int iD3 = cVar3.d();
            d dVarM2 = m();
            if (dVarM2 != null) {
                iD3 = dVarM2.f30800I.d();
            }
            if (fVarI3 != null) {
                p.b(fVar2, fVarI3, iD3);
            }
            f fVarI4 = p.i(cVar4, 1);
            int iD4 = cVar4.d();
            d dVarN2 = n();
            if (dVarN2 != null) {
                iD4 = dVarN2.f30802K.d();
            }
            if (fVarI4 != null) {
                p.b(fVar, fVarI4, -iD4);
            }
        }
        fVar2.f31136a = this;
        fVar.f31136a = this;
    }

    @Override // p178x.p
    public final void e() {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f31125k;
            if (i8 >= arrayList.size()) {
                return;
            }
            ((p) arrayList.get(i8)).e();
            i8++;
        }
    }

    @Override // p178x.p
    public final void f() {
        this.f31170c = null;
        Iterator it = this.f31125k.iterator();
        while (it.hasNext()) {
            ((p) it.next()).f();
        }
    }

    @Override // p178x.p
    public final long j() {
        ArrayList arrayList = this.f31125k;
        int size = arrayList.size();
        long j8 = 0;
        for (int i8 = 0; i8 < size; i8++) {
            p pVar = (p) arrayList.get(i8);
            j8 = ((long) pVar.f31176i.f31141f) + pVar.j() + j8 + ((long) pVar.f31175h.f31141f);
        }
        return j8;
    }

    @Override // p178x.p
    public final boolean k() {
        ArrayList arrayList = this.f31125k;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            if (!((p) arrayList.get(i8)).k()) {
                return false;
            }
        }
        return true;
    }

    public final d m() {
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f31125k;
            if (i8 >= arrayList.size()) {
                return null;
            }
            d dVar = ((p) arrayList.get(i8)).f31169b;
            if (dVar.f30829f0 != 8) {
                return dVar;
            }
            i8++;
        }
    }

    public final d n() {
        ArrayList arrayList = this.f31125k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            d dVar = ((p) arrayList.get(size)).f31169b;
            if (dVar.f30829f0 != 8) {
                return dVar;
            }
        }
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f31173f == 0 ? "horizontal : " : "vertical : ");
        for (p pVar : this.f31125k) {
            sb.append("<");
            sb.append(pVar);
            sb.append("> ");
        }
        return sb.toString();
    }
}
