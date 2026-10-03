package B0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class I implements p117p0.u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f726G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f727H;

    public /* synthetic */ I(boolean z7, int i8) {
        this.f726G = i8;
        this.f727H = z7;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        int i8 = this.f726G;
        boolean z7 = this.f727H;
        p094m0.W w7 = (p094m0.W) obj;
        switch (i8) {
            case 0:
                w7.o(z7);
                break;
            default:
                w7.f(z7);
                break;
        }
    }
}
