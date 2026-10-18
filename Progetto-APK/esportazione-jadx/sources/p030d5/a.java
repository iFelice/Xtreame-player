package p030d5;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f24661a;

    public a(String str, U4.a aVar) {
        this.f24661a = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (hashCode() != aVar.hashCode()) {
            return false;
        }
        String str = aVar.f24661a;
        String str2 = this.f24661a;
        if ((str2 == null && str != null) || (str2 != null && !str2.equals(str))) {
            return false;
        }
        aVar.getClass();
        return true;
    }

    public final int hashCode() {
        String str = this.f24661a;
        return (str != null ? str.hashCode() : 0) + 0;
    }
}
