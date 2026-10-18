package D0;

import B0.C0074y;
import C0.C0077b;
import com.google.android.gms.internal.atv_ads_framework.x0;

/* JADX INFO: renamed from: D0.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0121k implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1948G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ String f1949H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f1950I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ long f1951J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f1952K;

    public /* synthetic */ RunnableC0121k(Object obj, String str, long j8, long j9, int i8) {
        this.f1948G = i8;
        this.f1952K = obj;
        this.f1949H = str;
        this.f1950I = j8;
        this.f1951J = j9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f1948G;
        Object obj = this.f1952K;
        switch (i8) {
            case 0:
                C0124n c0124n = (C0124n) obj;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                C0.A a8 = (C0.A) ((B0.L) c0124n.f1962b).f743G.f790X;
                C0077b c0077bT = a8.T();
                a8.U(c0077bT, 1008, new C0074y(c0077bT, this.f1949H, this.f1951J, this.f1950I, 0));
                break;
            default:
                U0.N n7 = (U0.N) ((x0) obj).f22391I;
                String str2 = p117p0.M.f28050a;
                C0.A a9 = (C0.A) ((B0.L) n7).f743G.f790X;
                C0077b c0077bT2 = a9.T();
                a9.U(c0077bT2, 1016, new C0074y(c0077bT2, this.f1949H, this.f1951J, this.f1950I, 1));
                break;
        }
    }
}
