package com.google.android.gms.internal.ads;

import android.os.Bundle;
import p021c4.C0621y;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.gr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1380gr extends AbstractC1328fr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractC1317fg f19011a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1217dj f19012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C2046tk f19013c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1690mr f19014d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C2104uq f19015e;

    public C1380gr(AbstractC1317fg abstractC1317fg, C1217dj c1217dj, C2046tk c2046tk, C1690mr c1690mr, C2104uq c2104uq) {
        this.f19011a = abstractC1317fg;
        this.f19012b = c1217dj;
        this.f19013c = c2046tk;
        this.f19014d = c1690mr;
        this.f19015e = c2104uq;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC1328fr
    public final Fw c(Yv yv, Bundle bundle, Ov ov, Tv tv) {
        C1217dj c1217dj = this.f19012b;
        c1217dj.f18347b = yv;
        c1217dj.f18348c = bundle;
        c1217dj.f18350e = new C1021Zi(tv, ov, this.f19014d);
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15903o3)).booleanValue()) {
            c1217dj.f18351f = this.f19015e;
        }
        C0671Bg c0671Bg = ((C0671Bg) this.f19011a).f12432c;
        C1217dj c1217dj2 = new C1217dj(c1217dj);
        C2046tk c2046tk = this.f19013c;
        Cw.f1(C2046tk.class, c2046tk);
        C0823Li c0823LiZzb = new C0716Eg(c0671Bg, new C0621y(4), c2046tk, c1217dj2, new C2053tr(), null, null).zzb();
        return c0823LiZzb.a(c0823LiZzb.b());
    }
}
