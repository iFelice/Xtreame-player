package p178x;

import p156u.h;
import p170w.c;
import p170w.d;

/* JADX INFO: loaded from: classes.dex */
public abstract class p implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f31168a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public d f31169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public l f31170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f31171d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final g f31172e = new g(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f31173f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f31174g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final f f31175h = new f(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f31176i = new f(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f31177j = 1;

    public p(d dVar) {
        this.f31169b = dVar;
    }

    public static void b(f fVar, f fVar2, int i8) {
        fVar.f31147l.add(fVar2);
        fVar.f31141f = i8;
        fVar2.f31146k.add(fVar);
    }

    public static f h(c cVar) {
        c cVar2 = cVar.f30788f;
        if (cVar2 == null) {
            return null;
        }
        int iB = h.b(cVar2.f30787e);
        d dVar = cVar2.f30786d;
        if (iB == 1) {
            return dVar.f30824d.f31175h;
        }
        if (iB == 2) {
            return dVar.f30826e.f31175h;
        }
        if (iB == 3) {
            return dVar.f30824d.f31176i;
        }
        if (iB == 4) {
            return dVar.f30826e.f31176i;
        }
        if (iB != 5) {
            return null;
        }
        return dVar.f30826e.f31153k;
    }

    public static f i(c cVar, int i8) {
        c cVar2 = cVar.f30788f;
        if (cVar2 == null) {
            return null;
        }
        d dVar = cVar2.f30786d;
        p pVar = i8 == 0 ? dVar.f30824d : dVar.f30826e;
        int iB = h.b(cVar2.f30787e);
        if (iB == 1 || iB == 2) {
            return pVar.f31175h;
        }
        if (iB == 3 || iB == 4) {
            return pVar.f31176i;
        }
        return null;
    }

    public final void c(f fVar, f fVar2, int i8, g gVar) {
        fVar.f31147l.add(fVar2);
        fVar.f31147l.add(this.f31172e);
        fVar.f31143h = i8;
        fVar.f31144i = gVar;
        fVar2.f31146k.add(fVar);
        gVar.f31146k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i8, int i9) {
        int iMax;
        if (i9 == 0) {
            d dVar = this.f31169b;
            int i10 = dVar.f30854v;
            iMax = Math.max(dVar.f30853u, i8);
            if (i10 > 0) {
                iMax = Math.min(i10, i8);
            }
            if (iMax == i8) {
                return i8;
            }
        } else {
            d dVar2 = this.f31169b;
            int i11 = dVar2.f30857y;
            iMax = Math.max(dVar2.f30856x, i8);
            if (i11 > 0) {
                iMax = Math.min(i11, i8);
            }
            if (iMax == i8) {
                return i8;
            }
        }
        return iMax;
    }

    public long j() {
        g gVar = this.f31172e;
        if (gVar.f31145j) {
            return gVar.f31142g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code duplicated, block: B:28:0x0054 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:32:0x005e  */
    /* JADX WARN: Code duplicated, block: B:34:0x0062  */
    /* JADX WARN: Code duplicated, block: B:35:0x0069  */
    public final void l(c cVar, c cVar2, int i8) {
        g gVar;
        float f8;
        int i9;
        f fVarH = h(cVar);
        f fVarH2 = h(cVar2);
        if (fVarH.f31145j && fVarH2.f31145j) {
            int iD = cVar.d() + fVarH.f31142g;
            int iD2 = fVarH2.f31142g - cVar2.d();
            int i10 = iD2 - iD;
            g gVar2 = this.f31172e;
            if (!gVar2.f31145j && this.f31171d == 3) {
                int i11 = this.f31168a;
                if (i11 == 0) {
                    gVar2.d(g(i10, i8));
                } else if (i11 == 1) {
                    gVar2.d(Math.min(g(gVar2.f31148m, i8), i10));
                } else if (i11 == 2) {
                    d dVar = this.f31169b;
                    d dVar2 = dVar.f30810S;
                    if (dVar2 != null) {
                        g gVar3 = (i8 == 0 ? dVar2.f30824d : dVar2.f30826e).f31172e;
                        if (gVar3.f31145j) {
                            gVar2.d(g((int) ((gVar3.f31142g * (i8 == 0 ? dVar.f30855w : dVar.f30858z)) + 0.5f), i8));
                        }
                    }
                } else if (i11 == 3) {
                    d dVar3 = this.f31169b;
                    p pVar = dVar3.f30824d;
                    if (pVar.f31171d == 3 && pVar.f31168a == 3) {
                        m mVar = dVar3.f30826e;
                        if (mVar.f31171d != 3 || mVar.f31168a != 3) {
                            if (i8 == 0) {
                                pVar = dVar3.f30826e;
                            }
                            gVar = pVar.f31172e;
                            if (gVar.f31145j) {
                                f8 = dVar3.f30813V;
                                if (i8 == 1) {
                                    i9 = (int) ((gVar.f31142g / f8) + 0.5f);
                                } else {
                                    i9 = (int) ((f8 * gVar.f31142g) + 0.5f);
                                }
                                gVar2.d(i9);
                            }
                        }
                    } else {
                        if (i8 == 0) {
                            pVar = dVar3.f30826e;
                        }
                        gVar = pVar.f31172e;
                        if (gVar.f31145j) {
                            f8 = dVar3.f30813V;
                            if (i8 == 1) {
                                i9 = (int) ((gVar.f31142g / f8) + 0.5f);
                            } else {
                                i9 = (int) ((f8 * gVar.f31142g) + 0.5f);
                            }
                            gVar2.d(i9);
                        }
                    }
                }
            }
            if (gVar2.f31145j) {
                int i12 = gVar2.f31142g;
                f fVar = this.f31176i;
                f fVar2 = this.f31175h;
                if (i12 == i10) {
                    fVar2.d(iD);
                    fVar.d(iD2);
                    return;
                }
                float f9 = i8 == 0 ? this.f31169b.f30823c0 : this.f31169b.f30825d0;
                if (fVarH == fVarH2) {
                    iD = fVarH.f31142g;
                    iD2 = fVarH2.f31142g;
                    f9 = 0.5f;
                }
                fVar2.d((int) ((((iD2 - iD) - i12) * f9) + iD + 0.5f));
                fVar.d(fVar2.f31142g + gVar2.f31142g);
            }
        }
    }
}
