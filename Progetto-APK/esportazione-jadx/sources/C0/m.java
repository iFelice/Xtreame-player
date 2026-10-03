package C0;

import O0.C0296u;
import O0.C0300y;
import p094m0.C3136t;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class m implements p117p0.u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1310G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0077b f1311H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0296u f1312I;

    public /* synthetic */ m(C0077b c0077b, C0296u c0296u, int i8) {
        this.f1310G = i8;
        this.f1311H = c0077b;
        this.f1312I = c0296u;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1310G) {
            case 0:
                F f8 = (F) interfaceC0078c;
                f8.getClass();
                C0077b c0077b = this.f1311H;
                if (c0077b.f1286d != null) {
                    C0296u c0296u = this.f1312I;
                    C3136t c3136t = c0296u.f5252c;
                    c3136t.getClass();
                    C0300y c0300y = c0077b.f1286d;
                    c0300y.getClass();
                    F.d dVar = new F.d(f8.f1255c.d(c0077b.f1284b, c0300y), c0296u.f5253d, 1, c3136t);
                    int i8 = c0296u.f5251b;
                    if (i8 != 0) {
                        if (i8 == 1) {
                            f8.f1269q = dVar;
                            break;
                        } else if (i8 != 2) {
                            if (i8 == 3) {
                                f8.f1270r = dVar;
                                break;
                            }
                        }
                    }
                    f8.f1268p = dVar;
                    break;
                }
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }
}
