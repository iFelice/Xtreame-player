package p066i2;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f25553a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f25554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f25555c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f25556d;

    public a(boolean z7, boolean z8, boolean z9, boolean z10) {
        this.f25553a = z7;
        this.f25554b = z8;
        this.f25555c = z9;
        this.f25556d = z10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f25553a == aVar.f25553a && this.f25554b == aVar.f25554b && this.f25555c == aVar.f25555c && this.f25556d == aVar.f25556d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [int] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5, types: [int] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    public final int hashCode() {
        boolean z7 = this.f25553a;
        ?? r7 = z7;
        if (z7) {
            r7 = 1;
        }
        int i8 = r7 * 31;
        boolean z8 = this.f25554b;
        ?? r8 = z8;
        if (z8) {
            r8 = 1;
        }
        int i9 = (i8 + r8) * 31;
        boolean z9 = this.f25555c;
        ?? r9 = z9;
        if (z9) {
            r9 = 1;
        }
        int i10 = (i9 + r9) * 31;
        boolean z10 = this.f25556d;
        return i10 + (z10 ? 1 : z10);
    }

    public final String toString() {
        return "NetworkState(isConnected=" + this.f25553a + ", isValidated=" + this.f25554b + ", isMetered=" + this.f25555c + ", isNotRoaming=" + this.f25556d + ')';
    }
}
