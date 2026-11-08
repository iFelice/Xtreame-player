package p178x;

import p170w.d;
import p170w.f;

/* JADX INFO: loaded from: classes.dex */
public final class i extends p {
    @Override // p178x.d
    public final void a(d dVar) {
        f fVar = this.f31175h;
        if (fVar.f31138c && !fVar.f31145j) {
            fVar.d((int) ((((f) fVar.f31147l.get(0)).f31142g * ((f) this.f31169b).f30880p0) + 0.5f));
        }
    }

    @Override // p178x.p
    public final void d() {
        d dVar = this.f31169b;
        f fVar = (f) dVar;
        int i8 = fVar.f30881q0;
        int i9 = fVar.f30882r0;
        int i10 = fVar.f30884t0;
        f fVar2 = this.f31175h;
        if (i10 == 1) {
            if (i8 != -1) {
                fVar2.f31147l.add(dVar.f30810S.f30824d.f31175h);
                this.f31169b.f30810S.f30824d.f31175h.f31146k.add(fVar2);
                fVar2.f31141f = i8;
            } else if (i9 != -1) {
                fVar2.f31147l.add(dVar.f30810S.f30824d.f31176i);
                this.f31169b.f30810S.f30824d.f31176i.f31146k.add(fVar2);
                fVar2.f31141f = -i9;
            } else {
                fVar2.f31137b = true;
                fVar2.f31147l.add(dVar.f30810S.f30824d.f31176i);
                this.f31169b.f30810S.f30824d.f31176i.f31146k.add(fVar2);
            }
            m(this.f31169b.f30824d.f31175h);
            m(this.f31169b.f30824d.f31176i);
            return;
        }
        if (i8 != -1) {
            fVar2.f31147l.add(dVar.f30810S.f30826e.f31175h);
            this.f31169b.f30810S.f30826e.f31175h.f31146k.add(fVar2);
            fVar2.f31141f = i8;
        } else if (i9 != -1) {
            fVar2.f31147l.add(dVar.f30810S.f30826e.f31176i);
            this.f31169b.f30810S.f30826e.f31176i.f31146k.add(fVar2);
            fVar2.f31141f = -i9;
        } else {
            fVar2.f31137b = true;
            fVar2.f31147l.add(dVar.f30810S.f30826e.f31176i);
            this.f31169b.f30810S.f30826e.f31176i.f31146k.add(fVar2);
        }
        m(this.f31169b.f30826e.f31175h);
        m(this.f31169b.f30826e.f31176i);
    }

    @Override // p178x.p
    public final void e() {
        d dVar = this.f31169b;
        int i8 = ((f) dVar).f30884t0;
        f fVar = this.f31175h;
        if (i8 == 1) {
            dVar.f30815X = fVar.f31142g;
        } else {
            dVar.f30816Y = fVar.f31142g;
        }
    }

    @Override // p178x.p
    public final void f() {
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
