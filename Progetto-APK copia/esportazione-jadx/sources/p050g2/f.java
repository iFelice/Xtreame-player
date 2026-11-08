package p050g2;

import android.os.Handler;
import p027d2.n;
import p096m2.j;
import p104n2.x;
import p104n2.y;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25316G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ g f25317H;

    public /* synthetic */ f(g gVar, int i8) {
        this.f25316G = i8;
        this.f25317H = gVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f25316G) {
            case 0:
                g.a(this.f25317H);
                return;
            case 1:
                g gVar = this.f25317H;
                if (gVar.f25325M != 0) {
                    n.d().a(g.f25318S, "Already started work for " + gVar.f25321I);
                    return;
                }
                gVar.f25325M = 1;
                n.d().a(g.f25318S, "onAllConstraintsMet for " + gVar.f25321I);
                if (!gVar.f25322J.f25337J.j(gVar.f25330R, null)) {
                    gVar.b();
                    return;
                }
                y yVar = gVar.f25322J.f25336I;
                j jVar = gVar.f25321I;
                synchronized (yVar.f27487d) {
                    n.d().a(y.f27483e, "Starting timer for " + jVar);
                    yVar.a(jVar);
                    x xVar = new x(yVar, jVar);
                    yVar.f27485b.put(jVar, xVar);
                    yVar.f27486c.put(jVar, gVar);
                    ((Handler) yVar.f27484a.f1868H).postDelayed(xVar, 600000L);
                    break;
                }
                return;
            case 2:
                g.a(this.f25317H);
                return;
            default:
                g.a(this.f25317H);
                return;
        }
    }
}
