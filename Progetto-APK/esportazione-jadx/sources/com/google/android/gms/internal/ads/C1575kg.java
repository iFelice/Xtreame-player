package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.kg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1575kg implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C1421hg f19625a;

    public C1575kg(C1421hg c1421hg) {
        this.f19625a = c1421hg;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    public final Object zzb() {
        WeakReference weakReference = this.f19625a.f19120d;
        Cw.N0(weakReference);
        return weakReference;
    }
}
