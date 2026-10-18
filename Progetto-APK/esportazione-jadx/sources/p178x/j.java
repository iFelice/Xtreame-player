package p178x;

import java.util.Iterator;
import p170w.a;
import p170w.d;

/* JADX INFO: loaded from: classes.dex */
public final class j extends p {
    @Override // p178x.d
    public final void a(d dVar) {
        a aVar = (a) this.f31169b;
        int i8 = aVar.f30762r0;
        f fVar = this.f31175h;
        Iterator it = fVar.f31147l.iterator();
        int i9 = 0;
        int i10 = -1;
        while (it.hasNext()) {
            int i11 = ((f) it.next()).f31142g;
            if (i10 == -1 || i11 < i10) {
                i10 = i11;
            }
            if (i9 < i11) {
                i9 = i11;
            }
        }
        if (i8 == 0 || i8 == 2) {
            fVar.d(i10 + aVar.f30764t0);
        } else {
            fVar.d(i9 + aVar.f30764t0);
        }
    }

    @Override // p178x.p
    public final void d() {
        d dVar = this.f31169b;
        if (dVar instanceof a) {
            f fVar = this.f31175h;
            fVar.f31137b = true;
            a aVar = (a) dVar;
            int i8 = aVar.f30762r0;
            boolean z7 = aVar.f30763s0;
            int i9 = 0;
            if (i8 == 0) {
                fVar.f31140e = 4;
                while (i9 < aVar.f30887q0) {
                    d dVar2 = aVar.f30886p0[i9];
                    if (z7 || dVar2.f30829f0 != 8) {
                        f fVar2 = dVar2.f30824d.f31175h;
                        fVar2.f31146k.add(fVar);
                        fVar.f31147l.add(fVar2);
                    }
                    i9++;
                }
                m(this.f31169b.f30824d.f31175h);
                m(this.f31169b.f30824d.f31176i);
                return;
            }
            if (i8 == 1) {
                fVar.f31140e = 5;
                while (i9 < aVar.f30887q0) {
                    d dVar3 = aVar.f30886p0[i9];
                    if (z7 || dVar3.f30829f0 != 8) {
                        f fVar3 = dVar3.f30824d.f31176i;
                        fVar3.f31146k.add(fVar);
                        fVar.f31147l.add(fVar3);
                    }
                    i9++;
                }
                m(this.f31169b.f30824d.f31175h);
                m(this.f31169b.f30824d.f31176i);
                return;
            }
            if (i8 == 2) {
                fVar.f31140e = 6;
                while (i9 < aVar.f30887q0) {
                    d dVar4 = aVar.f30886p0[i9];
                    if (z7 || dVar4.f30829f0 != 8) {
                        f fVar4 = dVar4.f30826e.f31175h;
                        fVar4.f31146k.add(fVar);
                        fVar.f31147l.add(fVar4);
                    }
                    i9++;
                }
                m(this.f31169b.f30826e.f31175h);
                m(this.f31169b.f30826e.f31176i);
                return;
            }
            if (i8 != 3) {
                return;
            }
            fVar.f31140e = 7;
            while (i9 < aVar.f30887q0) {
                d dVar5 = aVar.f30886p0[i9];
                if (z7 || dVar5.f30829f0 != 8) {
                    f fVar5 = dVar5.f30826e.f31176i;
                    fVar5.f31146k.add(fVar);
                    fVar.f31147l.add(fVar5);
                }
                i9++;
            }
            m(this.f31169b.f30826e.f31175h);
            m(this.f31169b.f30826e.f31176i);
        }
    }

    @Override // p178x.p
    public final void e() {
        d dVar = this.f31169b;
        if (dVar instanceof a) {
            int i8 = ((a) dVar).f30762r0;
            f fVar = this.f31175h;
            if (i8 == 0 || i8 == 1) {
                dVar.f30815X = fVar.f31142g;
            } else {
                dVar.f30816Y = fVar.f31142g;
            }
        }
    }

    @Override // p178x.p
    public final void f() {
        this.f31170c = null;
        this.f31175h.c();
    }

    @Override // p178x.p
    public final boolean k() {
        return false;
    }

    public final void m(f fVar) {
        f fVar2 = this.f31175h;
        fVar2.f31146k.add(fVar);
        fVar.f31147l.add(fVar2);
    }
}
