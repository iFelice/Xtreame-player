package O5;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f5638G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f5639H;

    public t(int i8, int i9) {
        this.f5638G = i8;
        this.f5639H = i9;
    }

    public final t a(t tVar) {
        int i8 = tVar.f5639H;
        int i9 = this.f5638G;
        int i10 = i9 * i8;
        int i11 = tVar.f5638G;
        int i12 = this.f5639H;
        return i10 <= i11 * i12 ? new t(i11, (i12 * i11) / i9) : new t((i9 * i8) / i12, i8);
    }

    public final t b(t tVar) {
        int i8 = tVar.f5639H;
        int i9 = this.f5638G;
        int i10 = i9 * i8;
        int i11 = tVar.f5638G;
        int i12 = this.f5639H;
        return i10 >= i11 * i12 ? new t(i11, (i12 * i11) / i9) : new t((i9 * i8) / i12, i8);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        t tVar = (t) obj;
        int i8 = this.f5639H * this.f5638G;
        int i9 = tVar.f5639H * tVar.f5638G;
        if (i9 < i8) {
            return 1;
        }
        return i9 > i8 ? -1 : 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || t.class != obj.getClass()) {
            return false;
        }
        t tVar = (t) obj;
        return this.f5638G == tVar.f5638G && this.f5639H == tVar.f5639H;
    }

    public final int hashCode() {
        return (this.f5638G * 31) + this.f5639H;
    }

    public final String toString() {
        return this.f5638G + "x" + this.f5639H;
    }
}
