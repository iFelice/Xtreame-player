package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.wr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2209wr implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f21753a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C0893Qg f21754b;

    public C2209wr(Context context, C0893Qg c0893Qg) {
        this.f21753a = context;
        this.f21754b = c0893Qg;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) {
        try {
            ((InterfaceC0771Ib) c2000sq.f20994b).a3(ov.f15245Z);
            Xu xu = tv.f16754a;
            int i8 = ((Yv) xu.f17529H).f17688o.f9298H;
            Context context = this.f21753a;
            InterfaceC0749Gj interfaceC0749Gj = c2000sq.f20995c;
            Object obj = c2000sq.f20994b;
            JSONObject jSONObject = ov.f15288v;
            try {
                if (i8 == 3) {
                    ((InterfaceC0771Ib) obj).D1(ov.f15240U, jSONObject.toString(), ((Yv) xu.f17529H).f17677d, new R3.b(context), new BinderC2157vr(c2000sq), (InterfaceC1416hb) interfaceC0749Gj);
                } else {
                    ((InterfaceC0771Ib) obj).X1(ov.f15240U, jSONObject.toString(), ((Yv) xu.f17529H).f17677d, new R3.b(context), new BinderC2157vr(c2000sq), (InterfaceC1416hb) interfaceC0749Gj);
                }
            } catch (RemoteException e8) {
                e = e8;
                p113o3.I.l("Remote exception loading a rewarded RTB ad", e);
            }
        } catch (RemoteException e9) {
            e = e9;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, C2000sq c2000sq) {
        Qq qq = new Qq(ov, (InterfaceC0771Ib) c2000sq.f20994b, p043f3.a.REWARDED);
        p004a3.b bVar = new p004a3.b(tv, ov, c2000sq.f20993a);
        C1169cn c1169cn = new C1169cn(qq);
        C0893Qg c0893Qg = this.f21754b;
        C0893Qg c0893Qg2 = c0893Qg.f16075d;
        C0879Pg c0879Pg = new C0879Pg(c0893Qg.f16073c, c0893Qg2, bVar, c1169cn);
        MJ mj = c0879Pg.f15434g0;
        qq.f16142J = (C2357zj) mj.zzb();
        ((Nq) c2000sq.f20995c).A3(new Hr((C1734nj) c0879Pg.f15438k0.zzb(), (C0855Nk) c0879Pg.f15440m0.zzb(), (C2357zj) mj.zzb(), (C0734Fj) c0879Pg.f15437j0.zzb(), (C0764Hj) c0879Pg.f15441n0.zzb(), (C2201wj) c0879Pg.f15447t0.zzb(), (C1527jk) c0893Qg2.f16082g0.zzb(), (C0953Uk) c0879Pg.f15444q0.zzb(), (C0896Qj) c0879Pg.f15443p0.zzb(), (C0911Rk) c0879Pg.f15449v0.zzb(), (C1425hk) c0879Pg.f15445r0.zzb()));
        return c0879Pg.G0();
    }
}
