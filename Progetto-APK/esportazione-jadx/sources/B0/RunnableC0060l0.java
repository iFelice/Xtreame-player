package B0;

import C0.InterfaceC0076a;
import O0.C0296u;
import O0.C0300y;
import android.util.Pair;

/* JADX INFO: renamed from: B0.l0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0060l0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1016G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ q0 f1017H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Pair f1018I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0296u f1019J;

    public /* synthetic */ RunnableC0060l0(q0 q0Var, Pair pair, C0296u c0296u, int i8) {
        this.f1016G = i8;
        this.f1017H = q0Var;
        this.f1018I = pair;
        this.f1019J = c0296u;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1016G;
        C0296u c0296u = this.f1019J;
        Pair pair = this.f1018I;
        q0 q0Var = this.f1017H;
        switch (i8) {
            case 0:
                InterfaceC0076a interfaceC0076a = q0Var.f1063H.f1085h;
                int iIntValue = ((Integer) pair.first).intValue();
                C0300y c0300y = (C0300y) pair.second;
                c0300y.getClass();
                ((C0.A) interfaceC0076a).r(iIntValue, c0300y, c0296u);
                break;
            default:
                ((C0.A) q0Var.f1063H.f1085h).M(((Integer) pair.first).intValue(), (C0300y) pair.second, c0296u);
                break;
        }
    }
}
