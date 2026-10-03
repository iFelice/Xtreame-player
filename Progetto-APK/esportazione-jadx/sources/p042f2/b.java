package p042f2;

import D0.U;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.internal.atv_ads_framework.x0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p027d2.n;
import p034e2.c;
import p034e2.p;
import p034e2.r;
import p034e2.y;
import p086l.RunnableC3036k;
import p096m2.f;
import p096m2.j;
import p096m2.o;
import p096m2.q;

/* JADX INFO: loaded from: classes.dex */
public final class b implements p, p066i2.b, c {

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public static final String f25141P = n.f("GreedyScheduler");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f25142G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final y f25143H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p066i2.c f25144I;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final a f25146K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f25147L;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public Boolean f25150O;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashSet f25145J = new HashSet();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final x0 f25149N = new x0(6);

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final Object f25148M = new Object();

    public b(Context context, p027d2.b bVar, o oVar, y yVar) {
        this.f25142G = context;
        this.f25143H = yVar;
        this.f25144I = new p066i2.c(oVar, this);
        this.f25146K = new a(this, bVar.f24613e);
    }

    @Override // p034e2.p
    public final boolean a() {
        return false;
    }

    @Override // p034e2.c
    public final void b(j jVar, boolean z7) {
        this.f25149N.t(jVar);
        synchronized (this.f25148M) {
            try {
                for (q qVar : this.f25145J) {
                    if (f.a(qVar).equals(jVar)) {
                        n.d().a(f25141P, "Stopping tracking for " + jVar);
                        this.f25145J.remove(qVar);
                        this.f25144I.c(this.f25145J);
                        break;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p034e2.p
    public final void c(q... qVarArr) {
        if (this.f25150O == null) {
            this.f25150O = Boolean.valueOf(p104n2.n.a(this.f25142G, this.f25143H.f24843b));
        }
        if (!this.f25150O.booleanValue()) {
            n.d().e(f25141P, "Ignoring schedule request in a secondary process");
            return;
        }
        if (!this.f25147L) {
            this.f25143H.f24847f.a(this);
            this.f25147L = true;
        }
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        for (q qVar : qVarArr) {
            if (!this.f25149N.i(f.a(qVar))) {
                long jA = qVar.a();
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (qVar.f27243b == 1) {
                    if (jCurrentTimeMillis < jA) {
                        a aVar = this.f25146K;
                        if (aVar != null) {
                            HashMap map = aVar.f25140c;
                            Runnable runnable = (Runnable) map.remove(qVar.f27242a);
                            U u7 = aVar.f25139b;
                            if (runnable != null) {
                                ((Handler) u7.f1868H).removeCallbacks(runnable);
                            }
                            RunnableC3036k runnableC3036k = new RunnableC3036k(10, aVar, qVar);
                            map.put(qVar.f27242a, runnableC3036k);
                            ((Handler) u7.f1868H).postDelayed(runnableC3036k, qVar.a() - System.currentTimeMillis());
                        }
                    } else if (qVar.b()) {
                        int i8 = Build.VERSION.SDK_INT;
                        if (i8 >= 23 && qVar.f27251j.f24622c) {
                            n.d().a(f25141P, "Ignoring " + qVar + ". Requires device idle.");
                        } else if (i8 < 24 || !(!qVar.f27251j.f24627h.isEmpty())) {
                            hashSet.add(qVar);
                            hashSet2.add(qVar.f27242a);
                        } else {
                            n.d().a(f25141P, "Ignoring " + qVar + ". Requires ContentUri triggers.");
                        }
                    } else if (!this.f25149N.i(f.a(qVar))) {
                        n.d().a(f25141P, "Starting work for " + qVar.f27242a);
                        y yVar = this.f25143H;
                        x0 x0Var = this.f25149N;
                        x0Var.getClass();
                        yVar.z(x0Var.y(f.a(qVar)), null);
                    }
                }
            }
        }
        synchronized (this.f25148M) {
            try {
                if (!hashSet.isEmpty()) {
                    n.d().a(f25141P, "Starting tracking for " + TextUtils.join(",", hashSet2));
                    this.f25145J.addAll(hashSet);
                    this.f25144I.c(this.f25145J);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p034e2.p
    public final void d(String str) {
        Runnable runnable;
        Boolean bool = this.f25150O;
        y yVar = this.f25143H;
        if (bool == null) {
            this.f25150O = Boolean.valueOf(p104n2.n.a(this.f25142G, yVar.f24843b));
        }
        boolean zBooleanValue = this.f25150O.booleanValue();
        String str2 = f25141P;
        if (!zBooleanValue) {
            n.d().e(str2, "Ignoring schedule request in non-main process");
            return;
        }
        if (!this.f25147L) {
            yVar.f24847f.a(this);
            this.f25147L = true;
        }
        n.d().a(str2, "Cancelling work ID " + str);
        a aVar = this.f25146K;
        if (aVar != null && (runnable = (Runnable) aVar.f25140c.remove(str)) != null) {
            ((Handler) aVar.f25139b.f1868H).removeCallbacks(runnable);
        }
        Iterator it = this.f25149N.u(str).iterator();
        while (it.hasNext()) {
            yVar.A((r) it.next());
        }
    }

    @Override // p066i2.b
    public final void e(ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            j jVarA = f.a((q) it.next());
            n.d().a(f25141P, "Constraints not met: Cancelling work ID " + jVarA);
            r rVarT = this.f25149N.t(jVarA);
            if (rVarT != null) {
                this.f25143H.A(rVarT);
            }
        }
    }

    @Override // p066i2.b
    public final void f(List list) {
        Iterator it = ((ArrayList) list).iterator();
        while (it.hasNext()) {
            j jVarA = f.a((q) it.next());
            x0 x0Var = this.f25149N;
            if (!x0Var.i(jVarA)) {
                n.d().a(f25141P, "Constraints met: Scheduling work ID " + jVarA);
                this.f25143H.z(x0Var.y(jVarA), null);
            }
        }
    }
}
