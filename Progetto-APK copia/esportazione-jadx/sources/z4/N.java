package z4;

/* JADX INFO: loaded from: classes.dex */
public final class N extends AbstractC3237a {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final N f31816K = new N(new Object[0]);

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object[] f31817J;

    public N(Object[] objArr) {
        super(objArr.length, 0);
        this.f31817J = objArr;
    }

    @Override // z4.AbstractC3237a
    public final Object b(int i8) {
        return this.f31817J[i8];
    }
}
