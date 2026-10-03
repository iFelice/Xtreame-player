package B0;

import C0.C0077b;
import C0.InterfaceC0078c;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class D implements p117p0.u, p020c3.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f696G = 0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ int f697H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f698I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f699J;

    public /* synthetic */ D(int i8, p094m0.X x7, p094m0.X x8) {
        this.f697H = i8;
        this.f698I = x7;
        this.f699J = x8;
    }

    @Override // p020c3.b
    public final Object execute() {
        p004a3.j jVar = (p004a3.j) this.f698I;
        ((p004a3.d) jVar.f8679d).a((U2.i) this.f699J, this.f697H + 1, false);
        return null;
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        switch (this.f696G) {
            case 0:
                p094m0.X x7 = (p094m0.X) this.f698I;
                p094m0.X x8 = (p094m0.X) this.f699J;
                p094m0.W w7 = (p094m0.W) obj;
                w7.getClass();
                w7.e(this.f697H, x7, x8);
                break;
            default:
                ((InterfaceC0078c) obj).getClass();
                break;
        }
    }

    public /* synthetic */ D(C0077b c0077b, Object obj, int i8) {
        this.f698I = c0077b;
        this.f699J = obj;
        this.f697H = i8;
    }
}
