package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Tl, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0940Tl implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f16718a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f16719b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f16720c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final QJ f16721d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final QJ f16722e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final QJ f16723f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final QJ f16724g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final QJ f16725h;

    public C0940Tl(C1472ig c1472ig, C1526jj c1526jj, MJ mj, MJ mj2, IJ ij, IJ ij2, MJ mj3, MJ mj4) {
        this.f16718a = c1472ig;
        this.f16719b = c1526jj;
        this.f16720c = mj;
        this.f16721d = mj2;
        this.f16722e = ij;
        this.f16723f = ij2;
        this.f16724g = mj3;
        this.f16725h = mj4;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0926Sl zzb() {
        p113o3.L lZzb = ((C1472ig) this.f16718a).zzb();
        Yv yvA = ((C1526jj) this.f16719b).a();
        C0811Kl c0811Kl = (C0811Kl) this.f16720c.zzb();
        C0781Il c0781IlA = C0884Pl.a(((C0884Pl) this.f16721d).f15466a);
        C1010Yl c1010Yl = (C1010Yl) this.f16722e.zzb();
        C1117bm c1117bm = (C1117bm) this.f16723f.zzb();
        Executor executor = (Executor) this.f16724g.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C0926Sl(lZzb, yvA, c0811Kl, c0781IlA, c1010Yl, c1117bm, executor, c1936re, (C0751Gl) this.f16725h.zzb());
    }
}
