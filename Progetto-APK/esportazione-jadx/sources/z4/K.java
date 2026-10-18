package z4;

import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class K extends B {
    @Override // Q3.b
    public final /* bridge */ /* synthetic */ Q3.b a(Object obj) {
        m0(obj);
        return this;
    }

    public final void m0(Object obj) {
        obj.getClass();
        g0(obj);
    }

    public final L n0() {
        int i8 = this.f31795d;
        if (i8 == 0) {
            int i9 = L.f31811I;
            return j0.f31869P;
        }
        if (i8 != 1) {
            L lQ = L.q(i8, this.f31794c);
            this.f31795d = lQ.size();
            this.f31796e = true;
            return lQ;
        }
        Object obj = this.f31794c[0];
        Objects.requireNonNull(obj);
        int i10 = L.f31811I;
        return new r0(obj);
    }
}
