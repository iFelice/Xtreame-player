package N2;

/* JADX INFO: loaded from: classes.dex */
public final class a implements f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f4935a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f4936b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public G.c f4937c;

    public a(int i8, boolean z7) {
        this.f4935a = i8;
        this.f4936b = z7;
    }

    @Override // N2.f
    public final e a(p173w2.a aVar) {
        if (aVar == p173w2.a.f30985K) {
            return c.f4938G;
        }
        if (this.f4937c == null) {
            G.c cVar = new G.c();
            cVar.f3279G = this.f4935a;
            cVar.f3280H = this.f4936b;
            this.f4937c = cVar;
        }
        return this.f4937c;
    }
}
