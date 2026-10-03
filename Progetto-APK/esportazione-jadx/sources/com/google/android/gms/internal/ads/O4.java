package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: loaded from: classes.dex */
public final class O4 implements K5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Activity f15132b;

    public /* synthetic */ O4(Activity activity, int i8) {
        this.f15131a = i8;
        this.f15132b = activity;
    }

    @Override // com.google.android.gms.internal.ads.K5
    public final void zza(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        int i8 = this.f15131a;
        Activity activity = this.f15132b;
        switch (i8) {
            case 0:
                activityLifecycleCallbacks.onActivityStarted(activity);
                break;
            case 1:
                activityLifecycleCallbacks.onActivityResumed(activity);
                break;
            case 2:
                activityLifecycleCallbacks.onActivityPaused(activity);
                break;
            case 3:
                activityLifecycleCallbacks.onActivityStopped(activity);
                break;
            case 4:
                activityLifecycleCallbacks.onActivityDestroyed(activity);
                break;
            case 5:
                activityLifecycleCallbacks.onActivityStarted(activity);
                break;
            case 6:
                activityLifecycleCallbacks.onActivityResumed(activity);
                break;
            case 7:
                activityLifecycleCallbacks.onActivityPaused(activity);
                break;
            case 8:
                activityLifecycleCallbacks.onActivityStopped(activity);
                break;
            default:
                activityLifecycleCallbacks.onActivityDestroyed(activity);
                break;
        }
    }
}
