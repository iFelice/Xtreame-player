package E1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2610G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ D f2611H;

    public /* synthetic */ C(D d6, int i8) {
        this.f2610G = i8;
        this.f2611H = d6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2610G;
        this.f2611H.b();
    }
}
