package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Lt implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f14573a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f14574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f14575c;

    public Lt(C0822Lh c0822Lh, MJ mj, NJ nj) {
        this.f14573a = c0822Lh;
        this.f14574b = mj;
        this.f14575c = nj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Jt zzb() {
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new Jt(c1936re, ((C0822Lh) this.f14573a).f14530a.f14391a, (Context) this.f14574b.zzb(), ((NJ) this.f14575c).zzb());
    }
}
