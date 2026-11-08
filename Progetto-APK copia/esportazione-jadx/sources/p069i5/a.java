package p069i5;

import p000a.r;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f25577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f25578b;

    public a(String str, String str2) {
        this.f25577a = str;
        this.f25578b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25577a.equals(aVar.f25577a) && this.f25578b.equals(aVar.f25578b);
    }

    public final int hashCode() {
        return ((this.f25577a.hashCode() ^ 1000003) * 1000003) ^ this.f25578b.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f25577a);
        sb.append(", version=");
        return r.j(sb, this.f25578b, "}");
    }
}
