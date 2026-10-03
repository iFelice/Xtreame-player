package A0;

import N.C0260i;
import U0.ExecutorC0348n;
import android.content.Context;
import com.google.android.gms.internal.measurement.H1;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import p094m0.C3126i;
import p094m0.InterfaceC3128k;
import p094m0.q0;
import p094m0.s0;
import p094m0.u0;
import p094m0.v0;

/* JADX INFO: loaded from: classes.dex */
public final class Y implements v0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f98a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final q0 f99b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C3126i f100c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final u0 f101d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final InterfaceC3128k f102e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Executor f103f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final boolean f104g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public s0 f105h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public p094m0.b0 f106i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public z4.H f107j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f108k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f109l;

    public Y(Context context, q0 q0Var, C3126i c3126i, U0.x xVar, ExecutorC0348n executorC0348n) {
        C0260i c0260i = InterfaceC3128k.f26911C;
        this.f98a = context;
        this.f99b = q0Var;
        this.f100c = c3126i;
        this.f101d = xVar;
        this.f102e = c0260i;
        this.f103f = executorC0348n;
        z4.F f8 = z4.H.f31804H;
        this.f107j = z4.d0.f31844K;
        this.f104g = false;
        this.f109l = -1;
    }

    public final void a(int i8) {
        if (this.f105h == null) {
            boolean z7 = this.f108k;
        }
        H1.h("This VideoGraph supports only one input.", this.f109l == -1);
        this.f109l = i8;
        s0 s0VarA = this.f99b.a(this.f98a, this.f102e, this.f100c, this.f104g, new p046f6.c(this));
        this.f105h = s0VarA;
        p094m0.b0 b0Var = this.f106i;
        if (b0Var != null) {
            ((C0023x) s0VarA).c(b0Var);
        }
    }

    public final void b(final long j8) {
        H1.j(this.f105h);
        final C0023x c0023x = (C0023x) this.f105h;
        H1.h("Calling this method is not allowed when renderFramesAutomatically is enabled", !c0023x.f232j);
        c0023x.f229g.g(new g0() { // from class: A0.r
            @Override // A0.g0
            public final void run() {
                C0023x c0023x2 = c0023x;
                D d6 = c0023x2.f233k;
                d6.f36h.h();
                H1.i(!d6.f42n);
                ConcurrentLinkedQueue concurrentLinkedQueue = d6.f39k;
                if (concurrentLinkedQueue.isEmpty()) {
                    return;
                }
                c0 c0Var = (c0) concurrentLinkedQueue.remove();
                d6.h(c0023x2.f225c, c0Var.f132a, c0Var.f133b, j8);
                if (concurrentLinkedQueue.isEmpty() && d6.f46r) {
                    C0019t c0019t = d6.f49u;
                    c0019t.getClass();
                    c0019t.a();
                    d6.f46r = false;
                }
            }
        });
    }
}
