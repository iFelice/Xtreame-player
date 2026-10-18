package p132r;

/* JADX INFO: loaded from: classes.dex */
public final class b extends i {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f29649J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f29650K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(f fVar, int i8) {
        super(fVar.f29684I);
        this.f29649J = i8;
        if (i8 != 1) {
            this.f29650K = fVar;
        } else {
            this.f29650K = fVar;
            super(fVar.f29684I);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(g gVar) {
        super(gVar.f29662I);
        this.f29649J = 2;
        this.f29650K = gVar;
    }
}
