package U0;

import C0.C0077b;
import C0.C0080e;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class L implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6682G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ x0 f6683H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f6684I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ int f6685J;

    public /* synthetic */ L(x0 x0Var, int i8, long j8) {
        this.f6683H = x0Var;
        this.f6685J = i8;
        this.f6684I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f6682G;
        x0 x0Var = this.f6683H;
        switch (i8) {
            case 0:
                N n7 = (N) x0Var.f22391I;
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) n7).f743G.f790X;
                C0077b c0077bQ = a8.Q(a8.f1229J.f1340e);
                a8.U(c0077bQ, 1018, new C0080e(this.f6685J, this.f6684I, c0077bQ));
                break;
            default:
                N n8 = (N) x0Var.f22391I;
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) n8).f743G.f790X;
                C0077b c0077bQ2 = a9.Q(a9.f1229J.f1340e);
                long j8 = this.f6684I;
                a9.U(c0077bQ2, 1021, new C0080e(this.f6685J, 1, j8, c0077bQ2));
                break;
        }
    }

    public /* synthetic */ L(x0 x0Var, long j8, int i8) {
        this.f6683H = x0Var;
        this.f6684I = j8;
        this.f6685J = i8;
    }
}
