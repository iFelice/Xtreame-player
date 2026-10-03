package D0;

import C0.C0077b;
import C0.C0083h;

/* JADX INFO: renamed from: D0.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0123m implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1958G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0124n f1959H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0126p f1960I;

    public /* synthetic */ RunnableC0123m(C0124n c0124n, C0126p c0126p, int i8) {
        this.f1958G = i8;
        this.f1959H = c0124n;
        this.f1960I = c0126p;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1958G;
        C0126p c0126p = this.f1960I;
        C0124n c0124n = this.f1959H;
        c0124n.getClass();
        switch (i8) {
            case 0:
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1031, new C0083h(c0077bT, c0126p, 0));
                break;
            default:
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT2 = a9.T();
                a9.U(c0077bT2, 1032, new C0083h(c0077bT2, c0126p, 1));
                break;
        }
    }
}
