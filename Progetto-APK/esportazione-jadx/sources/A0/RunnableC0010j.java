package A0;

import C0.C0077b;
import N.C0260i;
import com.google.android.gms.internal.atv_ads_framework.x0;
import p094m0.o0;

/* JADX INFO: renamed from: A0.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0010j implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f159G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f160H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f161I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f162J;

    public /* synthetic */ RunnableC0010j(Object obj, Object obj2, long j8, int i8) {
        this.f159G = i8;
        this.f162J = obj;
        this.f160H = obj2;
        this.f161I = j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f159G;
        Object obj = this.f160H;
        Object obj2 = this.f162J;
        switch (i8) {
            case 0:
                ((C0011k) obj2).f169g.d(o0.a((Exception) obj));
                break;
            case 1:
                D d6 = (D) obj2;
                d6.getClass();
                ((p046f6.c) d6.f38j).f(o0.a((Exception) obj));
                break;
            default:
                U0.N n7 = (U0.N) ((x0) obj2).f22391I;
                String str = p117p0.M.f28050a;
                B0.O o4 = ((B0.L) n7).f743G;
                C0.A a8 = (C0.A) o4.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 26, new C0.o(c0077bT, this.f161I, obj));
                if (o4.f814v0 == obj) {
                    o4.f785S.l(26, new C0260i(8));
                }
                break;
        }
    }
}
