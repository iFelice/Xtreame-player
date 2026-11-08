package U0;

import B0.C0053i;
import C0.C0077b;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class M implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6686G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ x0 f6687H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0053i f6688I;

    public /* synthetic */ M(x0 x0Var, C0053i c0053i, int i8) {
        this.f6686G = i8;
        this.f6687H = x0Var;
        this.f6688I = c0053i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6686G) {
            case 0:
                N n7 = (N) this.f6687H.f22391I;
                String str = p117p0.M.f28050a;
                B0.O o4 = ((B0.L) n7).f743G;
                o4.getClass();
                C0.A a8 = (C0.A) o4.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1015, new C0.n(c0077bT, this.f6688I, 3));
                break;
            default:
                x0 x0Var = this.f6687H;
                C0053i c0053i = this.f6688I;
                x0Var.getClass();
                synchronized (c0053i) {
                }
                N n8 = (N) x0Var.f22391I;
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) n8).f743G.f790X;
                C0077b c0077bQ = a9.Q(a9.f1229J.f1340e);
                a9.U(c0077bQ, 1020, new C0.n(c0077bQ, c0053i, 0));
                break;
        }
    }
}
