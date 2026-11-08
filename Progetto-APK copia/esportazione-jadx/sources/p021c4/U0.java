package p021c4;

/* JADX INFO: loaded from: classes.dex */
public final class U0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f11053G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ V0 f11054H;

    public /* synthetic */ U0(V0 v5, int i8) {
        this.f11053G = i8;
        this.f11054H = v5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f11053G;
        V0 v5 = this.f11054H;
        switch (i8) {
            case 0:
                v5.f11064K = v5.f11069P;
                break;
            default:
                v5.f11069P = null;
                break;
        }
    }
}
