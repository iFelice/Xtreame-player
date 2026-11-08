package D;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class d implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Object f1679G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Activity f1680H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f1681I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f1682J = false;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f1683K = false;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public boolean f1684L = false;

    public d(Activity activity) {
        this.f1680H = activity;
        this.f1681I = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f1680H == activity) {
            this.f1680H = null;
            this.f1683K = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f1683K || this.f1684L || this.f1682J) {
            return;
        }
        Object obj = this.f1679G;
        try {
            Object obj2 = e.f1687c.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f1681I) {
                e.f1691g.postAtFrontOfQueue(new RunnableC3036k(e.f1686b.get(activity), obj2, 4));
                this.f1684L = true;
                this.f1679G = null;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f1680H == activity) {
            this.f1682J = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
