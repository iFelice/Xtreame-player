package com.google.android.gms.internal.ads;

import android.media.Spatializer;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.nO, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1724nO implements Spatializer.OnSpatializerStateChangedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1983sO f20169a;

    public C1724nO(C1983sO c1983sO) {
        this.f20169a = c1983sO;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z7) {
        C1983sO c1983sO = this.f20169a;
        C1554kA c1554kA = C1983sO.f20895j;
        c1983sO.i();
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z7) {
        C1983sO c1983sO = this.f20169a;
        C1554kA c1554kA = C1983sO.f20895j;
        c1983sO.i();
    }
}
