package R2;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6284a;

    public b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f6284a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f6284a.equals(((b) obj).f6284a);
    }

    public final int hashCode() {
        return this.f6284a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return r.j(new StringBuilder("Encoding{name=\""), this.f6284a, "\"}");
    }
}
