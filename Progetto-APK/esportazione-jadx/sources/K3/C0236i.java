package K3;

/* JADX INFO: renamed from: K3.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0236i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f4554b;

    public C0236i(Object obj, String str) {
        this.f4553a = obj;
        this.f4554b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0236i)) {
            return false;
        }
        C0236i c0236i = (C0236i) obj;
        return this.f4553a == c0236i.f4553a && this.f4554b.equals(c0236i.f4554b);
    }

    public final int hashCode() {
        return this.f4554b.hashCode() + (System.identityHashCode(this.f4553a) * 31);
    }
}
