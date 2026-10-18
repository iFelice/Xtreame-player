package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Uo implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f16886a;

    public Uo(C1523jg c1523jg) {
        this.f16886a = c1523jg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Context contextA = ((C1523jg) this.f16886a).a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new To(contextA, c1936re);
    }
}
