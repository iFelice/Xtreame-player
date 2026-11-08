package y2;

import java.security.MessageDigest;

/* JADX INFO: renamed from: y2.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3234f implements p173w2.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p173w2.i f31290b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p173w2.i f31291c;

    public C3234f(p173w2.i iVar, p173w2.i iVar2) {
        this.f31290b = iVar;
        this.f31291c = iVar2;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        this.f31290b.b(messageDigest);
        this.f31291c.b(messageDigest);
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (!(obj instanceof C3234f)) {
            return false;
        }
        C3234f c3234f = (C3234f) obj;
        return this.f31290b.equals(c3234f.f31290b) && this.f31291c.equals(c3234f.f31291c);
    }

    @Override // p173w2.i
    public final int hashCode() {
        return this.f31291c.hashCode() + (this.f31290b.hashCode() * 31);
    }

    public final String toString() {
        return "DataCacheKey{sourceKey=" + this.f31290b + ", signature=" + this.f31291c + '}';
    }
}
