package p032e0;

import U4.b;
import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import z4.q0;

/* JADX INFO: loaded from: classes.dex */
public final class z implements Application.ActivityLifecycleCallbacks {
    public static final y Companion = new y();

    public static final void registerIn(Activity activity) {
        Companion.getClass();
        q0.h(activity, "activity");
        activity.registerActivityLifecycleCallbacks(new z());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        q0.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        q0.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        q0.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostCreated(Activity activity, Bundle bundle) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_CREATE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostResumed(Activity activity) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_RESUME);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPostStarted(Activity activity) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_START);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(Activity activity) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_DESTROY);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPrePaused(Activity activity) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_PAUSE);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreStopped(Activity activity) {
        q0.h(activity, "activity");
        int i8 = A.f24712G;
        b.R(activity, EnumC2981i.ON_STOP);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        q0.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        q0.h(activity, "activity");
        q0.h(bundle, "bundle");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        q0.h(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        q0.h(activity, "activity");
    }
}
