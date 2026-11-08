package p052g4;

import K3.V;
import java.util.concurrent.Executor;
import p039f.ExecutorC3006v;

/* JADX INFO: loaded from: classes.dex */
public final class o implements p {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f25365H;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f25367J;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25364G = 0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f25366I = new Object();

    public o(ExecutorC3006v executorC3006v, c cVar) {
        this.f25365H = executorC3006v;
        this.f25367J = cVar;
    }

    private final void b(h hVar) {
        if (((r) hVar).f25372d) {
            synchronized (this.f25366I) {
                try {
                    if (((c) this.f25367J) == null) {
                        return;
                    }
                    this.f25365H.execute(new n(this, 0));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    private final void c(h hVar) {
        synchronized (this.f25366I) {
            try {
                if (((d) this.f25367J) == null) {
                    return;
                }
                this.f25365H.execute(new V(22, this, hVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void d(h hVar) {
        if (hVar.h() || ((r) hVar).f25372d) {
            return;
        }
        synchronized (this.f25366I) {
            try {
                if (((e) this.f25367J) == null) {
                    return;
                }
                this.f25365H.execute(new V(23, this, hVar));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p052g4.p
    public final void a(h hVar) {
        switch (this.f25364G) {
            case 0:
                b(hVar);
                return;
            case 1:
                c(hVar);
                return;
            case 2:
                d(hVar);
                return;
            default:
                if (hVar.h()) {
                    synchronized (this.f25366I) {
                        try {
                            if (((f) this.f25367J) != null) {
                                this.f25365H.execute(new V(24, this, hVar));
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return;
                }
                return;
        }
    }

    public o(Executor executor, d dVar) {
        this.f25365H = executor;
        this.f25367J = dVar;
    }

    public o(Executor executor, e eVar) {
        this.f25365H = executor;
        this.f25367J = eVar;
    }

    public o(Executor executor, f fVar) {
        this.f25365H = executor;
        this.f25367J = fVar;
    }
}
