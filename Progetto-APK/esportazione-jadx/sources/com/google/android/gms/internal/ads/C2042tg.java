package com.google.android.gms.internal.ads;

import android.content.Context;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.tg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2042tg implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f21087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final QJ f21088b;

    public C2042tg(C1523jg c1523jg, MJ mj) {
        this.f21087a = c1523jg;
        this.f21088b = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final C0931Tc zzb() {
        Context contextA = ((C1523jg) this.f21087a).a();
        Uw uw = (Uw) this.f21088b.zzb();
        p083k3.l lVar = p083k3.l.f25980A;
        C0887Qa c0887QaN = lVar.f25996p.n(contextA, p120p3.a.i(), uw);
        C0650Aa c0650Aa = AbstractC0873Pa.f15389b;
        c0887QaN.getClass();
        return new C0931Tc(contextA, lVar.f25996p.n(contextA, p120p3.a.i(), uw).a("google.afma.sdkConstants.getSdkConstants", c0650Aa, c0650Aa), p120p3.a.i());
    }
}
