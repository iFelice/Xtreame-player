package T2;

/* JADX INFO: loaded from: classes.dex */
public final class n extends v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u f6592a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final t f6593b;

    public n(u uVar, t tVar) {
        this.f6592a = uVar;
        this.f6593b = tVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        u uVar = this.f6592a;
        if (uVar != null ? uVar.equals(((n) vVar).f6592a) : ((n) vVar).f6592a == null) {
            t tVar = this.f6593b;
            if (tVar == null) {
                if (((n) vVar).f6593b == null) {
                    return true;
                }
            } else if (tVar.equals(((n) vVar).f6593b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        u uVar = this.f6592a;
        int iHashCode = ((uVar == null ? 0 : uVar.hashCode()) ^ 1000003) * 1000003;
        t tVar = this.f6593b;
        return (tVar != null ? tVar.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f6592a + ", mobileSubtype=" + this.f6593b + "}";
    }
}
