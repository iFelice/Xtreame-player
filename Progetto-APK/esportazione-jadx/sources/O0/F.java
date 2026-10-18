package O0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5033G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ L f5034H;

    public /* synthetic */ F(L l4, int i8) {
        this.f5033G = i8;
        this.f5034H = l4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f5033G;
        L l4 = this.f5034H;
        switch (i8) {
            case 0:
                l4.A();
                break;
            case 1:
                if (!l4.f5102w0) {
                    InterfaceC0297v interfaceC0297v = l4.f5079Z;
                    interfaceC0297v.getClass();
                    interfaceC0297v.r(l4);
                }
                break;
            default:
                l4.f5096q0 = true;
                break;
        }
    }
}
