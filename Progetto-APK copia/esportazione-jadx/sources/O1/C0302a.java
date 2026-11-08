package O1;

/* JADX INFO: renamed from: O1.a, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0302a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5330a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f5332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f5333d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0302a)) {
            return false;
        }
        C0302a c0302a = (C0302a) obj;
        int i8 = this.f5330a;
        if (i8 != c0302a.f5330a) {
            return false;
        }
        if (i8 == 8 && Math.abs(this.f5333d - this.f5331b) == 1 && this.f5333d == c0302a.f5331b && this.f5331b == c0302a.f5333d) {
            return true;
        }
        if (this.f5333d != c0302a.f5333d || this.f5331b != c0302a.f5331b) {
            return false;
        }
        Object obj2 = this.f5332c;
        if (obj2 != null) {
            if (!obj2.equals(c0302a.f5332c)) {
                return false;
            }
        } else if (c0302a.f5332c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f5330a * 31) + this.f5331b) * 31) + this.f5333d;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i8 = this.f5330a;
        if (i8 == 1) {
            str = "add";
        } else if (i8 == 2) {
            str = "rm";
        } else if (i8 != 4) {
            str = i8 != 8 ? "??" : "mv";
        } else {
            str = "up";
        }
        sb.append(str);
        sb.append(",s:");
        sb.append(this.f5331b);
        sb.append("c:");
        sb.append(this.f5333d);
        sb.append(",p:");
        sb.append(this.f5332c);
        sb.append("]");
        return sb.toString();
    }
}
