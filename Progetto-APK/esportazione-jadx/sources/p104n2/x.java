package p104n2;

import p027d2.n;
import p050g2.f;
import p050g2.g;
import p096m2.j;

/* JADX INFO: loaded from: classes.dex */
public final class x implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final y f27481G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final j f27482H;

    public x(y yVar, j jVar) {
        this.f27481G = yVar;
        this.f27482H = jVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f27481G.f27487d) {
            try {
                if (((x) this.f27481G.f27485b.remove(this.f27482H)) != null) {
                    w wVar = (w) this.f27481G.f27486c.remove(this.f27482H);
                    if (wVar != null) {
                        j jVar = this.f27482H;
                        g gVar = (g) wVar;
                        n.d().a(g.f25318S, "Exceeded time limits on execution for " + jVar);
                        gVar.f25326N.execute(new f(gVar, 3));
                    }
                } else {
                    n.d().a("WrkTimerRunnable", "Timer with " + this.f27482H + " is already marked as complete.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
