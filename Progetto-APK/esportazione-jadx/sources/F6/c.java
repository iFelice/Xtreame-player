package F6;

/* JADX INFO: loaded from: classes2.dex */
public final class c extends a {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final c f3272J = new c(1, 0, 1);

    @Override // F6.a
    public final boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (this.f3265G == cVar.f3265G) {
                    if (this.f3266H == cVar.f3266H) {
                    }
                }
            }
            return true;
        }
        return false;
    }

    @Override // F6.a
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.f3265G * 31) + this.f3266H;
    }

    @Override // F6.a
    public final boolean isEmpty() {
        return this.f3265G > this.f3266H;
    }

    @Override // F6.a
    public final String toString() {
        return this.f3265G + ".." + this.f3266H;
    }
}
