package y2;

import java.security.MessageDigest;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class v implements p173w2.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f31394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31395c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f31396d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Class f31397e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Class f31398f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final p173w2.i f31399g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Map f31400h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final p173w2.l f31401i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f31402j;

    public v(Object obj, p173w2.i iVar, int i8, int i9, P2.d dVar, Class cls, Class cls2, p173w2.l lVar) {
        p102n0.c.c(obj, "Argument must not be null");
        this.f31394b = obj;
        p102n0.c.c(iVar, "Signature must not be null");
        this.f31399g = iVar;
        this.f31395c = i8;
        this.f31396d = i9;
        p102n0.c.c(dVar, "Argument must not be null");
        this.f31400h = dVar;
        p102n0.c.c(cls, "Resource class must not be null");
        this.f31397e = cls;
        p102n0.c.c(cls2, "Transcode class must not be null");
        this.f31398f = cls2;
        p102n0.c.c(lVar, "Argument must not be null");
        this.f31401i = lVar;
    }

    @Override // p173w2.i
    public final void b(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    @Override // p173w2.i
    public final boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f31394b.equals(vVar.f31394b) && this.f31399g.equals(vVar.f31399g) && this.f31396d == vVar.f31396d && this.f31395c == vVar.f31395c && this.f31400h.equals(vVar.f31400h) && this.f31397e.equals(vVar.f31397e) && this.f31398f.equals(vVar.f31398f) && this.f31401i.equals(vVar.f31401i);
    }

    @Override // p173w2.i
    public final int hashCode() {
        if (this.f31402j == 0) {
            int iHashCode = this.f31394b.hashCode();
            this.f31402j = iHashCode;
            int iHashCode2 = ((((this.f31399g.hashCode() + (iHashCode * 31)) * 31) + this.f31395c) * 31) + this.f31396d;
            this.f31402j = iHashCode2;
            int iHashCode3 = this.f31400h.hashCode() + (iHashCode2 * 31);
            this.f31402j = iHashCode3;
            int iHashCode4 = this.f31397e.hashCode() + (iHashCode3 * 31);
            this.f31402j = iHashCode4;
            int iHashCode5 = this.f31398f.hashCode() + (iHashCode4 * 31);
            this.f31402j = iHashCode5;
            this.f31402j = this.f31401i.f31000b.hashCode() + (iHashCode5 * 31);
        }
        return this.f31402j;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f31394b + ", width=" + this.f31395c + ", height=" + this.f31396d + ", resourceClass=" + this.f31397e + ", transcodeClass=" + this.f31398f + ", signature=" + this.f31399g + ", hashCode=" + this.f31402j + ", transformations=" + this.f31400h + ", options=" + this.f31401i + '}';
    }
}
