package U0;

/* JADX INFO: renamed from: U0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0351q implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f6833G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ O f6834H;

    public /* synthetic */ RunnableC0351q(O o4, int i8) {
        this.f6833G = i8;
        this.f6834H = o4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f6833G;
        O o4 = this.f6834H;
        switch (i8) {
            case 0:
                o4.F();
                break;
            case 1:
                o4.z();
                break;
            default:
                o4.k();
                break;
        }
    }
}
