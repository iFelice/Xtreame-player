package p126q1;

/* JADX INFO: loaded from: classes.dex */
public final class g implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final long f29539G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final byte[] f29540H;

    public g(long j8, byte[] bArr) {
        this.f29539G = j8;
        this.f29540H = bArr;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f29539G, ((g) obj).f29539G);
    }
}
