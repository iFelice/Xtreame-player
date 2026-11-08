package p167v3;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f30687G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ t f30688H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ String f30689I;

    public /* synthetic */ s(t tVar, String str, int i8) {
        this.f30687G = i8;
        this.f30688H = tVar;
        this.f30689I = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f30687G;
        String str = this.f30689I;
        t tVar = this.f30688H;
        switch (i8) {
            case 0:
                ((C3193a) tVar.f30692c).f30587b.evaluateJavascript(str, null);
                break;
            default:
                ((C3193a) tVar.f30692c).f30587b.evaluateJavascript(str, null);
                break;
        }
    }
}
