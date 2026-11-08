package androidx.leanback.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.util.Property;
import android.view.View;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f9068a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public float f9069b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f9070c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f9071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f9072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f9073f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Property f9074g;

    public g(View view, Property property, float f8, float f9, int i8) {
        this.f9074g = property;
        this.f9070c = view;
        this.f9072e = f8;
        this.f9071d = f9;
        this.f9073f = i8;
        view.setVisibility(0);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        View view = this.f9070c;
        view.setTag(R.id.lb_slide_transition_value, new float[]{view.getTranslationX(), view.getTranslationY()});
        this.f9074g.set(view, Float.valueOf(this.f9072e));
        this.f9068a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z7 = this.f9068a;
        View view = this.f9070c;
        if (!z7) {
            this.f9074g.set(view, Float.valueOf(this.f9072e));
        }
        view.setVisibility(this.f9073f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        Property property = this.f9074g;
        View view = this.f9070c;
        this.f9069b = ((Float) property.get(view)).floatValue();
        property.set(view, Float.valueOf(this.f9071d));
        view.setVisibility(this.f9073f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        Float fValueOf = Float.valueOf(this.f9069b);
        Property property = this.f9074g;
        View view = this.f9070c;
        property.set(view, fValueOf);
        view.setVisibility(0);
    }
}
