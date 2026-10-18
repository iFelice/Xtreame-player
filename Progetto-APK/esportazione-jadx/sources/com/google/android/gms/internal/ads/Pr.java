package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class Pr implements InterfaceC1845pq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f15486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC1216di f15487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Z7 f15488c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f15489d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Kw f15490e;

    public Pr(Context context, AbstractC1216di abstractC1216di, Kw kw, InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC, Z7 z7) {
        this.f15486a = context;
        this.f15487b = abstractC1216di;
        this.f15490e = kw;
        this.f15489d = interfaceExecutorServiceC1504jC;
        this.f15488c = z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final D4.b a(Tv tv, Ov ov) {
        Or or = new Or(new View(this.f15486a), null, new C2272y1(), (Pv) ov.f15286u.get(0));
        p004a3.b bVar = new p004a3.b(tv, ov, (String) null);
        C0776Ig c0776Ig = (C0776Ig) this.f15487b;
        C0746Gg c0746Gg = new C0746Gg(c0776Ig.f13963d, c0776Ig.f13965e, bVar, or);
        C1734nj c1734nj = (C1734nj) c0746Gg.f13608f0.zzb();
        C2357zj c2357zj = (C2357zj) c0746Gg.f13611i0.zzb();
        C0883Pk c0883Pk = (C0883Pk) c0746Gg.f13613k0.zzb();
        C0840Mk c0840Mk = (C0840Mk) c0746Gg.f13622t0.zzb();
        C0672Bh c0672Bh = (C0672Bh) c0746Gg.f13596T.zzb();
        C1950rs c1950rs = new C1950rs();
        c1950rs.f20800L = new AtomicBoolean(false);
        c1950rs.f20796H = c1734nj;
        c1950rs.f20797I = c2357zj;
        c1950rs.f20795G = c0883Pk;
        c1950rs.f20798J = c0840Mk;
        c1950rs.f20799K = c0672Bh;
        Rv rv = ov.f15282s;
        X7 x7 = new X7(c1950rs, rv.f16373b, rv.f16372a);
        Iw iw = Iw.CUSTOM_RENDER_SYN;
        CallableC1419he callableC1419he = new CallableC1419he(new C0871Om(11, this, x7), 29);
        return new C1950rs(this.f15490e, iw, null, Gw.f13664d, Collections.emptyList(), ((IB) this.f15489d).b(callableC1419he)).g(Iw.CUSTOM_RENDER_ACK).n(new C1996sm(3, Cw.N1(c0746Gg.G0())), AbstractC1988se.f20911f).c();
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1845pq
    public final boolean b(Tv tv, Ov ov) {
        Rv rv;
        return (this.f15488c == null || (rv = ov.f15282s) == null || rv.f16372a == null) ? false : true;
    }
}
