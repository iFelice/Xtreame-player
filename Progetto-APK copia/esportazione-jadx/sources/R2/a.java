package R2;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Integer f6281a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f6282b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final c f6283c;

    public a(Integer num, Object obj, c cVar) {
        this.f6281a = num;
        this.f6282b = obj;
        this.f6283c = cVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        Integer num = this.f6281a;
        if (num != null ? num.equals(aVar.f6281a) : aVar.f6281a == null) {
            if (this.f6282b.equals(aVar.f6282b) && this.f6283c.equals(aVar.f6283c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Integer num = this.f6281a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f6282b.hashCode()) * 1000003) ^ this.f6283c.hashCode();
    }

    public final String toString() {
        return "Event{code=" + this.f6281a + ", payload=" + this.f6282b + ", priority=" + this.f6283c + "}";
    }
}
