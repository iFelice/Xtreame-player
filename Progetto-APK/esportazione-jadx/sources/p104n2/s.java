package p104n2;

import U0.r;
import android.content.Context;
import android.os.Build;
import java.util.concurrent.Executor;
import p027d2.g;
import p027d2.m;
import p027d2.n;
import p086l.RunnableC3036k;
import p096m2.q;
import p096m2.u;
import p112o2.j;
import p119p2.a;

/* JADX INFO: loaded from: classes.dex */
public final class s implements Runnable {

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public static final String f27462M = n.f("WorkForegroundRunnable");

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final j f27463G = new j();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f27464H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final q f27465I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final m f27466J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final g f27467K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final a f27468L;

    public s(Context context, q qVar, m mVar, u uVar, a aVar) {
        this.f27464H = context;
        this.f27465I = qVar;
        this.f27466J = mVar;
        this.f27467K = uVar;
        this.f27468L = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.f27465I.f27258q || Build.VERSION.SDK_INT >= 31) {
            this.f27463G.j(null);
            return;
        }
        j jVar = new j();
        a aVar = this.f27468L;
        ((Executor) ((u) aVar).f27280J).execute(new r(10, this, jVar));
        jVar.a(new RunnableC3036k(13, this, jVar), (Executor) ((u) aVar).f27280J);
    }
}
