package G0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3369G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ o f3370H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ p f3371I;

    public /* synthetic */ m(o oVar, p pVar, int i8) {
        this.f3369G = i8;
        this.f3370H = oVar;
        this.f3371I = pVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f3369G;
        p pVar = this.f3371I;
        o oVar = this.f3370H;
        switch (i8) {
            case 0:
                pVar.C(oVar.f3374a, oVar.f3375b);
                break;
            case 1:
                pVar.H(oVar.f3374a, oVar.f3375b);
                break;
            case 2:
                pVar.h(oVar.f3374a, oVar.f3375b);
                break;
            default:
                pVar.w(oVar.f3374a, oVar.f3375b);
                break;
        }
    }
}
