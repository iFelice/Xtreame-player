package p178x;

import java.util.ArrayList;
import p156u.h;
import p170w.c;
import p170w.d;
import p170w.g;

/* JADX INFO: loaded from: classes.dex */
public final class k extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f31150k = new int[2];

    public static void m(int[] iArr, int i8, int i9, int i10, int i11, float f8, int i12) {
        int i13 = i9 - i8;
        int i14 = i11 - i10;
        if (i12 != -1) {
            if (i12 == 0) {
                iArr[0] = (int) ((i14 * f8) + 0.5f);
                iArr[1] = i14;
                return;
            } else {
                if (i12 != 1) {
                    return;
                }
                iArr[0] = i13;
                iArr[1] = (int) ((i13 * f8) + 0.5f);
                return;
            }
        }
        int i15 = (int) ((i14 * f8) + 0.5f);
        int i16 = (int) ((i13 / f8) + 0.5f);
        if (i15 <= i13) {
            iArr[0] = i15;
            iArr[1] = i14;
        } else if (i16 <= i14) {
            iArr[0] = i13;
            iArr[1] = i16;
        }
    }

    /* JADX WARN: Code duplicated, block: B:118:0x026b  */
    /* JADX WARN: Code duplicated, block: B:120:0x027a  */
    @Override // p178x.d
    public final void a(d dVar) {
        int iG;
        int i8;
        int iG2;
        float f8;
        float f9;
        float f10;
        int i9;
        if (h.b(this.f31177j) == 3) {
            d dVar2 = this.f31169b;
            l(dVar2.f30799H, dVar2.f30801J, 0);
            return;
        }
        g gVar = this.f31172e;
        boolean z7 = gVar.f31145j;
        f fVar = this.f31175h;
        f fVar2 = this.f31176i;
        if (!z7 && this.f31171d == 3) {
            d dVar3 = this.f31169b;
            int i10 = dVar3.f30850r;
            if (i10 == 2) {
                d dVar4 = dVar3.f30810S;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f30824d.f31172e;
                    if (gVar2.f31145j) {
                        gVar.d((int) ((gVar2.f31142g * dVar3.f30855w) + 0.5f));
                    }
                }
            } else if (i10 == 3) {
                int i11 = dVar3.f30851s;
                if (i11 == 0 || i11 == 3) {
                    m mVar = dVar3.f30826e;
                    f fVar3 = mVar.f31175h;
                    f fVar4 = mVar.f31176i;
                    boolean z8 = dVar3.f30799H.f30788f != null;
                    boolean z9 = dVar3.f30800I.f30788f != null;
                    boolean z10 = dVar3.f30801J.f30788f != null;
                    boolean z11 = dVar3.f30802K.f30788f != null;
                    int i12 = dVar3.f30814W;
                    if (z8 && z9 && z10 && z11) {
                        float f11 = dVar3.f30813V;
                        boolean z12 = fVar3.f31145j;
                        int[] iArr = f31150k;
                        if (z12 && fVar4.f31145j) {
                            if (fVar.f31138c && fVar2.f31138c) {
                                m(iArr, ((f) fVar.f31147l.get(0)).f31142g + fVar.f31141f, ((f) fVar2.f31147l.get(0)).f31142g - fVar2.f31141f, fVar3.f31142g + fVar3.f31141f, fVar4.f31142g - fVar4.f31141f, f11, i12);
                                gVar.d(iArr[0]);
                                this.f31169b.f30826e.f31172e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        boolean z13 = fVar.f31145j;
                        ArrayList arrayList = fVar3.f31147l;
                        if (z13 && fVar2.f31145j) {
                            if (!fVar3.f31138c || !fVar4.f31138c) {
                                return;
                            }
                            m(iArr, fVar.f31142g + fVar.f31141f, fVar2.f31142g - fVar2.f31141f, ((f) arrayList.get(0)).f31142g + fVar3.f31141f, ((f) fVar4.f31147l.get(0)).f31142g - fVar4.f31141f, f11, i12);
                            gVar.d(iArr[0]);
                            this.f31169b.f30826e.f31172e.d(iArr[1]);
                        }
                        if (!fVar.f31138c || !fVar2.f31138c || !fVar3.f31138c || !fVar4.f31138c) {
                            return;
                        }
                        m(iArr, ((f) fVar.f31147l.get(0)).f31142g + fVar.f31141f, ((f) fVar2.f31147l.get(0)).f31142g - fVar2.f31141f, ((f) arrayList.get(0)).f31142g + fVar3.f31141f, ((f) fVar4.f31147l.get(0)).f31142g - fVar4.f31141f, f11, i12);
                        gVar.d(iArr[0]);
                        this.f31169b.f30826e.f31172e.d(iArr[1]);
                    } else if (z8 && z10) {
                        if (!fVar.f31138c || !fVar2.f31138c) {
                            return;
                        }
                        float f12 = dVar3.f30813V;
                        int i13 = ((f) fVar.f31147l.get(0)).f31142g + fVar.f31141f;
                        int i14 = ((f) fVar2.f31147l.get(0)).f31142g - fVar2.f31141f;
                        if (i12 == -1 || i12 == 0) {
                            int iG3 = g(i14 - i13, 0);
                            int i15 = (int) ((iG3 * f12) + 0.5f);
                            int iG4 = g(i15, 1);
                            if (i15 != iG4) {
                                iG3 = (int) ((iG4 / f12) + 0.5f);
                            }
                            gVar.d(iG3);
                            this.f31169b.f30826e.f31172e.d(iG4);
                        } else if (i12 == 1) {
                            int iG5 = g(i14 - i13, 0);
                            int i16 = (int) ((iG5 / f12) + 0.5f);
                            int iG6 = g(i16, 1);
                            if (i16 != iG6) {
                                iG5 = (int) ((iG6 * f12) + 0.5f);
                            }
                            gVar.d(iG5);
                            this.f31169b.f30826e.f31172e.d(iG6);
                        }
                    } else if (z9 && z11) {
                        if (!fVar3.f31138c || !fVar4.f31138c) {
                            return;
                        }
                        float f13 = dVar3.f30813V;
                        int i17 = ((f) fVar3.f31147l.get(0)).f31142g + fVar3.f31141f;
                        int i18 = ((f) fVar4.f31147l.get(0)).f31142g - fVar4.f31141f;
                        if (i12 == -1) {
                            iG = g(i18 - i17, 1);
                            i8 = (int) ((iG / f13) + 0.5f);
                            iG2 = g(i8, 0);
                            if (i8 != iG2) {
                                iG = (int) ((iG2 * f13) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.f31169b.f30826e.f31172e.d(iG);
                        } else if (i12 == 0) {
                            int iG7 = g(i18 - i17, 1);
                            int i19 = (int) ((iG7 * f13) + 0.5f);
                            int iG8 = g(i19, 0);
                            if (i19 != iG8) {
                                iG7 = (int) ((iG8 / f13) + 0.5f);
                            }
                            gVar.d(iG8);
                            this.f31169b.f30826e.f31172e.d(iG7);
                        } else if (i12 == 1) {
                            iG = g(i18 - i17, 1);
                            i8 = (int) ((iG / f13) + 0.5f);
                            iG2 = g(i8, 0);
                            if (i8 != iG2) {
                                iG = (int) ((iG2 * f13) + 0.5f);
                            }
                            gVar.d(iG2);
                            this.f31169b.f30826e.f31172e.d(iG);
                        }
                    }
                } else {
                    int i20 = dVar3.f30814W;
                    if (i20 != -1) {
                        if (i20 == 0) {
                            f10 = dVar3.f30826e.f31172e.f31142g / dVar3.f30813V;
                            i9 = (int) (f10 + 0.5f);
                        } else if (i20 != 1) {
                            i9 = 0;
                        } else {
                            f8 = dVar3.f30826e.f31172e.f31142g;
                            f9 = dVar3.f30813V;
                        }
                        gVar.d(i9);
                    } else {
                        f8 = dVar3.f30826e.f31172e.f31142g;
                        f9 = dVar3.f30813V;
                    }
                    f10 = f8 * f9;
                    i9 = (int) (f10 + 0.5f);
                    gVar.d(i9);
                }
            }
        }
        if (fVar.f31138c && fVar2.f31138c) {
            if (fVar.f31145j && fVar2.f31145j && gVar.f31145j) {
                return;
            }
            if (!gVar.f31145j && this.f31171d == 3) {
                d dVar5 = this.f31169b;
                if (dVar5.f30850r == 0 && !dVar5.v()) {
                    f fVar5 = (f) fVar.f31147l.get(0);
                    f fVar6 = (f) fVar2.f31147l.get(0);
                    int i21 = fVar5.f31142g + fVar.f31141f;
                    int i22 = fVar6.f31142g + fVar2.f31141f;
                    fVar.d(i21);
                    fVar2.d(i22);
                    gVar.d(i22 - i21);
                    return;
                }
            }
            if (!gVar.f31145j && this.f31171d == 3 && this.f31168a == 1 && fVar.f31147l.size() > 0 && fVar2.f31147l.size() > 0) {
                int iMin = Math.min((((f) fVar2.f31147l.get(0)).f31142g + fVar2.f31141f) - (((f) fVar.f31147l.get(0)).f31142g + fVar.f31141f), gVar.f31148m);
                d dVar6 = this.f31169b;
                int i23 = dVar6.f30854v;
                int iMax = Math.max(dVar6.f30853u, iMin);
                if (i23 > 0) {
                    iMax = Math.min(i23, iMax);
                }
                gVar.d(iMax);
            }
            if (gVar.f31145j) {
                f fVar7 = (f) fVar.f31147l.get(0);
                f fVar8 = (f) fVar2.f31147l.get(0);
                int i24 = fVar7.f31142g;
                int i25 = fVar.f31141f + i24;
                int i26 = fVar8.f31142g;
                int i27 = fVar2.f31141f + i26;
                float f14 = this.f31169b.f30823c0;
                if (fVar7 == fVar8) {
                    f14 = 0.5f;
                } else {
                    i24 = i25;
                    i26 = i27;
                }
                fVar.d((int) ((((i26 - i24) - gVar.f31142g) * f14) + i24 + 0.5f));
                fVar2.d(fVar.f31142g + gVar.f31142g);
            }
        }
    }

    @Override // p178x.p
    public final void d() {
        d dVar;
        d dVar2;
        int i8;
        d dVar3;
        d dVar4;
        int i9;
        d dVar5 = this.f31169b;
        boolean z7 = dVar5.f30818a;
        g gVar = this.f31172e;
        if (z7) {
            gVar.d(dVar5.o());
        }
        boolean z8 = gVar.f31145j;
        f fVar = this.f31176i;
        f fVar2 = this.f31175h;
        if (!z8) {
            d dVar6 = this.f31169b;
            int i10 = dVar6.f30847o0[0];
            this.f31171d = i10;
            if (i10 != 3) {
                if (i10 == 4 && (dVar4 = dVar6.f30810S) != null && ((i9 = dVar4.f30847o0[0]) == 1 || i9 == 4)) {
                    int iO = (dVar4.o() - this.f31169b.f30799H.d()) - this.f31169b.f30801J.d();
                    p.b(fVar2, dVar4.f30824d.f31175h, this.f31169b.f30799H.d());
                    p.b(fVar, dVar4.f30824d.f31176i, -this.f31169b.f30801J.d());
                    gVar.d(iO);
                    return;
                }
                if (i10 == 1) {
                    gVar.d(dVar6.o());
                }
            }
        } else if (this.f31171d == 4 && (dVar2 = (dVar = this.f31169b).f30810S) != null && ((i8 = dVar2.f30847o0[0]) == 1 || i8 == 4)) {
            p.b(fVar2, dVar2.f30824d.f31175h, dVar.f30799H.d());
            p.b(fVar, dVar2.f30824d.f31176i, -this.f31169b.f30801J.d());
            return;
        }
        if (gVar.f31145j) {
            d dVar7 = this.f31169b;
            if (dVar7.f30818a) {
                c[] cVarArr = dVar7.f30807P;
                c cVar = cVarArr[0];
                c cVar2 = cVar.f30788f;
                if (cVar2 != null && cVarArr[1].f30788f != null) {
                    if (dVar7.v()) {
                        fVar2.f31141f = this.f31169b.f30807P[0].d();
                        fVar.f31141f = -this.f31169b.f30807P[1].d();
                        return;
                    }
                    f fVarH = p.h(this.f31169b.f30807P[0]);
                    if (fVarH != null) {
                        p.b(fVar2, fVarH, this.f31169b.f30807P[0].d());
                    }
                    f fVarH2 = p.h(this.f31169b.f30807P[1]);
                    if (fVarH2 != null) {
                        p.b(fVar, fVarH2, -this.f31169b.f30807P[1].d());
                    }
                    fVar2.f31137b = true;
                    fVar.f31137b = true;
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = p.h(cVar);
                    if (fVarH3 != null) {
                        p.b(fVar2, fVarH3, this.f31169b.f30807P[0].d());
                        p.b(fVar, fVar2, gVar.f31142g);
                        return;
                    }
                    return;
                }
                c cVar3 = cVarArr[1];
                if (cVar3.f30788f != null) {
                    f fVarH4 = p.h(cVar3);
                    if (fVarH4 != null) {
                        p.b(fVar, fVarH4, -this.f31169b.f30807P[1].d());
                        p.b(fVar2, fVar, -gVar.f31142g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof g) || dVar7.f30810S == null || dVar7.g(7).f30788f != null) {
                    return;
                }
                d dVar8 = this.f31169b;
                p.b(fVar2, dVar8.f30810S.f30824d.f31175h, dVar8.p());
                p.b(fVar, fVar2, gVar.f31142g);
                return;
            }
        }
        if (this.f31171d == 3) {
            d dVar9 = this.f31169b;
            int i11 = dVar9.f30850r;
            if (i11 == 2) {
                d dVar10 = dVar9.f30810S;
                if (dVar10 != null) {
                    g gVar2 = dVar10.f30826e.f31172e;
                    gVar.f31147l.add(gVar2);
                    gVar2.f31146k.add(gVar);
                    gVar.f31137b = true;
                    gVar.f31146k.add(fVar2);
                    gVar.f31146k.add(fVar);
                }
            } else if (i11 == 3) {
                if (dVar9.f30851s == 3) {
                    fVar2.f31136a = this;
                    fVar.f31136a = this;
                    m mVar = dVar9.f30826e;
                    mVar.f31175h.f31136a = this;
                    mVar.f31176i.f31136a = this;
                    gVar.f31136a = this;
                    if (dVar9.w()) {
                        gVar.f31147l.add(this.f31169b.f30826e.f31172e);
                        this.f31169b.f30826e.f31172e.f31146k.add(gVar);
                        m mVar2 = this.f31169b.f30826e;
                        mVar2.f31172e.f31136a = this;
                        gVar.f31147l.add(mVar2.f31175h);
                        gVar.f31147l.add(this.f31169b.f30826e.f31176i);
                        this.f31169b.f30826e.f31175h.f31146k.add(gVar);
                        this.f31169b.f30826e.f31176i.f31146k.add(gVar);
                    } else if (this.f31169b.v()) {
                        this.f31169b.f30826e.f31172e.f31147l.add(gVar);
                        gVar.f31146k.add(this.f31169b.f30826e.f31172e);
                    } else {
                        this.f31169b.f30826e.f31172e.f31147l.add(gVar);
                    }
                } else {
                    g gVar3 = dVar9.f30826e.f31172e;
                    gVar.f31147l.add(gVar3);
                    gVar3.f31146k.add(gVar);
                    this.f31169b.f30826e.f31175h.f31146k.add(gVar);
                    this.f31169b.f30826e.f31176i.f31146k.add(gVar);
                    gVar.f31137b = true;
                    gVar.f31146k.add(fVar2);
                    gVar.f31146k.add(fVar);
                    fVar2.f31147l.add(gVar);
                    fVar.f31147l.add(gVar);
                }
            }
        }
        d dVar11 = this.f31169b;
        c[] cVarArr2 = dVar11.f30807P;
        c cVar4 = cVarArr2[0];
        c cVar5 = cVar4.f30788f;
        if (cVar5 != null && cVarArr2[1].f30788f != null) {
            if (dVar11.v()) {
                fVar2.f31141f = this.f31169b.f30807P[0].d();
                fVar.f31141f = -this.f31169b.f30807P[1].d();
                return;
            }
            f fVarH5 = p.h(this.f31169b.f30807P[0]);
            f fVarH6 = p.h(this.f31169b.f30807P[1]);
            if (fVarH5 != null) {
                fVarH5.b(this);
            }
            if (fVarH6 != null) {
                fVarH6.b(this);
            }
            this.f31177j = 4;
            return;
        }
        if (cVar5 != null) {
            f fVarH7 = p.h(cVar4);
            if (fVarH7 != null) {
                p.b(fVar2, fVarH7, this.f31169b.f30807P[0].d());
                c(fVar, fVar2, 1, gVar);
                return;
            }
            return;
        }
        c cVar6 = cVarArr2[1];
        if (cVar6.f30788f != null) {
            f fVarH8 = p.h(cVar6);
            if (fVarH8 != null) {
                p.b(fVar, fVarH8, -this.f31169b.f30807P[1].d());
                c(fVar2, fVar, -1, gVar);
                return;
            }
            return;
        }
        if ((dVar11 instanceof g) || (dVar3 = dVar11.f30810S) == null) {
            return;
        }
        p.b(fVar2, dVar3.f30824d.f31175h, dVar11.p());
        c(fVar, fVar2, 1, gVar);
    }

    @Override // p178x.p
    public final void e() {
        f fVar = this.f31175h;
        if (fVar.f31145j) {
            this.f31169b.f30815X = fVar.f31142g;
        }
    }

    @Override // p178x.p
    public final void f() {
        this.f31170c = null;
        this.f31175h.c();
        this.f31176i.c();
        this.f31172e.c();
        this.f31174g = false;
    }

    @Override // p178x.p
    public final boolean k() {
        return this.f31171d != 3 || this.f31169b.f30850r == 0;
    }

    public final void n() {
        this.f31174g = false;
        f fVar = this.f31175h;
        fVar.c();
        fVar.f31145j = false;
        f fVar2 = this.f31176i;
        fVar2.c();
        fVar2.f31145j = false;
        this.f31172e.f31145j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f31169b.f30831g0;
    }
}
