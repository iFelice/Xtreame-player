package p052g4;

import K3.V;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class m implements p, f, e, c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f25358G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Executor f25359H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final b f25360I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final r f25361J;

    public /* synthetic */ m(Executor executor, b bVar, r rVar, int i8) {
        this.f25358G = i8;
        this.f25359H = executor;
        this.f25360I = bVar;
        this.f25361J = rVar;
    }

    @Override // p052g4.p
    public final void a(h hVar) {
        int i8 = this.f25358G;
        Executor executor = this.f25359H;
        switch (i8) {
            case 0:
                executor.execute(new V(20, this, hVar));
                break;
            default:
                executor.execute(new V(21, this, hVar));
                break;
        }
    }

    @Override // p052g4.c
    public final void b() {
        this.f25361J.l();
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        this.f25361J.j(exc);
    }

    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        this.f25361J.k(obj);
    }
}
