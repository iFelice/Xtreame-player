package com.google.android.gms.internal.pal;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public final class F1 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public static final Handler f23509S = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f23510G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Application f23511H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PowerManager f23512I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final KeyguardManager f23513J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p039f.G f23514K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final com.google.android.gms.internal.ads.R4 f23515L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public WeakReference f23516M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public WeakReference f23517N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final com.google.android.gms.internal.ads.P4 f23518O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public byte f23519P = -1;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f23520Q = -1;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public long f23521R = -3;

    public F1(Context context, com.google.android.gms.internal.ads.R4 r7) {
        Context applicationContext = context.getApplicationContext();
        this.f23510G = applicationContext;
        this.f23515L = r7;
        this.f23512I = (PowerManager) applicationContext.getSystemService("power");
        this.f23513J = (KeyguardManager) applicationContext.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f23511H = application;
            this.f23518O = new com.google.android.gms.internal.ads.P4(application, this, 2);
        }
        a(null);
    }

    public final void a(View view) {
        long j8;
        WeakReference weakReference = this.f23517N;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            e(view2);
        }
        this.f23517N = new WeakReference(view);
        if (view != null) {
            if (view.getWindowToken() != null || view.getWindowVisibility() != 8) {
                d(view);
            }
            view.addOnAttachStateChangeListener(this);
            j8 = -2;
        } else {
            j8 = -3;
        }
        this.f23521R = j8;
    }

    public final void b(Activity activity, int i8) {
        Window window;
        if (this.f23517N == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        WeakReference weakReference = this.f23517N;
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.f23520Q = i8;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x008e  */
    public final void c() {
        boolean z7;
        Activity activity;
        WeakReference weakReference = this.f23517N;
        if (weakReference == null) {
            return;
        }
        View view = weakReference != null ? (View) weakReference.get() : null;
        if (view == null) {
            this.f23521R = -3L;
            this.f23519P = (byte) -1;
            return;
        }
        int i8 = 0;
        int i9 = view.getVisibility() != 0 ? 1 : 0;
        if (!view.isShown()) {
            i9 |= 2;
        }
        PowerManager powerManager = this.f23512I;
        if (powerManager != null && !powerManager.isScreenOn()) {
            i9 |= 4;
        }
        com.google.android.gms.internal.ads.R4 r7 = this.f23515L;
        switch (r7.f16205a) {
            case 0:
                z7 = r7.f16206b;
                break;
            default:
                z7 = r7.f16206b;
                break;
        }
        if (!z7) {
            KeyguardManager keyguardManager = this.f23513J;
            if (keyguardManager == null || !keyguardManager.inKeyguardRestrictedInputMode()) {
                i9 |= 8;
            } else {
                char[] cArr = C1.f23478a;
                View rootView = view.getRootView();
                if (rootView == null) {
                    rootView = view;
                }
                Context context = rootView.getContext();
                while (true) {
                    if (!(context instanceof ContextWrapper) || i8 >= 10) {
                        activity = null;
                    } else if (context instanceof Activity) {
                        activity = (Activity) context;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                        i8++;
                    }
                }
                if (activity != null) {
                    Window window = activity.getWindow();
                    WindowManager.LayoutParams attributes = window != null ? window.getAttributes() : null;
                    if (attributes == null || (attributes.flags & 524288) == 0) {
                        i9 |= 8;
                    }
                } else {
                    i9 |= 8;
                }
            }
        }
        if (!view.getGlobalVisibleRect(new Rect())) {
            i9 |= 16;
        }
        if (!view.getLocalVisibleRect(new Rect())) {
            i9 |= 32;
        }
        int windowVisibility = view.getWindowVisibility();
        int i10 = this.f23520Q;
        if (i10 != -1) {
            windowVisibility = i10;
        }
        if (windowVisibility != 0) {
            i9 |= 64;
        }
        if (this.f23519P != i9) {
            this.f23519P = (byte) i9;
            this.f23521R = i9 == 0 ? SystemClock.elapsedRealtime() : (-3) - ((long) i9);
        }
    }

    public final void d(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f23516M = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f23514K == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            p039f.G g8 = new p039f.G(this, 14);
            this.f23514K = g8;
            this.f23510G.registerReceiver(g8, intentFilter);
        }
        Application application = this.f23511H;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f23518O);
            } catch (Exception unused) {
            }
        }
    }

    public final void e(View view) {
        try {
            WeakReference weakReference = this.f23516M;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f23516M = null;
            }
        } catch (Exception unused) {
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception unused2) {
        }
        p039f.G g8 = this.f23514K;
        if (g8 != null) {
            try {
                this.f23510G.unregisterReceiver(g8);
            } catch (Exception unused3) {
            }
            this.f23514K = null;
        }
        Application application = this.f23511H;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f23518O);
            } catch (Exception unused4) {
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        b(activity, 4);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        b(activity, 0);
        c();
        f23509S.post(new Y0(this, 2));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity, 0);
        c();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        c();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f23520Q = -1;
        d(view);
        c();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f23520Q = -1;
        c();
        f23509S.post(new Y0(this, 2));
        e(view);
    }
}
