package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.pal.C2805r1;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;
import p090l3.C3099q;
import p167v3.C3195c;

/* JADX INFO: loaded from: classes.dex */
public final class Hq implements InterfaceC2156vq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f13797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AbstractC1216di f13798b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public View f13799c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public InterfaceC1518jb f13800d;

    public Hq(Context context, AbstractC1216di abstractC1216di) {
        this.f13797a = context;
        this.f13798b = abstractC1216di;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final void a(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        try {
            ((InterfaceC0771Ib) c2000sq.f20994b).a3(ov.f15245Z);
            boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.f15856i7)).booleanValue();
            Context context = this.f13797a;
            InterfaceC0749Gj interfaceC0749Gj = c2000sq.f20995c;
            Object obj = c2000sq.f20994b;
            JSONObject jSONObject = ov.f15288v;
            if (zBooleanValue && ov.f15259g0) {
                ((InterfaceC0771Ib) obj).W(ov.f15240U, jSONObject.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(context), new Gq(this, c2000sq), (InterfaceC1416hb) interfaceC0749Gj, ((Yv) tv.f16754a.f17529H).f17678e);
            } else {
                ((InterfaceC0771Ib) obj).c3(ov.f15240U, jSONObject.toString(), ((Yv) tv.f16754a.f17529H).f17677d, new R3.b(context), new Gq(this, c2000sq), (InterfaceC1416hb) interfaceC0749Gj, ((Yv) tv.f16754a.f17529H).f17678e);
            }
        } catch (RemoteException e8) {
            throw new C1075aw(e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2156vq
    public final Object b(Tv tv, Ov ov, C2000sq c2000sq) throws C1075aw {
        View view;
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15856i7)).booleanValue() && ov.f15259g0) {
            try {
                view = (View) R3.b.v0(((C1468ib) this.f13800d).z3());
                C1468ib c1468ib = (C1468ib) this.f13800d;
                Parcel parcelN2 = c1468ib.n2(2, c1468ib.j0());
                ClassLoader classLoader = A5.f11962a;
                boolean z7 = parcelN2.readInt() != 0;
                parcelN2.recycle();
                if (view == null) {
                    throw new C1075aw(new Exception("BannerRtbAdapterWrapper interscrollerView should not be null"));
                }
                if (z7) {
                    try {
                        view = (View) Cw.d2(Cw.N1(null), new C3195c(this, view, ov, 5), AbstractC1988se.f20910e).get();
                    } catch (InterruptedException | ExecutionException e8) {
                        throw new C1075aw(e8);
                    }
                }
            } catch (RemoteException e9) {
                throw new C1075aw(e9);
            }
        } else {
            view = this.f13799c;
        }
        p004a3.b bVar = new p004a3.b(tv, ov, c2000sq.f20993a);
        C2246xc c2246xc = new C2246xc(view, (InterfaceC0715Ef) null, new C2805r1(c2000sq, 2), (Pv) ov.f15286u.get(0));
        C0776Ig c0776Ig = (C0776Ig) this.f13798b;
        C0776Ig c0776Ig2 = c0776Ig.f13965e;
        C0746Gg c0746Gg = new C0746Gg(c0776Ig.f13963d, c0776Ig2, bVar, c2246xc);
        ((C0840Mk) c0746Gg.f13622t0.zzb()).a1(view);
        ((Nq) c2000sq.f20995c).A3(new Ir((C1734nj) c0746Gg.f13608f0.zzb(), (C0855Nk) c0746Gg.f13614l0.zzb(), (C2357zj) c0746Gg.f13611i0.zzb(), (C0734Fj) c0746Gg.f13606d0.zzb(), c0746Gg.H0(), (C1527jk) c0776Ig2.f13926J0.zzb(), (C0896Qj) c0746Gg.f13617o0.zzb(), (C0953Uk) c0746Gg.f13618p0.zzb(), (C1425hk) c0746Gg.f13619q0.zzb(), (C2201wj) c0746Gg.f13620r0.zzb()));
        return c0746Gg.G0();
    }
}
