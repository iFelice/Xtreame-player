package Y;

import N.ViewTreeObserverOnPreDrawListenerC0271u;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* JADX INFO: renamed from: Y.x, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0411x extends AnimationSet implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ViewGroup f7992G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final View f7993H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f7994I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f7995J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f7996K;

    public RunnableC0411x(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f7996K = true;
        this.f7992G = viewGroup;
        this.f7993H = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public final boolean getTransformation(long j8, Transformation transformation) {
        this.f7996K = true;
        if (this.f7994I) {
            return !this.f7995J;
        }
        if (!super.getTransformation(j8, transformation)) {
            this.f7994I = true;
            ViewTreeObserverOnPreDrawListenerC0271u.a(this.f7992G, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z7 = this.f7994I;
        ViewGroup viewGroup = this.f7992G;
        if (z7 || !this.f7996K) {
            viewGroup.endViewTransition(this.f7993H);
            this.f7995J = true;
        } else {
            this.f7996K = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public final boolean getTransformation(long j8, Transformation transformation, float f8) {
        this.f7996K = true;
        if (this.f7994I) {
            return !this.f7995J;
        }
        if (!super.getTransformation(j8, transformation, f8)) {
            this.f7994I = true;
            ViewTreeObserverOnPreDrawListenerC0271u.a(this.f7992G, this);
        }
        return true;
    }
}
