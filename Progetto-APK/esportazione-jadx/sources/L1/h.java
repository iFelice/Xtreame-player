package L1;

/* JADX INFO: loaded from: classes.dex */
public final class h extends p199z6.c {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public i f4625J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public /* synthetic */ Object f4626K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ i f4627L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f4628M;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar, p185x6.e eVar) {
        super(eVar);
        this.f4627L = iVar;
    }

    @Override // p199z6.a
    public final Object f(Object obj) {
        this.f4626K = obj;
        this.f4628M |= Integer.MIN_VALUE;
        return i.b(this.f4627L, null, this);
    }
}
