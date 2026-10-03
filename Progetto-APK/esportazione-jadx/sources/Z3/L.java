package Z3;

/* JADX INFO: loaded from: classes.dex */
public final class L extends I {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final N f8260J;

    public L(N n7, int i8) {
        super(n7.size(), i8);
        this.f8260J = n7;
    }

    @Override // Z3.I
    public final Object c(int i8) {
        return this.f8260J.get(i8);
    }
}
