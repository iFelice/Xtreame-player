package com.google.ads.mediation;

import android.os.RemoteException;
import com.google.android.gms.internal.ads.C1932ra;
import p090l3.J;
import p090l3.r;
import p120p3.h;
import p136r3.j;

/* JADX INFO: loaded from: classes.dex */
public final class c extends p128q3.b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AbstractAdViewAdapter f11625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final j f11626f;

    public c(AbstractAdViewAdapter abstractAdViewAdapter, j jVar) {
        this.f11625e = abstractAdViewAdapter;
        this.f11626f = jVar;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void h(p043f3.j jVar) {
        ((p004a3.b) this.f11626f).h(jVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void i(Object obj) {
        p128q3.a aVar = (p128q3.a) obj;
        AbstractAdViewAdapter abstractAdViewAdapter = this.f11625e;
        abstractAdViewAdapter.mInterstitialAd = aVar;
        j jVar = this.f11626f;
        p096m2.c cVar = new p096m2.c(abstractAdViewAdapter, jVar);
        try {
            J j8 = ((C1932ra) aVar).f20740c;
            if (j8 != null) {
                j8.d3(new r(cVar));
            }
        } catch (RemoteException e8) {
            h.i("#007 Could not call remote method.", e8);
        }
        ((p004a3.b) jVar).j();
    }
}
