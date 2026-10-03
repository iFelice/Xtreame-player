package p173w2;

import P2.d;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class l implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final d f31000b = new d(0);

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        int i8 = 0;
        while (true) {
            d dVar = this.f31000b;
            if (i8 >= dVar.f29684I) {
                return;
            }
            k kVar = (k) dVar.f(i8);
            Object objJ = this.f31000b.j(i8);
            j jVar = kVar.f30997b;
            if (kVar.f30999d == null) {
                kVar.f30999d = kVar.f30998c.getBytes(i.f30994a);
            }
            jVar.h(kVar.f30999d, objJ, messageDigest);
            i8++;
        }
    }

    public final Object c(k kVar) {
        d dVar = this.f31000b;
        return dVar.containsKey(kVar) ? dVar.get(kVar) : kVar.f30996a;
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (obj instanceof l) {
            return this.f31000b.equals(((l) obj).f31000b);
        }
        return false;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return this.f31000b.hashCode();
    }

    public final String toString() {
        return "Options{values=" + this.f31000b + '}';
    }
}
