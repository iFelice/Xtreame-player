package Z3;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.os.Bundle;
import b7.C0538n;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: Z3.j, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0428j implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Activity f8350G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0430l f8351H;

    public C0428j(C0430l c0430l, Activity activity) {
        this.f8351H = c0430l;
        this.f8350G = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        C0430l c0430l = this.f8351H;
        Dialog dialog = c0430l.f8359f;
        if (dialog == null || !c0430l.f8365l) {
            return;
        }
        dialog.setOwnerActivity(activity);
        C0438u c0438u = c0430l.f8355b;
        if (c0438u != null) {
            c0438u.f8387a = activity;
        }
        AtomicReference atomicReference = c0430l.f8364k;
        C0428j c0428j = (C0428j) atomicReference.getAndSet(null);
        if (c0428j != null) {
            c0428j.f8351H.f8354a.unregisterActivityLifecycleCallbacks(c0428j);
            C0428j c0428j2 = new C0428j(c0430l, activity);
            c0430l.f8354a.registerActivityLifecycleCallbacks(c0428j2);
            atomicReference.set(c0428j2);
        }
        Dialog dialog2 = c0430l.f8359f;
        if (dialog2 != null) {
            dialog2.show();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Dialog dialog;
        if (activity != this.f8350G) {
            return;
        }
        boolean zIsChangingConfigurations = activity.isChangingConfigurations();
        C0430l c0430l = this.f8351H;
        if (zIsChangingConfigurations && c0430l.f8365l && (dialog = c0430l.f8359f) != null) {
            dialog.dismiss();
            return;
        }
        a0 a0Var = new a0(3, "Activity is destroyed.");
        Dialog dialog2 = c0430l.f8359f;
        if (dialog2 != null) {
            dialog2.dismiss();
            c0430l.f8359f = null;
        }
        c0430l.f8355b.f8387a = null;
        C0428j c0428j = (C0428j) c0430l.f8364k.getAndSet(null);
        if (c0428j != null) {
            c0428j.f8351H.f8354a.unregisterActivityLifecycleCallbacks(c0428j);
        }
        C0538n c0538n = (C0538n) c0430l.f8363j.getAndSet(null);
        if (c0538n == null) {
            return;
        }
        c0538n.a(a0Var.a());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
