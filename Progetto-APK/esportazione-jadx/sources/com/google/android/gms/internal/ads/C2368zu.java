package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2368zu implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f22228a;

    public C2368zu(C1523jg c1523jg) {
        this.f22228a = c1523jg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        Context contextA = ((C1523jg) this.f22228a).a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C2264xu(contextA, c1936re);
    }
}
