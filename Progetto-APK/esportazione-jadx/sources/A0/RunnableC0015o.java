package A0;

import p094m0.o0;

/* JADX INFO: renamed from: A0.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0015o implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f190G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0023x f191H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ InterruptedException f192I;

    public /* synthetic */ RunnableC0015o(C0023x c0023x, InterruptedException interruptedException, int i8) {
        this.f190G = i8;
        this.f191H = c0023x;
        this.f192I = interruptedException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f190G;
        InterruptedException interruptedException = this.f192I;
        C0023x c0023x = this.f191H;
        c0023x.getClass();
        switch (i8) {
            case 0:
                ((p046f6.c) c0023x.f230h).f(o0.a(interruptedException));
                break;
            default:
                ((p046f6.c) c0023x.f230h).f(new o0(interruptedException));
                break;
        }
    }
}
