package D0;

import C0.C0077b;

/* JADX INFO: renamed from: D0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0120j implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1945G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0124n f1946H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Exception f1947I;

    public /* synthetic */ RunnableC0120j(C0124n c0124n, Exception exc, int i8) {
        this.f1945G = i8;
        this.f1946H = c0124n;
        this.f1947I = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1945G;
        Exception exc = this.f1947I;
        C0124n c0124n = this.f1946H;
        c0124n.getClass();
        switch (i8) {
            case 0:
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1029, new C0.v(c0077bT, exc, 1));
                break;
            default:
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT2 = a9.T();
                a9.U(c0077bT2, 1014, new C0.v(c0077bT2, exc, 2));
                break;
        }
    }
}
