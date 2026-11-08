package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Dq implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f12882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f12883b;

    public Dq(MJ mj, JJ jj) {
        this.f12882a = mj;
        this.f12883b = jj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new Cq((Context) this.f12882a.zzb(), (AbstractC0747Gh) this.f12883b.zzb());
    }
}
