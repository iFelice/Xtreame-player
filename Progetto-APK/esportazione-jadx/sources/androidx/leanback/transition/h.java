package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.transition.Transition;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class h extends AnimatorListenerAdapter implements Transition.TransitionListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f9075a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f9076b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9077c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f9078d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f9079e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f9080f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f9081g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f9082h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f9083i;

    public h(View view, View view2, int i8, int i9, float f8, float f9) {
        this.f9076b = view;
        this.f9075a = view2;
        this.f9077c = i8 - Math.round(view.getTranslationX());
        this.f9078d = i9 - Math.round(view.getTranslationY());
        this.f9082h = f8;
        this.f9083i = f9;
        int[] iArr = (int[]) view2.getTag(R.id.transitionPosition);
        this.f9079e = iArr;
        if (iArr != null) {
            view2.setTag(R.id.transitionPosition, null);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f9079e == null) {
            this.f9079e = new int[2];
        }
        int[] iArr = this.f9079e;
        float f8 = this.f9077c;
        View view = this.f9076b;
        iArr[0] = Math.round(view.getTranslationX() + f8);
        this.f9079e[1] = Math.round(view.getTranslationY() + this.f9078d);
        this.f9075a.setTag(R.id.transitionPosition, this.f9079e);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        View view = this.f9076b;
        this.f9080f = view.getTranslationX();
        this.f9081g = view.getTranslationY();
        view.setTranslationX(this.f9082h);
        view.setTranslationY(this.f9083i);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        float f8 = this.f9080f;
        View view = this.f9076b;
        view.setTranslationX(f8);
        view.setTranslationY(this.f9081g);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionEnd(Transition transition) {
        float f8 = this.f9082h;
        View view = this.f9076b;
        view.setTranslationX(f8);
        view.setTranslationY(this.f9083i);
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public final void onTransitionStart(Transition transition) {
    }
}
