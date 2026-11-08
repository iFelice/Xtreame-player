package H0;

import B0.Z;
import O0.U;
import com.google.android.gms.internal.measurement.H1;
import com.google.protobuf.U2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import p094m0.C3136t;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class p implements U {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f3543G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final t f3544H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f3545I = -1;

    public p(t tVar, int i8) {
        this.f3544H = tVar;
        this.f3543G = i8;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0036  */
    public final void a() {
        H1.d(this.f3545I == -1);
        t tVar = this.f3544H;
        tVar.f();
        tVar.f3599q0.getClass();
        int[] iArr = tVar.f3599q0;
        int i8 = this.f3543G;
        int i9 = iArr[i8];
        if (i9 != -1) {
            boolean[] zArr = tVar.f3602t0;
            if (zArr[i9]) {
                i9 = -2;
            } else {
                zArr[i9] = true;
            }
        } else if (tVar.f3598p0.contains(tVar.f3597o0.a(i8))) {
            i9 = -3;
        } else {
            i9 = -2;
        }
        this.f3545I = i9;
    }

    @Override // O0.U
    public final void b() throws IOException {
        int i8 = this.f3545I;
        t tVar = this.f3544H;
        if (i8 == -2) {
            tVar.f();
            throw new I0.u(tVar.f3597o0.a(this.f3543G).f26860d[0].f27041o, 3);
        }
        if (i8 == -1) {
            tVar.G();
        } else if (i8 != -3) {
            tVar.G();
            tVar.f3584b0[i8].A();
        }
    }

    public final boolean c() {
        int i8 = this.f3545I;
        return (i8 == -1 || i8 == -3 || i8 == -2) ? false : true;
    }

    @Override // O0.U
    public final boolean f() {
        if (this.f3545I != -3) {
            if (c()) {
                int i8 = this.f3545I;
                t tVar = this.f3544H;
                if (tVar.E() || !tVar.f3584b0[i8].y(tVar.f3608z0)) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // O0.U
    public final int j(long j8) {
        if (!c()) {
            return 0;
        }
        int i8 = this.f3545I;
        t tVar = this.f3544H;
        if (tVar.E()) {
            return 0;
        }
        s sVar = tVar.f3584b0[i8];
        int iV = sVar.v(j8, tVar.f3608z0);
        ArrayList arrayList = tVar.f3576T;
        Object next = null;
        if (!(arrayList instanceof Collection)) {
            Iterator it = arrayList.iterator();
            if (it.hasNext()) {
                do {
                    next = it.next();
                } while (it.hasNext());
            }
        } else if (!arrayList.isEmpty()) {
            next = U2.g(arrayList, 1);
        }
        l lVar = (l) next;
        if (lVar != null && !lVar.f()) {
            iV = Math.min(iV, lVar.e(i8) - sVar.t());
        }
        sVar.I(iV);
        return iV;
    }

    @Override // O0.U
    public final int r(Z z7, p171w0.g gVar, int i8) {
        C3136t c3136t;
        int iD = -3;
        if (this.f3545I == -3) {
            gVar.addFlag(4);
            return -4;
        }
        if (c()) {
            int i9 = this.f3545I;
            t tVar = this.f3544H;
            if (!tVar.E()) {
                ArrayList arrayList = tVar.f3576T;
                int i10 = 0;
                if (!arrayList.isEmpty()) {
                    int i11 = 0;
                    loop0: while (i11 < arrayList.size() - 1) {
                        int i12 = ((l) arrayList.get(i11)).f3475Q;
                        int length = tVar.f3584b0.length;
                        for (int i13 = 0; i13 < length; i13++) {
                            if (tVar.f3602t0[i13] && tVar.f3584b0[i13].C() == i12) {
                                break loop0;
                            }
                        }
                        i11++;
                    }
                    M.W(0, i11, arrayList);
                    l lVar = (l) arrayList.get(0);
                    C3136t c3136t2 = lVar.f5723J;
                    if (!c3136t2.equals(tVar.f3595m0)) {
                        tVar.f3573Q.b(tVar.f3564H, c3136t2, lVar.f5724K, lVar.f5725L, lVar.f5726M);
                    }
                    tVar.f3595m0 = c3136t2;
                }
                if ((arrayList.isEmpty() || ((l) arrayList.get(0)).f()) && (iD = tVar.f3584b0[i9].D(z7, gVar, i8, tVar.f3608z0)) == -5) {
                    C3136t c3136tE = z7.f904b;
                    c3136tE.getClass();
                    if (i9 == tVar.f3590h0) {
                        int iY = p190y4.k.y(tVar.f3584b0[i9].C());
                        while (i10 < arrayList.size() && ((l) arrayList.get(i10)).f3475Q != iY) {
                            i10++;
                        }
                        if (i10 < arrayList.size()) {
                            c3136t = ((l) arrayList.get(i10)).f5723J;
                        } else {
                            c3136t = tVar.f3594l0;
                            c3136t.getClass();
                        }
                        c3136tE = c3136tE.e(c3136t);
                    }
                    z7.f904b = c3136tE;
                }
            }
        }
        return iD;
    }
}
