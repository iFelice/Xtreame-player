package C2;

/* JADX INFO: loaded from: classes.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f1420a;

    public w(String str) {
        this.f1420a = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof w) {
            return this.f1420a.equals(((w) obj).f1420a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1420a.hashCode();
    }

    public final String toString() {
        return p000a.r.j(new StringBuilder("StringHeaderFactory{value='"), this.f1420a, "'}");
    }
}
