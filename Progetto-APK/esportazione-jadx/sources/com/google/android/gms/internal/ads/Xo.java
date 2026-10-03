package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public final class Xo implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f17509a;

    public Xo(C1523jg c1523jg) {
        this.f17509a = c1523jg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Wo zzb() {
        Context contextA = ((C1523jg) this.f17509a).a();
        Wo wo = new Wo();
        wo.f17322h = 1;
        wo.f16531f = new C1706n6(contextA, p083k3.l.f25980A.f25998r.j(), wo, wo, 2);
        return wo;
    }
}
