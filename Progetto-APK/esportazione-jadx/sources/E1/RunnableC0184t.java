package E1;

/* JADX INFO: renamed from: E1.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0184t implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f2804G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f2805H;

    public /* synthetic */ RunnableC0184t(Object obj, int i8) {
        this.f2804G = i8;
        this.f2805H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f2804G;
        Object obj = this.f2805H;
        switch (i8) {
            case 0:
                ((A) obj).m();
                break;
            default:
                ((e0) obj).a();
                break;
        }
    }
}
