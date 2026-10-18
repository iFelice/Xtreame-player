package O0;

import p117p0.InterfaceC3172j;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class B implements InterfaceC3172j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5024G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ D f5025H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C0292p f5026I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0296u f5027J;

    public /* synthetic */ B(D d6, C0292p c0292p, C0296u c0296u, int i8) {
        this.f5024G = i8;
        this.f5025H = d6;
        this.f5026I = c0292p;
        this.f5027J = c0296u;
    }

    @Override // p117p0.InterfaceC3172j
    public final void accept(Object obj) {
        int i8 = this.f5024G;
        C0296u c0296u = this.f5027J;
        C0292p c0292p = this.f5026I;
        D d6 = this.f5025H;
        E e8 = (E) obj;
        switch (i8) {
            case 0:
                e8.l(d6.f5030a, d6.f5031b, c0292p, c0296u);
                break;
            default:
                e8.F(d6.f5030a, d6.f5031b, c0292p, c0296u);
                break;
        }
    }
}
