package E1;

/* JADX INFO: renamed from: E1.w, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0187w implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2810G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f2811H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0188x f2812I;

    public /* synthetic */ RunnableC0187w(C0188x c0188x, int i8, int i9) {
        this.f2810G = i9;
        this.f2812I = c0188x;
        this.f2811H = i8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2810G;
        int i9 = this.f2811H;
        C0188x c0188x = this.f2812I;
        switch (i8) {
            case 0:
                F f8 = c0188x.f2813g.f2816c.f2603t;
                if (f8 != null) {
                    f8.g(i9);
                }
                break;
            default:
                F f9 = c0188x.f2813g.f2816c.f2603t;
                if (f9 != null) {
                    f9.h(i9);
                }
                break;
        }
    }
}
