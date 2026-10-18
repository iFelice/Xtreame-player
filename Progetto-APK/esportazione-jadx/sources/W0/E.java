package W0;

import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class E {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final G f7324a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final G f7325b;

    public E(G g8, G g9) {
        this.f7324a = g8;
        this.f7325b = g9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || E.class != obj.getClass()) {
            return false;
        }
        E e8 = (E) obj;
        return this.f7324a.equals(e8.f7324a) && this.f7325b.equals(e8.f7325b);
    }

    public final int hashCode() {
        return this.f7325b.hashCode() + (this.f7324a.hashCode() * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[");
        G g8 = this.f7324a;
        sb.append(g8);
        G g9 = this.f7325b;
        if (g8.equals(g9)) {
            str = HttpUrl.FRAGMENT_ENCODE_SET;
        } else {
            str = ", " + g9;
        }
        return p000a.r.j(sb, str, "]");
    }
}
