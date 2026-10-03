package T2;

/* JADX INFO: loaded from: classes.dex */
public final class j extends q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p f6575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f6576b;

    public j(p pVar, a aVar) {
        this.f6575a = pVar;
        this.f6576b = aVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        p pVar = this.f6575a;
        if (pVar != null ? pVar.equals(((j) qVar).f6575a) : ((j) qVar).f6575a == null) {
            a aVar = this.f6576b;
            if (aVar == null) {
                if (((j) qVar).f6576b == null) {
                    return true;
                }
            } else if (aVar.equals(((j) qVar).f6576b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        p pVar = this.f6575a;
        int iHashCode = ((pVar == null ? 0 : pVar.hashCode()) ^ 1000003) * 1000003;
        a aVar = this.f6576b;
        return (aVar != null ? aVar.hashCode() : 0) ^ iHashCode;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f6575a + ", androidClientInfo=" + this.f6576b + "}";
    }
}
