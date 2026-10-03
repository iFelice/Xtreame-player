package p156u;

import java.util.ArrayList;
import java.util.Arrays;
import p096m2.o;
import p096m2.u;
import p170w.c;

/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static boolean f30335q = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final g f30339d;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final o f30348m;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public c f30351p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f30336a = 1000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f30337b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f30338c = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f30340e = 32;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f30341f = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f30343h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean[] f30344i = new boolean[32];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f30345j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f30346k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f30347l = 32;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public i[] f30349n = new i[1000];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f30350o = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c[] f30342g = new c[32];

    public d() {
        s();
        o oVar = new o(1);
        this.f30348m = oVar;
        g gVar = new g(oVar);
        gVar.f30357f = new i[128];
        gVar.f30358g = new i[128];
        gVar.f30359h = 0;
        gVar.f30360i = new u(gVar, gVar);
        this.f30339d = gVar;
        this.f30351p = new c(oVar);
    }

    public static int n(c cVar) {
        i iVar = cVar.f30791i;
        if (iVar != null) {
            return (int) (iVar.f30366K + 0.5f);
        }
        return 0;
    }

    public final i a(int i8) {
        i iVar = (i) ((e) this.f30348m.f27238I).h();
        if (iVar == null) {
            iVar = new i(i8);
            iVar.f30373R = i8;
        } else {
            iVar.c();
            iVar.f30373R = i8;
        }
        int i9 = this.f30350o;
        int i10 = this.f30336a;
        if (i9 >= i10) {
            int i11 = i10 * 2;
            this.f30336a = i11;
            this.f30349n = (i[]) Arrays.copyOf(this.f30349n, i11);
        }
        i[] iVarArr = this.f30349n;
        int i12 = this.f30350o;
        this.f30350o = i12 + 1;
        iVarArr[i12] = iVar;
        return iVar;
    }

    public final void b(i iVar, i iVar2, int i8, float f8, i iVar3, i iVar4, int i9, int i10) {
        c cVarL = l();
        if (iVar2 == iVar3) {
            cVarL.f30333d.j(iVar, 1.0f);
            cVarL.f30333d.j(iVar4, 1.0f);
            cVarL.f30333d.j(iVar2, -2.0f);
        } else if (f8 == 0.5f) {
            cVarL.f30333d.j(iVar, 1.0f);
            cVarL.f30333d.j(iVar2, -1.0f);
            cVarL.f30333d.j(iVar3, -1.0f);
            cVarL.f30333d.j(iVar4, 1.0f);
            if (i8 > 0 || i9 > 0) {
                cVarL.f30331b = (-i8) + i9;
            }
        } else if (f8 <= 0.0f) {
            cVarL.f30333d.j(iVar, -1.0f);
            cVarL.f30333d.j(iVar2, 1.0f);
            cVarL.f30331b = i8;
        } else if (f8 >= 1.0f) {
            cVarL.f30333d.j(iVar4, -1.0f);
            cVarL.f30333d.j(iVar3, 1.0f);
            cVarL.f30331b = -i9;
        } else {
            float f9 = 1.0f - f8;
            cVarL.f30333d.j(iVar, f9 * 1.0f);
            cVarL.f30333d.j(iVar2, f9 * (-1.0f));
            cVarL.f30333d.j(iVar3, (-1.0f) * f8);
            cVarL.f30333d.j(iVar4, 1.0f * f8);
            if (i8 > 0 || i9 > 0) {
                cVarL.f30331b = (i9 * f8) + ((-i8) * f9);
            }
        }
        if (i10 != 8) {
            cVarL.a(this, i10);
        }
        c(cVarL);
    }

    /* JADX WARN: Code duplicated, block: B:115:0x019b  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:54:0x00be  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    public final void c(c cVar) {
        boolean z7;
        boolean z8;
        i iVarF;
        ArrayList arrayList;
        if (this.f30346k + 1 >= this.f30347l || this.f30345j + 1 >= this.f30341f) {
            o();
        }
        if (!cVar.f30334e) {
            if (this.f30342g.length != 0) {
                boolean z9 = false;
                while (!z9) {
                    int iB = cVar.f30333d.b();
                    int i8 = 0;
                    while (true) {
                        arrayList = cVar.f30332c;
                        if (i8 >= iB) {
                            break;
                        }
                        i iVarD = cVar.f30333d.d(i8);
                        if (iVarD.f30364I != -1 || iVarD.f30367L) {
                            arrayList.add(iVarD);
                        }
                        i8++;
                    }
                    int size = arrayList.size();
                    if (size > 0) {
                        for (int i9 = 0; i9 < size; i9++) {
                            i iVar = (i) arrayList.get(i9);
                            if (iVar.f30367L) {
                                cVar.h(this, iVar, true);
                            } else {
                                cVar.i(this, this.f30342g[iVar.f30364I], true);
                            }
                        }
                        arrayList.clear();
                    } else {
                        z9 = true;
                    }
                }
                if (cVar.f30330a != null && cVar.f30333d.b() == 0) {
                    cVar.f30334e = true;
                    this.f30337b = true;
                }
            }
            if (cVar.e()) {
                return;
            }
            float f8 = cVar.f30331b;
            if (f8 < 0.0f) {
                cVar.f30331b = f8 * (-1.0f);
                cVar.f30333d.e();
            }
            int iB2 = cVar.f30333d.b();
            i iVar2 = null;
            i iVar3 = null;
            float f9 = 0.0f;
            boolean z10 = false;
            float f10 = 0.0f;
            boolean z11 = false;
            for (int i10 = 0; i10 < iB2; i10++) {
                float f11 = cVar.f30333d.f(i10);
                i iVarD2 = cVar.f30333d.d(i10);
                if (iVarD2.f30373R == 1) {
                    if (iVar2 == null) {
                        if (iVarD2.f30372Q <= 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        iVar2 = iVarD2;
                        f9 = f11;
                    } else if (f9 > f11) {
                        if (iVarD2.f30372Q <= 1) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        iVar2 = iVarD2;
                        f9 = f11;
                    } else if (!z10 && iVarD2.f30372Q <= 1) {
                        iVar2 = iVarD2;
                        f9 = f11;
                        z10 = true;
                    }
                } else if (iVar2 == null && f11 < 0.0f) {
                    if (iVar3 == null) {
                        if (iVarD2.f30372Q <= 1) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        iVar3 = iVarD2;
                        f10 = f11;
                    } else if (f10 > f11) {
                        if (iVarD2.f30372Q <= 1) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        iVar3 = iVarD2;
                        f10 = f11;
                    } else if (!z11 && iVarD2.f30372Q <= 1) {
                        iVar3 = iVarD2;
                        f10 = f11;
                        z11 = true;
                    }
                }
            }
            if (iVar2 == null) {
                iVar2 = iVar3;
            }
            if (iVar2 == null) {
                z7 = true;
            } else {
                cVar.g(iVar2);
                z7 = false;
            }
            if (cVar.f30333d.b() == 0) {
                cVar.f30334e = true;
            }
            if (z7) {
                if (this.f30345j + 1 >= this.f30341f) {
                    o();
                }
                i iVarA = a(3);
                int i11 = this.f30338c + 1;
                this.f30338c = i11;
                this.f30345j++;
                iVarA.f30363H = i11;
                o oVar = this.f30348m;
                ((i[]) oVar.f27239J)[i11] = iVarA;
                cVar.f30330a = iVarA;
                int i12 = this.f30346k;
                h(cVar);
                if (this.f30346k == i12 + 1) {
                    c cVar2 = this.f30351p;
                    cVar2.getClass();
                    cVar2.f30330a = null;
                    cVar2.f30333d.clear();
                    for (int i13 = 0; i13 < cVar.f30333d.b(); i13++) {
                        cVar2.f30333d.h(cVar.f30333d.d(i13), cVar.f30333d.f(i13), true);
                    }
                    r(this.f30351p);
                    if (iVarA.f30364I == -1) {
                        if (cVar.f30330a == iVarA && (iVarF = cVar.f(null, iVarA)) != null) {
                            cVar.g(iVarF);
                        }
                        if (!cVar.f30334e) {
                            cVar.f30330a.e(this, cVar);
                        }
                        ((e) oVar.f27237H).a(cVar);
                        this.f30346k--;
                    }
                    z8 = true;
                } else {
                    z8 = false;
                }
            } else {
                z8 = false;
            }
            i iVar4 = cVar.f30330a;
            if (iVar4 == null) {
                return;
            }
            if ((iVar4.f30373R != 1 && cVar.f30331b < 0.0f) || z8) {
                return;
            }
        }
        h(cVar);
    }

    public final void d(i iVar, int i8) {
        int i9 = iVar.f30364I;
        if (i9 == -1) {
            iVar.d(this, i8);
            for (int i10 = 0; i10 < this.f30338c + 1; i10++) {
                i iVar2 = ((i[]) this.f30348m.f27239J)[i10];
            }
            return;
        }
        if (i9 == -1) {
            c cVarL = l();
            cVarL.f30330a = iVar;
            float f8 = i8;
            iVar.f30366K = f8;
            cVarL.f30331b = f8;
            cVarL.f30334e = true;
            c(cVarL);
            return;
        }
        c cVar = this.f30342g[i9];
        if (cVar.f30334e) {
            cVar.f30331b = i8;
            return;
        }
        if (cVar.f30333d.b() == 0) {
            cVar.f30334e = true;
            cVar.f30331b = i8;
            return;
        }
        c cVarL2 = l();
        if (i8 < 0) {
            cVarL2.f30331b = i8 * (-1);
            cVarL2.f30333d.j(iVar, 1.0f);
        } else {
            cVarL2.f30331b = i8;
            cVarL2.f30333d.j(iVar, -1.0f);
        }
        c(cVarL2);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0037  */
    public final void e(i iVar, i iVar2, int i8, int i9) {
        boolean z7;
        if (i9 == 8 && iVar2.f30367L && iVar.f30364I == -1) {
            iVar.d(this, iVar2.f30366K + i8);
            return;
        }
        c cVarL = l();
        if (i8 == 0) {
            cVarL.f30333d.j(iVar, -1.0f);
            cVarL.f30333d.j(iVar2, 1.0f);
        } else {
            if (i8 < 0) {
                i8 *= -1;
                z7 = true;
            } else {
                z7 = false;
            }
            cVarL.f30331b = i8;
            if (z7) {
                cVarL.f30333d.j(iVar, 1.0f);
                cVarL.f30333d.j(iVar2, -1.0f);
            } else {
                cVarL.f30333d.j(iVar, -1.0f);
                cVarL.f30333d.j(iVar2, 1.0f);
            }
        }
        if (i9 != 8) {
            cVarL.a(this, i9);
        }
        c(cVarL);
    }

    public final void f(i iVar, i iVar2, int i8, int i9) {
        c cVarL = l();
        i iVarM = m();
        iVarM.f30365J = 0;
        cVarL.b(iVar, iVar2, iVarM, i8);
        if (i9 != 8) {
            cVarL.f30333d.j(j(i9), (int) (cVarL.f30333d.i(iVarM) * (-1.0f)));
        }
        c(cVarL);
    }

    public final void g(i iVar, i iVar2, int i8, int i9) {
        c cVarL = l();
        i iVarM = m();
        iVarM.f30365J = 0;
        cVarL.c(iVar, iVar2, iVarM, i8);
        if (i9 != 8) {
            cVarL.f30333d.j(j(i9), (int) (cVarL.f30333d.i(iVarM) * (-1.0f)));
        }
        c(cVarL);
    }

    public final void h(c cVar) {
        int i8;
        if (cVar.f30334e) {
            cVar.f30330a.d(this, cVar.f30331b);
        } else {
            c[] cVarArr = this.f30342g;
            int i9 = this.f30346k;
            cVarArr[i9] = cVar;
            i iVar = cVar.f30330a;
            iVar.f30364I = i9;
            this.f30346k = i9 + 1;
            iVar.e(this, cVar);
        }
        if (this.f30337b) {
            int i10 = 0;
            while (i10 < this.f30346k) {
                if (this.f30342g[i10] == null) {
                    System.out.println("WTF");
                }
                c cVar2 = this.f30342g[i10];
                if (cVar2 != null && cVar2.f30334e) {
                    cVar2.f30330a.d(this, cVar2.f30331b);
                    ((e) this.f30348m.f27237H).a(cVar2);
                    this.f30342g[i10] = null;
                    int i11 = i10 + 1;
                    int i12 = i11;
                    while (true) {
                        i8 = this.f30346k;
                        if (i11 >= i8) {
                            break;
                        }
                        c[] cVarArr2 = this.f30342g;
                        int i13 = i11 - 1;
                        c cVar3 = cVarArr2[i11];
                        cVarArr2[i13] = cVar3;
                        i iVar2 = cVar3.f30330a;
                        if (iVar2.f30364I == i11) {
                            iVar2.f30364I = i13;
                        }
                        i12 = i11;
                        i11++;
                    }
                    if (i12 < i8) {
                        this.f30342g[i12] = null;
                    }
                    this.f30346k = i8 - 1;
                    i10--;
                }
                i10++;
            }
            this.f30337b = false;
        }
    }

    public final void i() {
        for (int i8 = 0; i8 < this.f30346k; i8++) {
            c cVar = this.f30342g[i8];
            cVar.f30330a.f30366K = cVar.f30331b;
        }
    }

    public final i j(int i8) {
        if (this.f30345j + 1 >= this.f30341f) {
            o();
        }
        i iVarA = a(4);
        int i9 = this.f30338c + 1;
        this.f30338c = i9;
        this.f30345j++;
        iVarA.f30363H = i9;
        iVarA.f30365J = i8;
        ((i[]) this.f30348m.f27239J)[i9] = iVarA;
        g gVar = this.f30339d;
        gVar.f30360i.f27278H = iVarA;
        float[] fArr = iVarA.f30369N;
        Arrays.fill(fArr, 0.0f);
        fArr[iVarA.f30365J] = 1.0f;
        gVar.j(iVarA);
        return iVarA;
    }

    public final i k(Object obj) {
        i iVar = null;
        if (obj == null) {
            return null;
        }
        if (this.f30345j + 1 >= this.f30341f) {
            o();
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            iVar = cVar.f30791i;
            if (iVar == null) {
                cVar.h();
                iVar = cVar.f30791i;
            }
            int i8 = iVar.f30363H;
            o oVar = this.f30348m;
            if (i8 == -1 || i8 > this.f30338c || ((i[]) oVar.f27239J)[i8] == null) {
                if (i8 != -1) {
                    iVar.c();
                }
                int i9 = this.f30338c + 1;
                this.f30338c = i9;
                this.f30345j++;
                iVar.f30363H = i9;
                iVar.f30373R = 1;
                ((i[]) oVar.f27239J)[i9] = iVar;
            }
        }
        return iVar;
    }

    public final c l() {
        o oVar = this.f30348m;
        c cVar = (c) ((e) oVar.f27237H).h();
        if (cVar == null) {
            return new c(oVar);
        }
        cVar.f30330a = null;
        cVar.f30333d.clear();
        cVar.f30331b = 0.0f;
        cVar.f30334e = false;
        return cVar;
    }

    public final i m() {
        if (this.f30345j + 1 >= this.f30341f) {
            o();
        }
        i iVarA = a(3);
        int i8 = this.f30338c + 1;
        this.f30338c = i8;
        this.f30345j++;
        iVarA.f30363H = i8;
        ((i[]) this.f30348m.f27239J)[i8] = iVarA;
        return iVarA;
    }

    public final void o() {
        int i8 = this.f30340e * 2;
        this.f30340e = i8;
        this.f30342g = (c[]) Arrays.copyOf(this.f30342g, i8);
        o oVar = this.f30348m;
        oVar.f27239J = (i[]) Arrays.copyOf((i[]) oVar.f27239J, this.f30340e);
        int i9 = this.f30340e;
        this.f30344i = new boolean[i9];
        this.f30341f = i9;
        this.f30347l = i9;
    }

    public final void p() {
        g gVar = this.f30339d;
        if (gVar.e()) {
            i();
            return;
        }
        if (!this.f30343h) {
            q(gVar);
            return;
        }
        for (int i8 = 0; i8 < this.f30346k; i8++) {
            if (!this.f30342g[i8].f30334e) {
                q(gVar);
                return;
            }
        }
        i();
    }

    public final void q(g gVar) {
        for (int i8 = 0; i8 < this.f30346k; i8++) {
            c cVar = this.f30342g[i8];
            int i9 = 1;
            if (cVar.f30330a.f30373R != 1) {
                float f8 = 0.0f;
                if (cVar.f30331b < 0.0f) {
                    boolean z7 = false;
                    int i10 = 0;
                    while (!z7) {
                        i10 += i9;
                        float f9 = Float.MAX_VALUE;
                        int i11 = 0;
                        int i12 = -1;
                        int i13 = -1;
                        int i14 = 0;
                        while (i11 < this.f30346k) {
                            c cVar2 = this.f30342g[i11];
                            if (cVar2.f30330a.f30373R != i9 && !cVar2.f30334e && cVar2.f30331b < f8) {
                                int iB = cVar2.f30333d.b();
                                int i15 = 0;
                                while (i15 < iB) {
                                    i iVarD = cVar2.f30333d.d(i15);
                                    float fI = cVar2.f30333d.i(iVarD);
                                    if (fI > f8) {
                                        for (int i16 = 0; i16 < 9; i16++) {
                                            float f10 = iVarD.f30368M[i16] / fI;
                                            if ((f10 < f9 && i16 == i14) || i16 > i14) {
                                                i14 = i16;
                                                i13 = iVarD.f30363H;
                                                i12 = i11;
                                                f9 = f10;
                                            }
                                        }
                                    }
                                    i15++;
                                    f8 = 0.0f;
                                }
                            }
                            i11++;
                            f8 = 0.0f;
                            i9 = 1;
                        }
                        if (i12 != -1) {
                            c cVar3 = this.f30342g[i12];
                            cVar3.f30330a.f30364I = -1;
                            cVar3.g(((i[]) this.f30348m.f27239J)[i13]);
                            i iVar = cVar3.f30330a;
                            iVar.f30364I = i12;
                            iVar.e(this, cVar3);
                        } else {
                            z7 = true;
                        }
                        if (i10 > this.f30345j / 2) {
                            z7 = true;
                        }
                        f8 = 0.0f;
                        i9 = 1;
                    }
                    break;
                }
            }
        }
        r(gVar);
        i();
    }

    public final void r(c cVar) {
        for (int i8 = 0; i8 < this.f30345j; i8++) {
            this.f30344i[i8] = false;
        }
        boolean z7 = false;
        int i9 = 0;
        while (!z7) {
            i9++;
            if (i9 >= this.f30345j * 2) {
                return;
            }
            i iVar = cVar.f30330a;
            if (iVar != null) {
                this.f30344i[iVar.f30363H] = true;
            }
            i iVarD = cVar.d(this.f30344i);
            if (iVarD != null) {
                boolean[] zArr = this.f30344i;
                int i10 = iVarD.f30363H;
                if (zArr[i10]) {
                    return;
                } else {
                    zArr[i10] = true;
                }
            }
            if (iVarD != null) {
                float f8 = Float.MAX_VALUE;
                int i11 = -1;
                for (int i12 = 0; i12 < this.f30346k; i12++) {
                    c cVar2 = this.f30342g[i12];
                    if (cVar2.f30330a.f30373R != 1 && !cVar2.f30334e && cVar2.f30333d.c(iVarD)) {
                        float fI = cVar2.f30333d.i(iVarD);
                        if (fI < 0.0f) {
                            float f9 = (-cVar2.f30331b) / fI;
                            if (f9 < f8) {
                                i11 = i12;
                                f8 = f9;
                            }
                        }
                    }
                }
                if (i11 > -1) {
                    c cVar3 = this.f30342g[i11];
                    cVar3.f30330a.f30364I = -1;
                    cVar3.g(iVarD);
                    i iVar2 = cVar3.f30330a;
                    iVar2.f30364I = i11;
                    iVar2.e(this, cVar3);
                }
            } else {
                z7 = true;
            }
        }
    }

    public final void s() {
        for (int i8 = 0; i8 < this.f30346k; i8++) {
            c cVar = this.f30342g[i8];
            if (cVar != null) {
                ((e) this.f30348m.f27237H).a(cVar);
            }
            this.f30342g[i8] = null;
        }
    }

    public final void t() {
        o oVar;
        int i8 = 0;
        while (true) {
            oVar = this.f30348m;
            i[] iVarArr = (i[]) oVar.f27239J;
            if (i8 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i8];
            if (iVar != null) {
                iVar.c();
            }
            i8++;
        }
        e eVar = (e) oVar.f27238I;
        i[] iVarArr2 = this.f30349n;
        int length = this.f30350o;
        eVar.getClass();
        if (length > iVarArr2.length) {
            length = iVarArr2.length;
        }
        for (int i9 = 0; i9 < length; i9++) {
            i iVar2 = iVarArr2[i9];
            int i10 = eVar.f30354I;
            Object[] objArr = eVar.f30353H;
            if (i10 < objArr.length) {
                objArr[i10] = iVar2;
                eVar.f30354I = i10 + 1;
            }
        }
        this.f30350o = 0;
        Arrays.fill((i[]) oVar.f27239J, (Object) null);
        this.f30338c = 0;
        g gVar = this.f30339d;
        gVar.f30359h = 0;
        gVar.f30331b = 0.0f;
        this.f30345j = 1;
        for (int i11 = 0; i11 < this.f30346k; i11++) {
            c cVar = this.f30342g[i11];
        }
        s();
        this.f30346k = 0;
        this.f30351p = new c(oVar);
    }
}
