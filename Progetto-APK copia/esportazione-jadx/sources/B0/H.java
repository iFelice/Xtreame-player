package B0;

import p117p0.InterfaceC3166d;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H implements p117p0.v, InterfaceC3166d, p117p0.u {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ O f719G;

    public /* synthetic */ H(O o4) {
        this.f719G = o4;
    }

    @Override // p117p0.InterfaceC3166d
    public final void a(Object obj, Object obj2) {
        Integer num = (Integer) obj2;
        int iIntValue = num.intValue();
        O o4 = this.f719G;
        o4.c0();
        o4.O(1, num, 10);
        o4.O(2, num, 10);
        o4.f785S.l(21, new G(iIntValue, 1));
    }

    @Override // p117p0.v
    public final void c(Object obj, p094m0.r rVar) {
        this.f719G.getClass();
        ((p094m0.W) obj).D(new p094m0.V(rVar));
    }

    @Override // p117p0.u
    public final void invoke(Object obj) {
        ((p094m0.W) obj).d(this.f719G.f812t0);
    }
}
