package D0;

import B0.C0053i;
import C0.C0077b;

/* JADX INFO: renamed from: D0.i, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0119i implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1942G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0124n f1943H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0053i f1944I;

    public /* synthetic */ RunnableC0119i(C0124n c0124n, C0053i c0053i, int i8) {
        this.f1942G = i8;
        this.f1943H = c0124n;
        this.f1944I = c0053i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f1942G) {
            case 0:
                C0124n c0124n = this.f1943H;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                B0.O o4 = ((B0.L) c0124n.f1962b).f743G;
                o4.getClass();
                C0.A a8 = (C0.A) o4.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1007, new C0.n(c0077bT, this.f1944I, 1));
                break;
            default:
                C0124n c0124n2 = this.f1943H;
                C0053i c0053i = this.f1944I;
                c0124n2.getClass();
                synchronized (c0053i) {
                }
                InterfaceC0125o interfaceC0125o = c0124n2.f1962b;
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) interfaceC0125o).f743G.f790X;
                C0077b c0077bQ = a9.Q(a9.f1229J.f1340e);
                a9.U(c0077bQ, 1013, new C0.n(c0077bQ, c0053i, 2));
                break;
        }
    }
}
