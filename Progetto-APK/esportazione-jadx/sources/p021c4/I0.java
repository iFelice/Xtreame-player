package p021c4;

/* JADX INFO: loaded from: classes.dex */
public final class I0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f10863G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0620x0 f10864H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ long f10865I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ boolean f10866J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ K0 f10867K;

    public /* synthetic */ I0(K0 k8, C0620x0 c0620x0, long j8, boolean z7, int i8) {
        this.f10863G = i8;
        this.f10864H = c0620x0;
        this.f10865I = j8;
        this.f10866J = z7;
        this.f10867K = k8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f10863G;
        C0620x0 c0620x0 = this.f10864H;
        K0 k8 = this.f10867K;
        switch (i8) {
            case 0:
                k8.F(c0620x0);
                K0.q(k8, c0620x0, this.f10865I, true, this.f10866J);
                break;
            default:
                k8.F(c0620x0);
                K0.q(k8, c0620x0, this.f10865I, false, this.f10866J);
                break;
        }
    }
}
