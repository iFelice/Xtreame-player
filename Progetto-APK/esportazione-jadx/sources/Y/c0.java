package Y;

/* JADX INFO: loaded from: classes.dex */
public final class c0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f7853G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ d0 f7854H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ e0 f7855I;

    public /* synthetic */ c0(e0 e0Var, d0 d0Var, int i8) {
        this.f7853G = i8;
        this.f7855I = e0Var;
        this.f7854H = d0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f7853G;
        d0 d0Var = this.f7854H;
        e0 e0Var = this.f7855I;
        switch (i8) {
            case 0:
                if (e0Var.f7874b.contains(d0Var)) {
                    A0.O.c(d0Var.f7861a, d0Var.f7863c.f7963m0);
                }
                break;
            default:
                e0Var.f7874b.remove(d0Var);
                e0Var.f7875c.remove(d0Var);
                break;
        }
    }
}
