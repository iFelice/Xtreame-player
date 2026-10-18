package O2;

import java.security.MessageDigest;
import p173w2.i;

/* JADX INFO: loaded from: classes.dex */
public final class d implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f5566b;

    public d(Object obj) {
        p102n0.c.c(obj, "Argument must not be null");
        this.f5566b = obj;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        messageDigest.update(this.f5566b.toString().getBytes(i.f30994a));
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (obj instanceof d) {
            return this.f5566b.equals(((d) obj).f5566b);
        }
        return false;
    }

    @Override // p173w2.i
    public final int hashCode() {
        return this.f5566b.hashCode();
    }

    public final String toString() {
        return "ObjectKey{object=" + this.f5566b + '}';
    }
}
