package y2;

/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f31310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f31311b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f31312c;

    public k(p173w2.c cVar, Object obj, p173w2.l lVar) {
        this.f31310a = cVar;
        this.f31311b = obj;
        this.f31312c = lVar;
    }

    public final void a(J3.k kVar, p173w2.l lVar) {
        try {
            kVar.a().c((p173w2.i) this.f31310a, new k((p173w2.o) this.f31311b, (C) this.f31312c, lVar));
        } finally {
            ((C) this.f31312c).a();
        }
    }

    public k(p pVar, L2.g gVar, t tVar) {
        this.f31312c = pVar;
        this.f31311b = gVar;
        this.f31310a = tVar;
    }
}
