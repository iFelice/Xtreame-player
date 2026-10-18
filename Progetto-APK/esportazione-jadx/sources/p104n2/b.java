package p104n2;

import androidx.work.impl.WorkDatabase;
import java.util.Iterator;
import java.util.UUID;
import p034e2.q;
import p034e2.y;

/* JADX INFO: loaded from: classes.dex */
public final class b extends d {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f27426I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ y f27427J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f27428K;

    public /* synthetic */ b(y yVar, Object obj, int i8) {
        this.f27426I = i8;
        this.f27427J = yVar;
        this.f27428K = obj;
    }

    @Override // p104n2.d
    public final void d() {
        int i8 = this.f27426I;
        Object obj = this.f27428K;
        y yVar = this.f27427J;
        switch (i8) {
            case 0:
                WorkDatabase workDatabase = yVar.f24844c;
                workDatabase.c();
                try {
                    d.a(yVar, ((UUID) obj).toString());
                    workDatabase.n();
                    workDatabase.j();
                    q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                    return;
                } catch (Throwable th) {
                    workDatabase.j();
                    throw th;
                }
            default:
                WorkDatabase workDatabase2 = yVar.f24844c;
                workDatabase2.c();
                try {
                    Iterator it = workDatabase2.u().g((String) obj).iterator();
                    while (it.hasNext()) {
                        d.a(yVar, (String) it.next());
                    }
                    workDatabase2.n();
                    workDatabase2.j();
                    q.a(yVar.f24843b, yVar.f24844c, yVar.f24846e);
                    return;
                } catch (Throwable th2) {
                    workDatabase2.j();
                    throw th2;
                }
        }
    }
}
