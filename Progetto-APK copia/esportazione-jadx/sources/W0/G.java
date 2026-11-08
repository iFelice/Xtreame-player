package W0;

/* JADX INFO: loaded from: classes.dex */
public final class G {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final G f7326c = new G(0, 0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7328b;

    public G(long j8, long j9) {
        this.f7327a = j8;
        this.f7328b = j9;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || G.class != obj.getClass()) {
            return false;
        }
        G g8 = (G) obj;
        return this.f7327a == g8.f7327a && this.f7328b == g8.f7328b;
    }

    public final int hashCode() {
        return (((int) this.f7327a) * 31) + ((int) this.f7328b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[timeUs=");
        sb.append(this.f7327a);
        sb.append(", position=");
        return p000a.r.i(sb, this.f7328b, "]");
    }
}
