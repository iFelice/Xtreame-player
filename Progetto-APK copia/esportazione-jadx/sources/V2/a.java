package V2;

import A0.O;
import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f7087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7088b;

    public a(int i8, long j8) {
        if (i8 == 0) {
            throw new NullPointerException("Null status");
        }
        this.f7087a = i8;
        this.f7088b = j8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return p156u.h.a(this.f7087a, aVar.f7087a) && this.f7088b == aVar.f7088b;
    }

    public final int hashCode() {
        int iB = (p156u.h.b(this.f7087a) ^ 1000003) * 1000003;
        long j8 = this.f7088b;
        return iB ^ ((int) (j8 ^ (j8 >>> 32)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BackendResponse{status=");
        sb.append(O.O(this.f7087a));
        sb.append(", nextRequestWaitMillis=");
        return r.i(sb, this.f7088b, "}");
    }
}
