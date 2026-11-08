package K3;

/* JADX INFO: loaded from: classes.dex */
public final class M implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4499G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f4500H;

    public /* synthetic */ M(Object obj, int i8) {
        this.f4499G = i8;
        this.f4500H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f4499G;
        Object obj = this.f4500H;
        switch (i8) {
            case 0:
                ((N) obj).f4508M.b(new J3.b(4));
                break;
            case 1:
                ((z) obj).f();
                break;
            default:
                com.google.android.gms.common.api.e eVar = ((z) ((C0234g) obj).f4552G).f4581H;
                eVar.disconnect(eVar.getClass().getName().concat(" disconnecting because it was signed out."));
                break;
        }
    }
}
