package z4;

/* JADX INFO: loaded from: classes.dex */
public final class F extends AbstractC3237a {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final H f31800J;

    public F(int i8, H h8) {
        super(h8.size(), i8);
        this.f31800J = h8;
    }

    @Override // z4.AbstractC3237a
    public final Object b(int i8) {
        return this.f31800J.get(i8);
    }
}
