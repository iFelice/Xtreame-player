package com.google.ads.interactivemedia.v3.internal;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
final class zzis implements zzix {
    final /* synthetic */ Activity zza;

    public zzis(zziy zziyVar, Activity activity) {
        this.zza = activity;
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzix
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.zza);
    }
}
