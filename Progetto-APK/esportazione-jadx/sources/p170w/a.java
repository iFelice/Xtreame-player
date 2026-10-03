package p170w;

import com.google.protobuf.U2;
import p000a.r;
import p156u.c;
import p156u.d;
import p156u.i;

/* JADX INFO: loaded from: classes.dex */
public final class a extends h {

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f30762r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public boolean f30763s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f30764t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f30765u0;

    public final boolean O() {
        int i8;
        int i9;
        int i10;
        int i11 = 0;
        boolean z7 = true;
        while (true) {
            i8 = this.f30887q0;
            if (i11 >= i8) {
                break;
            }
            d dVar = this.f30886p0[i11];
            if ((this.f30763s0 || dVar.c()) && ((((i9 = this.f30762r0) == 0 || i9 == 1) && !dVar.y()) || (((i10 = this.f30762r0) == 2 || i10 == 3) && !dVar.z()))) {
                z7 = false;
            }
            i11++;
        }
        if (!z7 || i8 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z8 = false;
        for (int i12 = 0; i12 < this.f30887q0; i12++) {
            d dVar2 = this.f30886p0[i12];
            if (this.f30763s0 || dVar2.c()) {
                if (!z8) {
                    int i13 = this.f30762r0;
                    if (i13 == 0) {
                        iMax = dVar2.g(2).c();
                    } else if (i13 == 1) {
                        iMax = dVar2.g(4).c();
                    } else if (i13 == 2) {
                        iMax = dVar2.g(3).c();
                    } else if (i13 == 3) {
                        iMax = dVar2.g(5).c();
                    }
                    z8 = true;
                }
                int i14 = this.f30762r0;
                if (i14 == 0) {
                    iMax = Math.min(iMax, dVar2.g(2).c());
                } else if (i14 == 1) {
                    iMax = Math.max(iMax, dVar2.g(4).c());
                } else if (i14 == 2) {
                    iMax = Math.min(iMax, dVar2.g(3).c());
                } else if (i14 == 3) {
                    iMax = Math.max(iMax, dVar2.g(5).c());
                }
            }
        }
        int i15 = iMax + this.f30764t0;
        int i16 = this.f30762r0;
        if (i16 == 0 || i16 == 1) {
            F(i15, i15);
        } else {
            G(i15, i15);
        }
        this.f30765u0 = true;
        return true;
    }

    public final int P() {
        int i8 = this.f30762r0;
        if (i8 == 0 || i8 == 1) {
            return 0;
        }
        return (i8 == 2 || i8 == 3) ? 1 : -1;
    }

    @Override // p170w.d
    public final void b(d dVar, boolean z7) {
        boolean z8;
        int i8;
        int i9;
        c[] cVarArr = this.f30807P;
        c cVar = this.f30799H;
        cVarArr[0] = cVar;
        c cVar2 = this.f30800I;
        int i10 = 2;
        cVarArr[2] = cVar2;
        c cVar3 = this.f30801J;
        cVarArr[1] = cVar3;
        c cVar4 = this.f30802K;
        cVarArr[3] = cVar4;
        for (c cVar5 : cVarArr) {
            cVar5.f30791i = dVar.k(cVar5);
        }
        int i11 = this.f30762r0;
        if (i11 < 0 || i11 >= 4) {
            return;
        }
        c cVar6 = cVarArr[i11];
        if (!this.f30765u0) {
            O();
        }
        if (this.f30765u0) {
            this.f30765u0 = false;
            int i12 = this.f30762r0;
            if (i12 == 0 || i12 == 1) {
                dVar.d(cVar.f30791i, this.f30815X);
                dVar.d(cVar3.f30791i, this.f30815X);
                return;
            } else {
                if (i12 == 2 || i12 == 3) {
                    dVar.d(cVar2.f30791i, this.f30816Y);
                    dVar.d(cVar4.f30791i, this.f30816Y);
                    return;
                }
                return;
            }
        }
        int i13 = 0;
        while (true) {
            if (i13 >= this.f30887q0) {
                z8 = false;
                break;
            }
            d dVar2 = this.f30886p0[i13];
            if ((this.f30763s0 || dVar2.c()) && ((((i9 = this.f30762r0) == 0 || i9 == 1) && dVar2.f30847o0[0] == 3 && dVar2.f30799H.f30788f != null && dVar2.f30801J.f30788f != null) || ((i9 == 2 || i9 == 3) && dVar2.f30847o0[1] == 3 && dVar2.f30800I.f30788f != null && dVar2.f30802K.f30788f != null))) {
                z8 = true;
                break;
            }
            i13++;
        }
        boolean z9 = cVar.e() || cVar3.e();
        boolean z10 = cVar2.e() || cVar4.e();
        int i14 = (z8 || !(((i8 = this.f30762r0) == 0 && z9) || ((i8 == 2 && z10) || ((i8 == 1 && z9) || (i8 == 3 && z10))))) ? 4 : 5;
        int i15 = 0;
        while (i15 < this.f30887q0) {
            d dVar3 = this.f30886p0[i15];
            if (this.f30763s0 || dVar3.c()) {
                i iVarK = dVar.k(dVar3.f30807P[this.f30762r0]);
                int i16 = this.f30762r0;
                c cVar7 = dVar3.f30807P[i16];
                cVar7.f30791i = iVarK;
                c cVar8 = cVar7.f30788f;
                int i17 = (cVar8 == null || cVar8.f30786d != this) ? 0 : cVar7.f30789g;
                if (i16 == 0 || i16 == i10) {
                    i iVar = cVar6.f30791i;
                    int i18 = this.f30764t0 - i17;
                    c cVarL = dVar.l();
                    i iVarM = dVar.m();
                    iVarM.f30365J = 0;
                    cVarL.c(iVar, iVarK, iVarM, i18);
                    dVar.c(cVarL);
                } else {
                    i iVar2 = cVar6.f30791i;
                    int i19 = this.f30764t0 + i17;
                    c cVarL2 = dVar.l();
                    i iVarM2 = dVar.m();
                    iVarM2.f30365J = 0;
                    cVarL2.b(iVar2, iVarK, iVarM2, i19);
                    dVar.c(cVarL2);
                }
                dVar.e(cVar6.f30791i, iVarK, this.f30764t0 + i17, i14);
            }
            i15++;
            i10 = 2;
        }
        int i20 = this.f30762r0;
        if (i20 == 0) {
            dVar.e(cVar3.f30791i, cVar.f30791i, 0, 8);
            dVar.e(cVar.f30791i, this.f30810S.f30801J.f30791i, 0, 4);
            dVar.e(cVar.f30791i, this.f30810S.f30799H.f30791i, 0, 0);
            return;
        }
        if (i20 == 1) {
            dVar.e(cVar.f30791i, cVar3.f30791i, 0, 8);
            dVar.e(cVar.f30791i, this.f30810S.f30799H.f30791i, 0, 4);
            dVar.e(cVar.f30791i, this.f30810S.f30801J.f30791i, 0, 0);
        } else if (i20 == 2) {
            dVar.e(cVar4.f30791i, cVar2.f30791i, 0, 8);
            dVar.e(cVar2.f30791i, this.f30810S.f30802K.f30791i, 0, 4);
            dVar.e(cVar2.f30791i, this.f30810S.f30800I.f30791i, 0, 0);
        } else if (i20 == 3) {
            dVar.e(cVar2.f30791i, cVar4.f30791i, 0, 8);
            dVar.e(cVar2.f30791i, this.f30810S.f30800I.f30791i, 0, 4);
            dVar.e(cVar2.f30791i, this.f30810S.f30802K.f30791i, 0, 0);
        }
    }

    @Override // p170w.d
    public final boolean c() {
        return true;
    }

    @Override // p170w.d
    public final String toString() {
        String strJ = r.j(new StringBuilder("[Barrier] "), this.f30831g0, " {");
        for (int i8 = 0; i8 < this.f30887q0; i8++) {
            d dVar = this.f30886p0[i8];
            if (i8 > 0) {
                strJ = U2.A(strJ, ", ");
            }
            StringBuilder sbO = U2.o(strJ);
            sbO.append(dVar.f30831g0);
            strJ = sbO.toString();
        }
        return U2.A(strJ, "}");
    }

    @Override // p170w.d
    public final boolean y() {
        return this.f30765u0;
    }

    @Override // p170w.d
    public final boolean z() {
        return this.f30765u0;
    }
}
