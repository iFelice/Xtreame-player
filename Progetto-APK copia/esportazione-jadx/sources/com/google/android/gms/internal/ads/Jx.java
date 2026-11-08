package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class Jx implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f14250G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f14251H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public Ix f14252I;

    public void a(boolean z7) {
    }

    public boolean b() {
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (!this.f14251H) {
            this.f14251H = true;
            if (this.f14250G) {
                a(true);
                Ix ix = this.f14252I;
                if (ix != null) {
                    ix.zzc(true);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        boolean z7 = runningAppProcessInfo.importance == 100 || b();
        if (this.f14251H != z7) {
            this.f14251H = z7;
            if (this.f14250G) {
                a(z7);
                Ix ix = this.f14252I;
                if (ix != null) {
                    ix.zzc(z7);
                }
            }
        }
    }
}
