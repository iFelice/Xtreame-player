package C0;

import B0.C0053i;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class n implements p117p0.u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1313G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0053i f1314H;

    public /* synthetic */ n(C0077b c0077b, C0053i c0053i, int i8) {
        this.f1313G = i8;
        this.f1314H = c0053i;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1313G) {
            case 0:
                F f8 = (F) interfaceC0078c;
                int i8 = f8.f1277y;
                C0053i c0053i = this.f1314H;
                f8.f1277y = i8 + c0053i.f970g;
                f8.f1278z += c0053i.f968e;
                break;
            case 1:
                interfaceC0078c.getClass();
                break;
            case 2:
                interfaceC0078c.getClass();
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }
}
