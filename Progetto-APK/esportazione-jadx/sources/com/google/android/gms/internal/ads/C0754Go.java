package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Go, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0754Go implements IJ {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final QJ f13635a;

    public C0754Go(MJ mj) {
        this.f13635a = mj;
    }

    @Override // com.google.android.gms.internal.ads.QJ
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final ApplicationInfo zzb() {
        ApplicationInfo applicationInfo = ((Context) this.f13635a.zzb()).getApplicationInfo();
        Cw.N0(applicationInfo);
        return applicationInfo;
    }
}
