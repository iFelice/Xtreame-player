package N;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;

/* JADX INFO: renamed from: N.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC0271u implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final View f4921G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ViewTreeObserver f4922H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Runnable f4923I;

    public ViewTreeObserverOnPreDrawListenerC0271u(ViewGroup viewGroup, Runnable runnable) {
        this.f4921G = viewGroup;
        this.f4922H = viewGroup.getViewTreeObserver();
        this.f4923I = runnable;
    }

    public static void a(ViewGroup viewGroup, Runnable runnable) {
        if (viewGroup == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        ViewTreeObserverOnPreDrawListenerC0271u viewTreeObserverOnPreDrawListenerC0271u = new ViewTreeObserverOnPreDrawListenerC0271u(viewGroup, runnable);
        viewGroup.getViewTreeObserver().addOnPreDrawListener(viewTreeObserverOnPreDrawListenerC0271u);
        viewGroup.addOnAttachStateChangeListener(viewTreeObserverOnPreDrawListenerC0271u);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        boolean zIsAlive = this.f4922H.isAlive();
        View view = this.f4921G;
        if (zIsAlive) {
            this.f4922H.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
        this.f4923I.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f4922H = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        boolean zIsAlive = this.f4922H.isAlive();
        View view2 = this.f4921G;
        if (zIsAlive) {
            this.f4922H.removeOnPreDrawListener(this);
        } else {
            view2.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view2.removeOnAttachStateChangeListener(this);
    }
}
