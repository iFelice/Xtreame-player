package z4;

/* JADX INFO: renamed from: z4.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3254s extends AbstractC3250n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f31897G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f31898H;

    public C3254s(AbstractC3255t abstractC3255t, int i8) {
        Object obj = AbstractC3255t.f31900G;
        this.f31897G = abstractC3255t.c()[i8];
        this.f31898H = i8;
    }

    public final void a() {
        if (this.f31898H != -1) {
            throw null;
        }
        Object obj = AbstractC3255t.f31900G;
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f31897G;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw null;
    }
}
