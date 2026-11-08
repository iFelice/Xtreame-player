package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import p090l3.C3099q;

/* JADX INFO: loaded from: classes.dex */
public final class H5 implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public static final long f13701U = ((Long) C3099q.f26624d.f26627c.a(Q7.f15823f1)).longValue();

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public static final /* synthetic */ int f13702V = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f13703G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Application f13704H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final PowerManager f13705I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final KeyguardManager f13706J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public p039f.G f13707K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public WeakReference f13708L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final WeakReference f13709M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final P4 f13710N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final p113o3.z f13711O = new p113o3.z(f13701U);

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f13712P = false;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f13713Q = -1;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final HashSet f13714R = new HashSet();

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final DisplayMetrics f13715S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final Rect f13716T;

    public H5(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f13703G = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f13705I = (PowerManager) applicationContext.getSystemService("power");
        this.f13706J = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f13704H = application;
            this.f13710N = new P4(application, this, 1);
        }
        this.f13715S = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.f13716T = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference weakReference = this.f13709M;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            f(view2);
        }
        this.f13709M = new WeakReference(view);
        if (view != null) {
            if (view.isAttachedToWindow()) {
                e(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    public final Rect a(Rect rect) {
        float f8 = rect.left;
        float f9 = this.f13715S.density;
        return new Rect((int) (f8 / f9), (int) (rect.top / f9), (int) (rect.right / f9), (int) (rect.bottom / f9));
    }

    public final void b(Activity activity, int i8) {
        Window window;
        WeakReference weakReference = this.f13709M;
        if (weakReference == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = (View) weakReference.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.f13713Q = i8;
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0134  */
    /* JADX WARN: Code duplicated, block: B:56:0x0139  */
    /* JADX WARN: Code duplicated, block: B:57:0x013b  */
    /* JADX WARN: Code duplicated, block: B:58:0x013f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0142  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v25, types: [int] */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v29, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r26v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r27v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7, types: [boolean] */
    public final void c(int i8) {
        WeakReference weakReference;
        View view;
        boolean globalVisibleRect;
        boolean localVisibleRect;
        ?? EmptyList;
        ?? r7;
        boolean z7;
        HashSet hashSet = this.f13714R;
        if (hashSet.isEmpty() || (weakReference = this.f13709M) == null) {
            return;
        }
        View view2 = (View) weakReference.get();
        Rect rect = new Rect();
        Rect rect2 = new Rect();
        Rect rect3 = new Rect();
        Rect rect4 = new Rect();
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        if (view2 != null) {
            globalVisibleRect = view2.getGlobalVisibleRect(rect2);
            localVisibleRect = view2.getLocalVisibleRect(rect3);
            view2.getHitRect(rect4);
            try {
                view2.getLocationOnScreen(iArr);
                view2.getLocationInWindow(iArr2);
            } catch (Exception e8) {
                p120p3.h.e("Failure getting view location.", e8);
            }
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15982y4)).booleanValue()) {
                rect.left = iArr2[0];
                rect.top = iArr2[1];
            } else {
                rect.left = iArr[0];
                rect.top = iArr[1];
            }
            rect.right = view2.getWidth() + rect.left;
            rect.bottom = view2.getHeight() + rect.top;
            view = view2;
        } else {
            view = null;
            globalVisibleRect = false;
            localVisibleRect = false;
        }
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15850i1)).booleanValue() || view == null) {
            EmptyList = Collections.emptyList();
        } else {
            try {
                EmptyList = new ArrayList();
                ViewParent parent = view.getParent();
                while (parent instanceof View) {
                    View view3 = (View) parent;
                    Rect rect5 = new Rect();
                    if (view3.isScrollContainer() && view3.getGlobalVisibleRect(rect5)) {
                        EmptyList.add(a(rect5));
                    }
                    parent = parent.getParent();
                }
            } catch (Exception e9) {
                p083k3.l.f25980A.f25987g.i("PositionWatcher.getParentScrollViewRects", e9);
                EmptyList = Collections.emptyList();
            }
        }
        ?? r27 = EmptyList;
        int windowVisibility = view != null ? view.getWindowVisibility() : 8;
        int i9 = this.f13713Q;
        if (i9 != -1) {
            windowVisibility = i9;
        }
        p083k3.l lVar = p083k3.l.f25980A;
        p113o3.O o4 = lVar.f25983c;
        long jI = p113o3.O.I(view);
        J7 j8 = Q7.Q9;
        C3099q c3099q = C3099q.f26624d;
        boolean zBooleanValue = ((Boolean) c3099q.f26627c.a(j8)).booleanValue();
        O7 o7 = c3099q.f26627c;
        KeyguardManager keyguardManager = this.f13706J;
        PowerManager powerManager = this.f13705I;
        if (zBooleanValue) {
            if (view2 == null || !p113o3.O.o(view, powerManager, keyguardManager)) {
                r7 = 0;
            } else if (!globalVisibleRect) {
                r7 = 0;
                globalVisibleRect = false;
            } else if (localVisibleRect) {
                if (jI < ((Integer) o7.a(Q7.T9)).intValue() || windowVisibility != 0) {
                    z7 = false;
                } else {
                    z7 = true;
                    windowVisibility = 0;
                }
                globalVisibleRect = true;
                localVisibleRect = true;
                r7 = z7;
            } else {
                r7 = 0;
                globalVisibleRect = true;
                localVisibleRect = false;
            }
        } else if (view2 == null || !p113o3.O.o(view, powerManager, keyguardManager)) {
            r7 = 0;
        } else if (!globalVisibleRect) {
            r7 = 0;
            globalVisibleRect = false;
        } else if (localVisibleRect) {
            if (windowVisibility == 0) {
                z7 = true;
                windowVisibility = 0;
            } else {
                z7 = false;
            }
            globalVisibleRect = true;
            localVisibleRect = true;
            r7 = z7;
        } else {
            r7 = 0;
            globalVisibleRect = true;
            localVisibleRect = false;
        }
        if (((Boolean) o7.a(Q7.V9)).booleanValue()) {
            int i10 = true != p113o3.O.o(view, powerManager, keyguardManager) ? 0 : 64;
            int i11 = true != globalVisibleRect ? 0 : 8;
            p113o3.O.h(view, (jI >= ((long) ((Integer) o7.a(Q7.T9)).intValue()) ? 32 : 0) | (windowVisibility == 0 ? 128 : 0) | i10 | i11 | (true != localVisibleRect ? 0 : 16) | r7);
        } else {
            localVisibleRect = localVisibleRect;
        }
        if (i8 == 1 && !this.f13711O.b() && r7 == this.f13712P) {
            return;
        }
        if (r7 == 0 && !this.f13712P) {
            if (i8 == 1) {
                return;
            }
        }
        lVar.f25990j.getClass();
        SystemClock.elapsedRealtime();
        powerManager.isScreenOn();
        boolean z8 = view != null && view.isAttachedToWindow();
        int windowVisibility2 = view != null ? view.getWindowVisibility() : 8;
        Rect rectA = a(this.f13716T);
        Rect rectA2 = a(rect);
        Rect rectA3 = a(rect2);
        Rect rectA4 = a(rect3);
        Rect rectA5 = a(rect4);
        float f8 = this.f13715S.density;
        F5 f9 = new F5(z8, windowVisibility2, rectA, rectA2, rectA3, globalVisibleRect, rectA4, localVisibleRect, rectA5, r7, r27);
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((G5) it.next()).F(f9);
        }
        this.f13712P = r7;
    }

    public final void d() {
        p113o3.O.f27924l.post(new RunnableC0878Pf(this, 5));
    }

    public final void e(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f13708L = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f13707K == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            p039f.G g8 = new p039f.G(this, 11);
            this.f13707K = g8;
            Context context = this.f13703G;
            p113o3.G g9 = p083k3.l.f25980A.f26004x;
            synchronized (g9) {
                if (g9.f27883c) {
                    ((Map) g9.f27885e).put(g8, intentFilter);
                } else {
                    Q7.a(context);
                    if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.na)).booleanValue() || Build.VERSION.SDK_INT < 33) {
                        context.registerReceiver(g8, intentFilter);
                    } else {
                        context.registerReceiver(g8, intentFilter, 4);
                    }
                }
            }
        }
        Application application = this.f13704H;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f13710N);
            } catch (Exception e8) {
                p120p3.h.e("Error registering activity lifecycle callbacks.", e8);
            }
        }
    }

    public final void f(View view) {
        try {
            WeakReference weakReference = this.f13708L;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f13708L = null;
            }
        } catch (Exception e8) {
            p120p3.h.e("Error while unregistering listeners from the last ViewTreeObserver.", e8);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e9) {
            p120p3.h.e("Error while unregistering listeners from the ViewTreeObserver.", e9);
        }
        p039f.G g8 = this.f13707K;
        if (g8 != null) {
            try {
                p083k3.l.f25980A.f26004x.e(this.f13703G, g8);
            } catch (IllegalStateException e10) {
                p120p3.h.e("Failed trying to unregister the receiver", e10);
            } catch (Exception e11) {
                p083k3.l.f25980A.f25987g.i("ActiveViewUnit.stopScreenStatusMonitoring", e11);
            }
            this.f13707K = null;
        }
        Application application = this.f13704H;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f13710N);
            } catch (Exception e12) {
                p120p3.h.e("Error registering activity lifecycle callbacks.", e12);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        b(activity, 0);
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        b(activity, 4);
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        b(activity, 0);
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        b(activity, 0);
        c(3);
        d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        c(3);
        d();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        c(2);
        d();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        c(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f13713Q = -1;
        e(view);
        c(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f13713Q = -1;
        c(3);
        d();
        f(view);
    }
}
