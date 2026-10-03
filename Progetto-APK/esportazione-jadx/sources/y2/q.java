package y2;

/* JADX INFO: loaded from: classes.dex */
public final class q implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f31362G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final L2.g f31363H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ t f31364I;

    public /* synthetic */ q(t tVar, L2.g gVar, int i8) {
        this.f31362G = i8;
        this.f31364I = tVar;
        this.f31363H = gVar;
    }

    private void a() {
        L2.h hVar = (L2.h) this.f31363H;
        hVar.f4667b.a();
        synchronized (hVar.f4668c) {
            synchronized (this.f31364I) {
                try {
                    s sVar = this.f31364I.f31369G;
                    L2.g gVar = this.f31363H;
                    sVar.getClass();
                    if (sVar.f31367G.contains(new r(gVar, P2.g.f5892b))) {
                        t tVar = this.f31364I;
                        L2.g gVar2 = this.f31363H;
                        tVar.getClass();
                        try {
                            ((L2.h) gVar2).i(tVar.f31388Z, 5);
                        } catch (Throwable th) {
                            throw new C3232d(th);
                        }
                    }
                    this.f31364I.d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f31362G) {
            case 0:
                a();
                return;
            default:
                L2.h hVar = (L2.h) this.f31363H;
                hVar.f4667b.a();
                synchronized (hVar.f4668c) {
                    synchronized (this.f31364I) {
                        try {
                            s sVar = this.f31364I.f31369G;
                            L2.g gVar = this.f31363H;
                            sVar.getClass();
                            if (sVar.f31367G.contains(new r(gVar, P2.g.f5892b))) {
                                this.f31364I.f31390b0.a();
                                t tVar = this.f31364I;
                                L2.g gVar2 = this.f31363H;
                                tVar.getClass();
                                try {
                                    ((L2.h) gVar2).k(tVar.f31390b0, tVar.f31386X, tVar.f31393e0);
                                    this.f31364I.j(this.f31363H);
                                } catch (Throwable th) {
                                    throw new C3232d(th);
                                }
                            }
                            this.f31364I.d();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                return;
        }
    }
}
