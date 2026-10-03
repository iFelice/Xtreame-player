package z4;

/* JADX INFO: renamed from: z4.z, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3261z extends AbstractC3237a {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ D.z f31907J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3261z(D.z zVar, int i8) {
        super(i8, 0);
        this.f31907J = zVar;
    }

    @Override // z4.AbstractC3237a
    public final Object b(int i8) {
        return ((Iterable[]) this.f31907J.f1738I)[i8].iterator();
    }
}
