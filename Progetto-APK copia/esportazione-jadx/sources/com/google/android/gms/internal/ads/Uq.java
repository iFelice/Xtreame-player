package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public final class Uq implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f16897a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0851Ng f16898b;

    public Uq(Context context, C0851Ng c0851Ng) {
        this.f16897a = context;
        this.f16898b = c0851Ng;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        try {
            ((InterfaceC0771Ib) c2000sq.f20994b).a3(ov.f15245Z);
            ((InterfaceC0771Ib) c2000sq.f20994b).x0(ov.f15240U, ov.f15288v.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(this.f16897a), new Tq(c2000sq), (InterfaceC1416hb) c2000sq.f20995c);
        } catch (RemoteException e8) {
            p113o3.I.l("Remote exception loading a interstitial RTB ad", e8);
            throw new C1075aw(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, C2000sq c2000sq) {
        Qq qq = new Qq(ov, (InterfaceC0771Ib) c2000sq.f20994b, p043f3.a.INTERSTITIAL);
        C0836Mg c0836MgC = this.f16898b.c(new p004a3.b(tv, ov, c2000sq.f20993a), new C2218x(22, qq, (Object) null));
        MJ mj = c0836MgC.f14761g0;
        qq.f16142J = (C2357zj) mj.zzb();
        ((Nq) c2000sq.f20995c).A3(new Ir((C1734nj) c0836MgC.f14765k0.zzb(), (C0855Nk) c0836MgC.f14768n0.zzb(), (C2357zj) mj.zzb(), (C0734Fj) c0836MgC.f14764j0.zzb(), (C0764Hj) c0836MgC.f14769o0.zzb(), (C1527jk) c0836MgC.f14744P.f15002e1.zzb(), (C0896Qj) c0836MgC.f14771q0.zzb(), (C0953Uk) c0836MgC.f14772r0.zzb(), (C1425hk) c0836MgC.f14773s0.zzb(), (C2201wj) c0836MgC.f14775u0.zzb()));
        return c0836MgC.G0();
    }
}
