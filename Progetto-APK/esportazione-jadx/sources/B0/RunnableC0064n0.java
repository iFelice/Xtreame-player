package B0;

import O0.C0292p;
import O0.C0296u;
import O0.C0300y;
import android.util.Pair;

/* JADX INFO: renamed from: B0.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0064n0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1034G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ q0 f1035H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Pair f1036I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0292p f1037J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ C0296u f1038K;

    public /* synthetic */ RunnableC0064n0(q0 q0Var, Pair pair, C0292p c0292p, C0296u c0296u, int i8) {
        this.f1034G = i8;
        this.f1035H = q0Var;
        this.f1036I = pair;
        this.f1037J = c0292p;
        this.f1038K = c0296u;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1034G;
        C0296u c0296u = this.f1038K;
        C0292p c0292p = this.f1037J;
        Pair pair = this.f1036I;
        q0 q0Var = this.f1035H;
        switch (i8) {
            case 0:
                ((C0.A) q0Var.f1063H.f1085h).F(((Integer) pair.first).intValue(), (C0300y) pair.second, c0292p, c0296u);
                break;
            default:
                ((C0.A) q0Var.f1063H.f1085h).l(((Integer) pair.first).intValue(), (C0300y) pair.second, c0292p, c0296u);
                break;
        }
    }
}
