package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import androidx.leanback.widget.C0484j;

/* JADX INFO: loaded from: classes.dex */
public final class Cq implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f12698a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC0747Gh f12699b;

    public Cq(Context context, AbstractC0747Gh abstractC0747Gh) {
        this.f12698a = context;
        this.f12699b = abstractC0747Gh;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        try {
            ((InterfaceC0771Ib) c2000sq.f20994b).a3(ov.f15245Z);
            ((InterfaceC0771Ib) c2000sq.f20994b).F2(ov.f15240U, ov.f15288v.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(this.f12698a), new Bq(c2000sq), (InterfaceC1416hb) c2000sq.f20995c);
        } catch (RemoteException e8) {
            p113o3.I.l("Remote exception loading an app open RTB ad", e8);
            throw new C1075aw(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, C2000sq c2000sq) {
        Qq qq = new Qq(ov, (InterfaceC0771Ib) c2000sq.f20994b, p043f3.a.APP_OPEN_AD);
        p004a3.b bVar = new p004a3.b(tv, ov, c2000sq.f20993a);
        C2218x c2218x = new C2218x(22, qq, (Object) null);
        C0484j c0484j = new C0484j(ov.f15247a0, 3);
        C0716Eg c0716Eg = (C0716Eg) this.f12699b;
        C0716Eg c0716Eg2 = c0716Eg.f13121d;
        C0686Cg c0686Cg = new C0686Cg(c0716Eg.f13119c, c0716Eg2, bVar, c2218x, c0484j);
        MJ mj = c0686Cg.f12660h0;
        qq.f16142J = (C2357zj) mj.zzb();
        ((Nq) c2000sq.f20995c).A3(new Ir((C1734nj) c0686Cg.f12664l0.zzb(), (C0855Nk) c0686Cg.f12666n0.zzb(), (C2357zj) mj.zzb(), (C0734Fj) c0686Cg.f12663k0.zzb(), (C0764Hj) c0686Cg.f12667o0.zzb(), (C1527jk) c0716Eg2.f13104V0.zzb(), (C0896Qj) c0686Cg.f12668p0.zzb(), (C0953Uk) c0686Cg.f12669q0.zzb(), (C1425hk) c0686Cg.f12670r0.zzb(), (C2201wj) c0686Cg.f12672t0.zzb()));
        return c0686Cg.G0();
    }
}
