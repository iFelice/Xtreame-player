package A0;

import C0.C0077b;
import D0.C0124n;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f27H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f28I;

    public /* synthetic */ C(Object obj, int i8, long j8) {
        this.f26G = i8;
        this.f27H = obj;
        this.f28I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26G;
        long j8 = this.f28I;
        Object obj = this.f27H;
        switch (i8) {
            case 0:
                ((p046f6.c) ((D) obj).f38j).g(j8, false);
                break;
            case 1:
                ((p046f6.c) ((D) obj).f38j).g(j8, true);
                break;
            default:
                C0124n c0124n = (C0124n) obj;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1010, new C0.y(c0077bT, 0, j8));
                break;
        }
    }
}
