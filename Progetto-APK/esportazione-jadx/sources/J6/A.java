package J6;

/* JADX INFO: loaded from: classes2.dex */
public final class A implements G {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f4197a;

    public A(boolean z7) {
        this.f4197a = z7;
    }

    @Override // J6.G
    public final T c() {
        return null;
    }

    @Override // J6.G
    public final boolean isActive() {
        return this.f4197a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Empty{");
        sb.append(this.f4197a ? "Active" : "New");
        sb.append('}');
        return sb.toString();
    }
}
