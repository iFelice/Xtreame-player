package K3;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: K3.b, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ComponentCallbacks2C0229b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public static final ComponentCallbacks2C0229b f4529K = new ComponentCallbacks2C0229b();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final AtomicBoolean f4530G = new AtomicBoolean();

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AtomicBoolean f4531H = new AtomicBoolean();

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final ArrayList f4532I = new ArrayList();

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f4533J = false;

    public final void a(C0251y c0251y) {
        synchronized (f4529K) {
            this.f4532I.add(c0251y);
        }
    }

    public final void b(boolean z7) {
        synchronized (f4529K) {
            try {
                Iterator it = this.f4532I.iterator();
                while (it.hasNext()) {
                    X3.d dVar = ((C0251y) it.next()).f4579a.f4550S;
                    dVar.sendMessage(dVar.obtainMessage(1, Boolean.valueOf(z7)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        AtomicBoolean atomicBoolean = this.f4531H;
        boolean zCompareAndSet = this.f4530G.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        AtomicBoolean atomicBoolean = this.f4531H;
        boolean zCompareAndSet = this.f4530G.compareAndSet(true, false);
        atomicBoolean.set(true);
        if (zCompareAndSet) {
            b(false);
        }
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i8) {
        if (i8 == 20 && this.f4530G.compareAndSet(false, true)) {
            this.f4531H.set(true);
            b(true);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
