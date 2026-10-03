package p104n2;

import D0.U;
import java.util.HashMap;
import p027d2.n;
import p096m2.j;

/* JADX INFO: loaded from: classes.dex */
public final class y {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f27483e = n.f("WorkTimer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final U f27484a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f27485b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap f27486c = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f27487d = new Object();

    public y(U u7) {
        this.f27484a = u7;
    }

    public final void a(j jVar) {
        synchronized (this.f27487d) {
            try {
                if (((x) this.f27485b.remove(jVar)) != null) {
                    n.d().a(f27483e, "Stopping timer for " + jVar);
                    this.f27486c.remove(jVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
