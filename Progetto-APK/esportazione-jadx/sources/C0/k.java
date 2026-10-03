package C0;

import O0.C0292p;
import O0.C0296u;
import p094m0.X;
import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class k implements p117p0.u, InterfaceC3172j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1305G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f1306H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f1307I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f1308J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f1309K;

    public /* synthetic */ k(int i8, X x7, X x8, C0077b c0077b) {
        this.f1305G = 0;
        this.f1306H = c0077b;
        this.f1307I = i8;
        this.f1308J = x7;
        this.f1309K = x8;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        O0.D d6 = (O0.D) this.f1306H;
        ((O0.E) obj).I(d6.f5030a, d6.f5031b, (C0292p) this.f1308J, (C0296u) this.f1309K, this.f1307I);
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        InterfaceC0078c interfaceC0078c = (InterfaceC0078c) obj;
        switch (this.f1305G) {
            case 0:
                interfaceC0078c.getClass();
                F f8 = (F) interfaceC0078c;
                int i8 = this.f1307I;
                if (i8 == 1) {
                    f8.f1274v = true;
                }
                f8.f1264l = i8;
                break;
            default:
                interfaceC0078c.getClass();
                break;
        }
    }

    public /* synthetic */ k(Object obj, C0292p c0292p, C0296u c0296u, int i8, int i9) {
        this.f1305G = i9;
        this.f1306H = obj;
        this.f1308J = c0292p;
        this.f1309K = c0296u;
        this.f1307I = i8;
    }
}
