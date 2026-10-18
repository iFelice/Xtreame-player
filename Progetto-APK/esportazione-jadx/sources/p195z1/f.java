package p195z1;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Comparable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f31732G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final b f31733H;

    public f(int i8, b bVar) {
        this.f31732G = i8;
        this.f31733H = bVar;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Integer.compare(this.f31732G, ((f) obj).f31732G);
    }
}
