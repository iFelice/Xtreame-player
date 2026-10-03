package B0;

import O0.C0300y;
import android.util.Pair;

/* JADX INFO: renamed from: B0.m0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0062m0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1031G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ q0 f1032H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Pair f1033I;

    public /* synthetic */ RunnableC0062m0(q0 q0Var, Pair pair, int i8) {
        this.f1031G = i8;
        this.f1032H = q0Var;
        this.f1033I = pair;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1031G;
        Pair pair = this.f1033I;
        q0 q0Var = this.f1032H;
        switch (i8) {
            case 0:
                ((C0.A) q0Var.f1063H.f1085h).C(((Integer) pair.first).intValue(), (C0300y) pair.second);
                break;
            case 1:
                ((C0.A) q0Var.f1063H.f1085h).H(((Integer) pair.first).intValue(), (C0300y) pair.second);
                break;
            case 2:
                ((C0.A) q0Var.f1063H.f1085h).h(((Integer) pair.first).intValue(), (C0300y) pair.second);
                break;
            default:
                ((C0.A) q0Var.f1063H.f1085h).w(((Integer) pair.first).intValue(), (C0300y) pair.second);
                break;
        }
    }
}
