package p104n2;

import p027d2.n;
import p034e2.A;
import p034e2.r;
import p034e2.y;

/* JADX INFO: loaded from: classes.dex */
public final class p implements Runnable {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final String f27455J = n.f("StopWorkRunnable");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final y f27456G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final r f27457H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f27458I;

    public p(y yVar, r rVar, boolean z7) {
        this.f27456G = yVar;
        this.f27457H = rVar;
        this.f27458I = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean zM;
        A a8;
        if (this.f27458I) {
            p034e2.n nVar = this.f27456G.f24847f;
            r rVar = this.f27457H;
            nVar.getClass();
            String str = rVar.f24828a.f27228a;
            synchronized (nVar.f24824R) {
                try {
                    n.d().a(p034e2.n.f24812S, "Processor stopping foreground work " + str);
                    a8 = (A) nVar.f24818L.remove(str);
                    if (a8 != null) {
                        nVar.f24820N.remove(str);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            zM = p034e2.n.d(str, a8);
        } else {
            zM = this.f27456G.f24847f.m(this.f27457H);
        }
        n.d().a(f27455J, "StopWorkRunnable for " + this.f27457H.f24828a.f27228a + "; Processor.stopWork = " + zM);
    }
}
