package p170w;

import java.util.ArrayList;
import p156u.c;
import p156u.d;
import p156u.h;
import p156u.i;

/* JADX INFO: loaded from: classes.dex */
public final class f extends d {

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public float f30880p0 = -1.0f;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public int f30881q0 = -1;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public int f30882r0 = -1;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public c f30883s0 = this.f30800I;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public int f30884t0 = 0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public boolean f30885u0;

    public f() {
        this.f30808Q.clear();
        this.f30808Q.add(this.f30883s0);
        int length = this.f30807P.length;
        for (int i8 = 0; i8 < length; i8++) {
            this.f30807P[i8] = this.f30883s0;
        }
    }

    @Override // p170w.d
    public final void M(d dVar, boolean z7) {
        if (this.f30810S == null) {
            return;
        }
        c cVar = this.f30883s0;
        dVar.getClass();
        int iN = d.n(cVar);
        if (this.f30884t0 == 1) {
            this.f30815X = iN;
            this.f30816Y = 0;
            H(this.f30810S.i());
            K(0);
            return;
        }
        this.f30815X = 0;
        this.f30816Y = iN;
        K(this.f30810S.o());
        H(0);
    }

    public final void N(int i8) {
        this.f30883s0.i(i8);
        this.f30885u0 = true;
    }

    public final void O(int i8) {
        if (this.f30884t0 == i8) {
            return;
        }
        this.f30884t0 = i8;
        ArrayList arrayList = this.f30808Q;
        arrayList.clear();
        if (this.f30884t0 == 1) {
            this.f30883s0 = this.f30799H;
        } else {
            this.f30883s0 = this.f30800I;
        }
        arrayList.add(this.f30883s0);
        c[] cVarArr = this.f30807P;
        int length = cVarArr.length;
        for (int i9 = 0; i9 < length; i9++) {
            cVarArr[i9] = this.f30883s0;
        }
    }

    @Override // p170w.d
    public final void b(d dVar, boolean z7) {
        e eVar = (e) this.f30810S;
        if (eVar == null) {
            return;
        }
        Object objG = eVar.g(2);
        Object objG2 = eVar.g(4);
        d dVar2 = this.f30810S;
        boolean z8 = dVar2 != null && dVar2.f30847o0[0] == 2;
        if (this.f30884t0 == 0) {
            objG = eVar.g(3);
            objG2 = eVar.g(5);
            d dVar3 = this.f30810S;
            z8 = dVar3 != null && dVar3.f30847o0[1] == 2;
        }
        if (this.f30885u0) {
            c cVar = this.f30883s0;
            if (cVar.f30785c) {
                i iVarK = dVar.k(cVar);
                dVar.d(iVarK, this.f30883s0.c());
                if (this.f30881q0 != -1) {
                    if (z8) {
                        dVar.f(dVar.k(objG2), iVarK, 0, 5);
                    }
                } else if (this.f30882r0 != -1 && z8) {
                    i iVarK2 = dVar.k(objG2);
                    dVar.f(iVarK, dVar.k(objG), 0, 5);
                    dVar.f(iVarK2, iVarK, 0, 5);
                }
                this.f30885u0 = false;
                return;
            }
        }
        if (this.f30881q0 != -1) {
            i iVarK3 = dVar.k(this.f30883s0);
            dVar.e(iVarK3, dVar.k(objG), this.f30881q0, 8);
            if (z8) {
                dVar.f(dVar.k(objG2), iVarK3, 0, 5);
                return;
            }
            return;
        }
        if (this.f30882r0 != -1) {
            i iVarK4 = dVar.k(this.f30883s0);
            i iVarK5 = dVar.k(objG2);
            dVar.e(iVarK4, iVarK5, -this.f30882r0, 8);
            if (z8) {
                dVar.f(iVarK4, dVar.k(objG), 0, 5);
                dVar.f(iVarK5, iVarK4, 0, 5);
                return;
            }
            return;
        }
        if (this.f30880p0 != -1.0f) {
            i iVarK6 = dVar.k(this.f30883s0);
            i iVarK7 = dVar.k(objG2);
            float f8 = this.f30880p0;
            c cVarL = dVar.l();
            cVarL.f30333d.j(iVarK6, -1.0f);
            cVarL.f30333d.j(iVarK7, f8);
            dVar.c(cVarL);
        }
    }

    @Override // p170w.d
    public final boolean c() {
        return true;
    }

    @Override // p170w.d
    public final c g(int i8) {
        int iB = h.b(i8);
        if (iB != 1) {
            if (iB != 2) {
                if (iB != 3) {
                    if (iB != 4) {
                        return null;
                    }
                }
            }
            if (this.f30884t0 == 0) {
                return this.f30883s0;
            }
            return null;
        }
        if (this.f30884t0 == 1) {
            return this.f30883s0;
        }
        return null;
    }

    @Override // p170w.d
    public final boolean y() {
        return this.f30885u0;
    }

    @Override // p170w.d
    public final boolean z() {
        return this.f30885u0;
    }
}
