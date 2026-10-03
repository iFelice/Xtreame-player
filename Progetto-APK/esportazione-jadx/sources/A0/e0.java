package A0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f139G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f140H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f141I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f142J;

    public /* synthetic */ e0(h0 h0Var, boolean z7, g0 g0Var) {
        this.f139G = 0;
        this.f141I = h0Var;
        this.f140H = z7;
        this.f142J = g0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        g0 g0Var;
        switch (this.f139G) {
            case 0:
                h0 h0Var = (h0) this.f141I;
                boolean z7 = this.f140H;
                g0 g0Var2 = (g0) this.f142J;
                h0Var.getClass();
                try {
                    synchronized (h0Var.f153e) {
                        try {
                            if (!h0Var.f155g || !z7) {
                                while (true) {
                                    synchronized (h0Var.f153e) {
                                        g0Var = (g0) h0Var.f154f.poll();
                                        break;
                                    }
                                    if (g0Var == null) {
                                        g0Var2.run();
                                    } else {
                                        g0Var.run();
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                } catch (Exception e8) {
                    h0Var.b(e8);
                    return;
                }
            default:
                p034e2.n nVar = (p034e2.n) this.f141I;
                p096m2.j jVar = (p096m2.j) this.f142J;
                String str = p034e2.n.f24812S;
                nVar.b(jVar, this.f140H);
                return;
        }
    }

    public /* synthetic */ e0(p034e2.n nVar, p096m2.j jVar) {
        this.f139G = 1;
        this.f141I = nVar;
        this.f142J = jVar;
        this.f140H = false;
    }
}
