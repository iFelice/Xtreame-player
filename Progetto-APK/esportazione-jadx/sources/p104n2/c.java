package p104n2;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import p034e2.q;
import p034e2.y;

/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ y f27429I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ String f27430J = null;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ boolean f27431K = false;

    public c(y yVar) {
        this.f27429I = yVar;
    }

    @Override // p104n2.d
    public final void d() {
        y yVar = this.f27429I;
        WorkDatabase workDatabase = yVar.f24844c;
        workDatabase.c();
        try {
            Iterator it = workDatabase.u().f(this.f27430J).iterator();
            while (it.hasNext()) {
                d.a(yVar, (String) it.next());
            }
            workDatabase.n();
            workDatabase.j();
            if (this.f27431K) {
                q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
            }
        } catch (Throwable th) {
            workDatabase.j();
            throw th;
        }
    }
}
