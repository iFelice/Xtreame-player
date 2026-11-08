package H0;

import D0.U;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f3546G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f3547H;

    public /* synthetic */ q(Object obj, int i8) {
        this.f3546G = i8;
        this.f3547H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f3546G;
        Object obj = this.f3547H;
        switch (i8) {
            case 0:
                ((t) obj).F();
                break;
            case 1:
                t tVar = (t) obj;
                tVar.f3591i0 = true;
                tVar.F();
                break;
            default:
                ((U) obj).I();
                break;
        }
    }
}
