package p112o2;

import D4.b;

/* JADX INFO: loaded from: classes.dex */
public final class j extends h {
    public final boolean j(Object obj) {
        if (obj == null) {
            obj = h.f27863M;
        }
        if (!h.f27862L.l(this, null, obj)) {
            return false;
        }
        h.c(this);
        return true;
    }

    public final boolean k(Throwable th) {
        th.getClass();
        if (!h.f27862L.l(this, null, new b(th))) {
            return false;
        }
        h.c(this);
        return true;
    }

    public final boolean l(b bVar) {
        b bVar2;
        bVar.getClass();
        Object obj = this.f27864G;
        if (obj == null) {
            if (bVar.isDone()) {
                if (!h.f27862L.l(this, null, h.f(bVar))) {
                    return false;
                }
                h.c(this);
            } else {
                e eVar = new e(this, bVar);
                if (h.f27862L.l(this, null, eVar)) {
                    try {
                        bVar.a(eVar, i.f27867G);
                    } catch (Throwable th) {
                        try {
                            bVar2 = new b(th);
                        } catch (Throwable unused) {
                            bVar2 = b.f27844b;
                        }
                        h.f27862L.l(this, eVar, bVar2);
                    }
                } else {
                    obj = this.f27864G;
                }
            }
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        bVar.cancel(((a) obj).f27842a);
        return false;
    }
}
