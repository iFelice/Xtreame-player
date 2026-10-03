package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Io, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0784Io implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f14049a;

    public C0784Io(MJ mj) {
        this.f14049a = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Context context = (Context) this.f14049a.zzb();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new Qo(context, c1936re);
    }
}
