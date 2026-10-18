package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Vq implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f17120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f17121b;

    public Vq(MJ mj, JJ jj) {
        this.f17120a = mj;
        this.f17121b = jj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new Uq((Context) this.f17120a.zzb(), (C0851Ng) this.f17121b.zzb());
    }
}
