package A0;

/* JADX INFO: renamed from: A0.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0005e implements g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f137a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ K f138b;

    public /* synthetic */ C0005e(K k8, int i8) {
        this.f137a = i8;
        this.f138b = k8;
    }

    @Override // A0.g0
    public final void run() {
        int i8 = this.f137a;
        K k8 = this.f138b;
        switch (i8) {
            case 0:
                k8.flush();
                break;
            case 1:
                k8.a();
                break;
            default:
                k8.a();
                break;
        }
    }
}
