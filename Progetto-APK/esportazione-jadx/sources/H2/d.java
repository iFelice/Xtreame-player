package H2;

import F2.C0194d;
import android.graphics.Bitmap;
import java.security.MessageDigest;
import p173w2.p;
import y2.D;

/* JADX INFO: loaded from: classes.dex */
public final class d implements p {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p f3649b;

    public d(p pVar) {
        p102n0.c.c(pVar, "Argument must not be null");
        this.f3649b = pVar;
    }

    @Override // p173w2.p
    public final D a(com.bumptech.glide.f fVar, D d6, int i8, int i9) {
        c cVar = (c) d6.get();
        D c0194d = new C0194d(cVar.f3639G.f3638a.f3667l, com.bumptech.glide.b.a(fVar).f11497G);
        p pVar = this.f3649b;
        D dA = pVar.a(fVar, c0194d, i8, i9);
        if (!c0194d.equals(dA)) {
            c0194d.b();
        }
        cVar.f3639G.f3638a.c(pVar, (Bitmap) dA.get());
        return d6;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        this.f3649b.b(messageDigest);
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f3649b.equals(((d) obj).f3649b);
        }
        return false;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return this.f3649b.hashCode();
    }
}
