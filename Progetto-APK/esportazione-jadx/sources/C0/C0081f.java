package C0;

import B0.C0072w;
import p094m0.Q;

/* JADX INFO: renamed from: C0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0081f implements p117p0.u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1300G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Q f1301H;

    public /* synthetic */ C0081f(C0077b c0077b, C0072w c0072w, int i8) {
        this.f1300G = i8;
        this.f1301H = c0072w;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1300G) {
            case 0:
                interfaceC0078c.getClass();
                break;
            default:
                ((F) interfaceC0078c).f1267o = this.f1301H;
                break;
        }
    }
}
