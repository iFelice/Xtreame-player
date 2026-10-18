package p052g4;

import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final class l implements f, e, c {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f25350G = new Object();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f25351H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final r f25352I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f25353J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f25354K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f25355L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Exception f25356M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f25357N;

    public l(int i8, r rVar) {
        this.f25351H = i8;
        this.f25352I = rVar;
    }

    public final void a() {
        int i8 = this.f25353J + this.f25354K + this.f25355L;
        int i9 = this.f25351H;
        if (i8 == i9) {
            Exception exc = this.f25356M;
            r rVar = this.f25352I;
            if (exc == null) {
                if (this.f25357N) {
                    rVar.l();
                    return;
                } else {
                    rVar.k(null);
                    return;
                }
            }
            rVar.j(new ExecutionException(this.f25354K + " out of " + i9 + " underlying tasks failed", this.f25356M));
        }
    }

    @Override // p052g4.c
    public final void b() {
        synchronized (this.f25350G) {
            this.f25355L++;
            this.f25357N = true;
            a();
        }
    }

    @Override // p052g4.e
    public final void onFailure(Exception exc) {
        synchronized (this.f25350G) {
            this.f25354K++;
            this.f25356M = exc;
            a();
        }
    }

    @Override // p052g4.f
    public final void onSuccess(Object obj) {
        synchronized (this.f25350G) {
            this.f25353J++;
            a();
        }
    }
}
