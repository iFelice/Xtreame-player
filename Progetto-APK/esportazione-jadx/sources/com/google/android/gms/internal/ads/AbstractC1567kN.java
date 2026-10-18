package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.HashMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kN, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC1567kN extends AbstractC1257eN {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f19604h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Handler f19605i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public InterfaceC1615lJ f19606j;

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void f() {
        for (C1515jN c1515jN : this.f19604h.values()) {
            c1515jN.f19460a.e(c1515jN.f19461b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public final void h() {
        for (C1515jN c1515jN : this.f19604h.values()) {
            c1515jN.f19460a.g(c1515jN.f19461b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1257eN
    public void m() {
        HashMap map = this.f19604h;
        for (C1515jN c1515jN : map.values()) {
            c1515jN.f19460a.l(c1515jN.f19461b);
            AbstractC1257eN abstractC1257eN = c1515jN.f19460a;
            C2246xc c2246xc = c1515jN.f19462c;
            abstractC1257eN.o(c2246xc);
            abstractC1257eN.n(c2246xc);
        }
        map.clear();
    }

    public abstract void s(Object obj, AbstractC1257eN abstractC1257eN, AbstractC0774Ie abstractC0774Ie);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.ads.iN, com.google.android.gms.internal.ads.xN] */
    public final void t(final Integer num, AbstractC1257eN abstractC1257eN) {
        HashMap map = this.f19604h;
        p113o3.r.J(!map.containsKey(num));
        ?? r7 = new InterfaceC2242xN() { // from class: com.google.android.gms.internal.ads.iN
            @Override // com.google.android.gms.internal.ads.InterfaceC2242xN
            public final void a(AbstractC1257eN abstractC1257eN2, AbstractC0774Ie abstractC0774Ie) {
                this.f19300a.s(num, abstractC1257eN2, abstractC0774Ie);
            }
        };
        C2246xc c2246xc = new C2246xc(this, num);
        map.put(num, new C1515jN(abstractC1257eN, r7, c2246xc));
        Handler handler = this.f19605i;
        handler.getClass();
        C1294f8 c1294f8 = abstractC1257eN.f18519c;
        c1294f8.getClass();
        ((CopyOnWriteArrayList) c1294f8.f18728J).add(new C2346zN(handler, c2246xc));
        this.f19605i.getClass();
        C2137vM c2137vM = abstractC1257eN.f18520d;
        c2137vM.getClass();
        c2137vM.f21518b.add(new C2085uM(c2246xc));
        InterfaceC1615lJ interfaceC1615lJ = this.f19606j;
        C2344zL c2344zL = this.f18523g;
        p113o3.r.x(c2344zL);
        abstractC1257eN.i(r7, interfaceC1615lJ, c2344zL);
        if (!this.f18518b.isEmpty()) {
            return;
        }
        abstractC1257eN.e(r7);
    }

    public void u(Object obj) {
    }

    public void v(Object obj, long j8) {
    }

    public abstract C2190wN w(Object obj, C2190wN c2190wN);
}
