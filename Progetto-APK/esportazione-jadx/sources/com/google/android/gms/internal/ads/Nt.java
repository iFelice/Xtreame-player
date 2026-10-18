package com.google.android.gms.internal.ads;

import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
public final class Nt implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f15096a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f15097b;

    public Nt(C1523jg c1523jg, MJ mj) {
        this.f15096a = c1523jg;
        this.f15097b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        return new Mt(((C1523jg) this.f15096a).a(), (Intent) this.f15097b.zzb());
    }
}
