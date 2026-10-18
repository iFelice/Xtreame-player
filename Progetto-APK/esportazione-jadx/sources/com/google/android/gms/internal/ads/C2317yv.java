package com.google.android.gms.internal.ads;

import android.content.Context;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.yv, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2317yv implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f22087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f22088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f22089c;

    public C2317yv(MJ mj, MJ mj2, MJ mj3) {
        this.f22087a = mj;
        this.f22088b = mj2;
        this.f22089c = mj3;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final InterfaceC2161vv zzb() {
        C1367ge c1367geY;
        Context context = (Context) this.f22087a.zzb();
        C1591kw c1591kw = (C1591kw) this.f22088b.zzb();
        C2162vw c2162vw = (C2162vw) this.f22089c.zzb();
        J7 j8 = Q7.f15690O5;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            c1367geY = p083k3.l.f25980A.f25987g.d().y();
        } else {
            p113o3.L lD = p083k3.l.f25980A.f25987g.d();
            synchronized (lD.f27894a) {
                c1367geY = lD.f27907n;
            }
        }
        boolean z7 = false;
        if (c1367geY != null && c1367geY.f18949j) {
            z7 = true;
        }
        if (((Integer) c3099q.f26627c.a(Q7.f15706Q5)).intValue() > 0) {
            if (!((Boolean) c3099q.f26627c.a(Q7.f15682N5)).booleanValue() || z7) {
                C2110uw c2110uwA = c2162vw.a(EnumC1747nw.f20208G, context, c1591kw, new Xu(new C1384gv(), 3));
                C1850pv c1850pv = new C1850pv(new C1798ov());
                C1936re c1936re = AbstractC1988se.f20906a;
                p004a3.b bVar = c2110uwA.f21403a;
                return new C1538jv(c1850pv, new C1694mv(bVar, c1936re), c2110uwA.f21404b, ((C1799ow) bVar.f8651I).f20356M, c1936re);
            }
        }
        return new C1798ov();
    }
}
