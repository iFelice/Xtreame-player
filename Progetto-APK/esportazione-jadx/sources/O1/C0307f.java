package O1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: O1.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0307f extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ c0 f5384a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5385b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f5386c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f5387d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f5388e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C0311j f5389f;

    public C0307f(C0311j c0311j, c0 c0Var, int i8, View view, int i9, ViewPropertyAnimator viewPropertyAnimator) {
        this.f5389f = c0311j;
        this.f5384a = c0Var;
        this.f5385b = i8;
        this.f5386c = view;
        this.f5387d = i9;
        this.f5388e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i8 = this.f5385b;
        View view = this.f5386c;
        if (i8 != 0) {
            view.setTranslationX(0.0f);
        }
        if (this.f5387d != 0) {
            view.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f5388e.setListener(null);
        C0311j c0311j = this.f5389f;
        c0 c0Var = this.f5384a;
        c0311j.c(c0Var);
        c0311j.f5428p.remove(c0Var);
        c0311j.i();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f5389f.getClass();
    }
}
