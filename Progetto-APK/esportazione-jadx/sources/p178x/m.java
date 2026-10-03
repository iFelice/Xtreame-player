package p178x;

import p156u.h;
import p170w.c;
import p170w.d;
import p170w.g;

/* JADX INFO: loaded from: classes.dex */
public final class m extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f31153k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public a f31154l;

    @Override // p178x.d
    public final void a(d dVar) {
        float f8;
        float f9;
        float f10;
        int i8;
        if (h.b(this.f31177j) == 3) {
            d dVar2 = this.f31169b;
            l(dVar2.f30800I, dVar2.f30802K, 1);
            return;
        }
        g gVar = this.f31172e;
        if (gVar.f31138c && !gVar.f31145j && this.f31171d == 3) {
            d dVar3 = this.f31169b;
            int i9 = dVar3.f30851s;
            if (i9 == 2) {
                d dVar4 = dVar3.f30810S;
                if (dVar4 != null) {
                    g gVar2 = dVar4.f30826e.f31172e;
                    if (gVar2.f31145j) {
                        gVar.d((int) ((gVar2.f31142g * dVar3.f30858z) + 0.5f));
                    }
                }
            } else if (i9 == 3) {
                g gVar3 = dVar3.f30824d.f31172e;
                if (gVar3.f31145j) {
                    int i10 = dVar3.f30814W;
                    if (i10 != -1) {
                        if (i10 == 0) {
                            f10 = gVar3.f31142g * dVar3.f30813V;
                            i8 = (int) (f10 + 0.5f);
                        } else if (i10 != 1) {
                            i8 = 0;
                        } else {
                            f8 = gVar3.f31142g;
                            f9 = dVar3.f30813V;
                        }
                        gVar.d(i8);
                    } else {
                        f8 = gVar3.f31142g;
                        f9 = dVar3.f30813V;
                    }
                    f10 = f8 / f9;
                    i8 = (int) (f10 + 0.5f);
                    gVar.d(i8);
                }
            }
        }
        f fVar = this.f31175h;
        if (fVar.f31138c) {
            f fVar2 = this.f31176i;
            if (fVar2.f31138c) {
                if (fVar.f31145j && fVar2.f31145j && gVar.f31145j) {
                    return;
                }
                if (!gVar.f31145j && this.f31171d == 3) {
                    d dVar5 = this.f31169b;
                    if (dVar5.f30850r == 0 && !dVar5.w()) {
                        f fVar3 = (f) fVar.f31147l.get(0);
                        f fVar4 = (f) fVar2.f31147l.get(0);
                        int i11 = fVar3.f31142g + fVar.f31141f;
                        int i12 = fVar4.f31142g + fVar2.f31141f;
                        fVar.d(i11);
                        fVar2.d(i12);
                        gVar.d(i12 - i11);
                        return;
                    }
                }
                if (!gVar.f31145j && this.f31171d == 3 && this.f31168a == 1 && fVar.f31147l.size() > 0 && fVar2.f31147l.size() > 0) {
                    f fVar5 = (f) fVar.f31147l.get(0);
                    int i13 = (((f) fVar2.f31147l.get(0)).f31142g + fVar2.f31141f) - (fVar5.f31142g + fVar.f31141f);
                    int i14 = gVar.f31148m;
                    if (i13 < i14) {
                        gVar.d(i13);
                    } else {
                        gVar.d(i14);
                    }
                }
                if (gVar.f31145j && fVar.f31147l.size() > 0 && fVar2.f31147l.size() > 0) {
                    f fVar6 = (f) fVar.f31147l.get(0);
                    f fVar7 = (f) fVar2.f31147l.get(0);
                    int i15 = fVar6.f31142g;
                    int i16 = fVar.f31141f + i15;
                    int i17 = fVar7.f31142g;
                    int i18 = fVar2.f31141f + i17;
                    float f11 = this.f31169b.f30825d0;
                    if (fVar6 == fVar7) {
                        f11 = 0.5f;
                    } else {
                        i15 = i16;
                        i17 = i18;
                    }
                    fVar.d((int) ((((i17 - i15) - gVar.f31142g) * f11) + i15 + 0.5f));
                    fVar2.d(fVar.f31142g + gVar.f31142g);
                }
            }
        }
    }

    @Override // p178x.p
    public final void d() {
        d dVar;
        d dVar2;
        d dVar3;
        d dVar4;
        d dVar5 = this.f31169b;
        boolean z7 = dVar5.f30818a;
        g gVar = this.f31172e;
        if (z7) {
            gVar.d(dVar5.i());
        }
        boolean z8 = gVar.f31145j;
        f fVar = this.f31176i;
        f fVar2 = this.f31175h;
        if (!z8) {
            d dVar6 = this.f31169b;
            this.f31171d = dVar6.f30847o0[1];
            if (dVar6.f30796E) {
                this.f31154l = new a(this);
            }
            int i8 = this.f31171d;
            if (i8 != 3) {
                if (i8 == 4 && (dVar4 = this.f31169b.f30810S) != null && dVar4.f30847o0[1] == 1) {
                    int i9 = (dVar4.i() - this.f31169b.f30800I.d()) - this.f31169b.f30802K.d();
                    p.b(fVar2, dVar4.f30826e.f31175h, this.f31169b.f30800I.d());
                    p.b(fVar, dVar4.f30826e.f31176i, -this.f31169b.f30802K.d());
                    gVar.d(i9);
                    return;
                }
                if (i8 == 1) {
                    gVar.d(this.f31169b.i());
                }
            }
        } else if (this.f31171d == 4 && (dVar2 = (dVar = this.f31169b).f30810S) != null && dVar2.f30847o0[1] == 1) {
            p.b(fVar2, dVar2.f30826e.f31175h, dVar.f30800I.d());
            p.b(fVar, dVar2.f30826e.f31176i, -this.f31169b.f30802K.d());
            return;
        }
        boolean z9 = gVar.f31145j;
        f fVar3 = this.f31153k;
        if (z9) {
            d dVar7 = this.f31169b;
            if (dVar7.f30818a) {
                c[] cVarArr = dVar7.f30807P;
                c cVar = cVarArr[2];
                c cVar2 = cVar.f30788f;
                if (cVar2 != null && cVarArr[3].f30788f != null) {
                    if (dVar7.w()) {
                        fVar2.f31141f = this.f31169b.f30807P[2].d();
                        fVar.f31141f = -this.f31169b.f30807P[3].d();
                    } else {
                        f fVarH = p.h(this.f31169b.f30807P[2]);
                        if (fVarH != null) {
                            p.b(fVar2, fVarH, this.f31169b.f30807P[2].d());
                        }
                        f fVarH2 = p.h(this.f31169b.f30807P[3]);
                        if (fVarH2 != null) {
                            p.b(fVar, fVarH2, -this.f31169b.f30807P[3].d());
                        }
                        fVar2.f31137b = true;
                        fVar.f31137b = true;
                    }
                    d dVar8 = this.f31169b;
                    if (dVar8.f30796E) {
                        p.b(fVar3, fVar2, dVar8.f30817Z);
                        return;
                    }
                    return;
                }
                if (cVar2 != null) {
                    f fVarH3 = p.h(cVar);
                    if (fVarH3 != null) {
                        p.b(fVar2, fVarH3, this.f31169b.f30807P[2].d());
                        p.b(fVar, fVar2, gVar.f31142g);
                        d dVar9 = this.f31169b;
                        if (dVar9.f30796E) {
                            p.b(fVar3, fVar2, dVar9.f30817Z);
                            return;
                        }
                        return;
                    }
                    return;
                }
                c cVar3 = cVarArr[3];
                if (cVar3.f30788f != null) {
                    f fVarH4 = p.h(cVar3);
                    if (fVarH4 != null) {
                        p.b(fVar, fVarH4, -this.f31169b.f30807P[3].d());
                        p.b(fVar2, fVar, -gVar.f31142g);
                    }
                    d dVar10 = this.f31169b;
                    if (dVar10.f30796E) {
                        p.b(fVar3, fVar2, dVar10.f30817Z);
                        return;
                    }
                    return;
                }
                c cVar4 = cVarArr[4];
                if (cVar4.f30788f != null) {
                    f fVarH5 = p.h(cVar4);
                    if (fVarH5 != null) {
                        p.b(fVar3, fVarH5, 0);
                        p.b(fVar2, fVar3, -this.f31169b.f30817Z);
                        p.b(fVar, fVar2, gVar.f31142g);
                        return;
                    }
                    return;
                }
                if ((dVar7 instanceof g) || dVar7.f30810S == null || dVar7.g(7).f30788f != null) {
                    return;
                }
                d dVar11 = this.f31169b;
                p.b(fVar2, dVar11.f30810S.f30826e.f31175h, dVar11.q());
                p.b(fVar, fVar2, gVar.f31142g);
                d dVar12 = this.f31169b;
                if (dVar12.f30796E) {
                    p.b(fVar3, fVar2, dVar12.f30817Z);
                    return;
                }
                return;
            }
        }
        if (z9 || this.f31171d != 3) {
            gVar.b(this);
        } else {
            d dVar13 = this.f31169b;
            int i10 = dVar13.f30851s;
            if (i10 == 2) {
                d dVar14 = dVar13.f30810S;
                if (dVar14 != null) {
                    g gVar2 = dVar14.f30826e.f31172e;
                    gVar.f31147l.add(gVar2);
                    gVar2.f31146k.add(gVar);
                    gVar.f31137b = true;
                    gVar.f31146k.add(fVar2);
                    gVar.f31146k.add(fVar);
                }
            } else if (i10 == 3 && !dVar13.w()) {
                d dVar15 = this.f31169b;
                if (dVar15.f30850r != 3) {
                    g gVar3 = dVar15.f30824d.f31172e;
                    gVar.f31147l.add(gVar3);
                    gVar3.f31146k.add(gVar);
                    gVar.f31137b = true;
                    gVar.f31146k.add(fVar2);
                    gVar.f31146k.add(fVar);
                }
            }
        }
        d dVar16 = this.f31169b;
        c[] cVarArr2 = dVar16.f30807P;
        c cVar5 = cVarArr2[2];
        c cVar6 = cVar5.f30788f;
        if (cVar6 != null && cVarArr2[3].f30788f != null) {
            if (dVar16.w()) {
                fVar2.f31141f = this.f31169b.f30807P[2].d();
                fVar.f31141f = -this.f31169b.f30807P[3].d();
            } else {
                f fVarH6 = p.h(this.f31169b.f30807P[2]);
                f fVarH7 = p.h(this.f31169b.f30807P[3]);
                if (fVarH6 != null) {
                    fVarH6.b(this);
                }
                if (fVarH7 != null) {
                    fVarH7.b(this);
                }
                this.f31177j = 4;
            }
            if (this.f31169b.f30796E) {
                c(fVar3, fVar2, 1, this.f31154l);
            }
        } else if (cVar6 != null) {
            f fVarH8 = p.h(cVar5);
            if (fVarH8 != null) {
                p.b(fVar2, fVarH8, this.f31169b.f30807P[2].d());
                c(fVar, fVar2, 1, gVar);
                if (this.f31169b.f30796E) {
                    c(fVar3, fVar2, 1, this.f31154l);
                }
                if (this.f31171d == 3) {
                    d dVar17 = this.f31169b;
                    if (dVar17.f30813V > 0.0f) {
                        k kVar = dVar17.f30824d;
                        if (kVar.f31171d == 3) {
                            kVar.f31172e.f31146k.add(gVar);
                            gVar.f31147l.add(this.f31169b.f30824d.f31172e);
                            gVar.f31136a = this;
                        }
                    }
                }
            }
        } else {
            c cVar7 = cVarArr2[3];
            if (cVar7.f30788f != null) {
                f fVarH9 = p.h(cVar7);
                if (fVarH9 != null) {
                    p.b(fVar, fVarH9, -this.f31169b.f30807P[3].d());
                    c(fVar2, fVar, -1, gVar);
                    if (this.f31169b.f30796E) {
                        c(fVar3, fVar2, 1, this.f31154l);
                    }
                }
            } else {
                c cVar8 = cVarArr2[4];
                if (cVar8.f30788f != null) {
                    f fVarH10 = p.h(cVar8);
                    if (fVarH10 != null) {
                        p.b(fVar3, fVarH10, 0);
                        c(fVar2, fVar3, -1, this.f31154l);
                        c(fVar, fVar2, 1, gVar);
                    }
                } else if (!(dVar16 instanceof g) && (dVar3 = dVar16.f30810S) != null) {
                    p.b(fVar2, dVar3.f30826e.f31175h, dVar16.q());
                    c(fVar, fVar2, 1, gVar);
                    if (this.f31169b.f30796E) {
                        c(fVar3, fVar2, 1, this.f31154l);
                    }
                    if (this.f31171d == 3) {
                        d dVar18 = this.f31169b;
                        if (dVar18.f30813V > 0.0f) {
                            k kVar2 = dVar18.f30824d;
                            if (kVar2.f31171d == 3) {
                                kVar2.f31172e.f31146k.add(gVar);
                                gVar.f31147l.add(this.f31169b.f30824d.f31172e);
                                gVar.f31136a = this;
                            }
                        }
                    }
                }
            }
        }
        if (gVar.f31147l.size() == 0) {
            gVar.f31138c = true;
        }
    }

    @Override // p178x.p
    public final void e() {
        f fVar = this.f31175h;
        if (fVar.f31145j) {
            this.f31169b.f30816Y = fVar.f31142g;
        }
    }

    @Override // p178x.p
    public final void f() {
        this.f31170c = null;
        this.f31175h.c();
        this.f31176i.c();
        this.f31153k.c();
        this.f31172e.c();
        this.f31174g = false;
    }

    @Override // p178x.p
    public final boolean k() {
        return this.f31171d != 3 || this.f31169b.f30851s == 0;
    }

    public final void m() {
        this.f31174g = false;
        f fVar = this.f31175h;
        fVar.c();
        fVar.f31145j = false;
        f fVar2 = this.f31176i;
        fVar2.c();
        fVar2.f31145j = false;
        f fVar3 = this.f31153k;
        fVar3.c();
        fVar3.f31145j = false;
        this.f31172e.f31145j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f31169b.f30831g0;
    }
}
