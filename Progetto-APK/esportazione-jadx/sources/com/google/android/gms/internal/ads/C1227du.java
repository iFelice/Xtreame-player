package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.du, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1227du implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f18375a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f18376b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final QJ f18377c;

    public C1227du(C1523jg c1523jg, MJ mj, C1938rg c1938rg) {
        this.f18375a = c1523jg;
        this.f18376b = mj;
        this.f18377c = c1938rg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C1125bu zzb() {
        Context contextA = ((C1523jg) this.f18375a).a();
        C1936re c1936re = AbstractC1988se.f20906a;
        Cw.N0(c1936re);
        return new C1125bu(contextA, c1936re, ((C1526jj) this.f18376b).a(), ((C1938rg) this.f18377c).a());
    }
}
