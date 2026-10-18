package O1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: O1.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0306e extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5377a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c0 f5378b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f5379c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f5380d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0311j f5381e;

    public C0306e(C0311j c0311j, c0 c0Var, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f5381e = c0311j;
        this.f5378b = c0Var;
        this.f5379c = view;
        this.f5380d = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f5377a) {
            case 1:
                this.f5379c.setAlpha(1.0f);
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f5377a;
        c0 c0Var = this.f5378b;
        C0311j c0311j = this.f5381e;
        ViewPropertyAnimator viewPropertyAnimator = this.f5380d;
        switch (i8) {
            case 0:
                viewPropertyAnimator.setListener(null);
                this.f5379c.setAlpha(1.0f);
                c0311j.c(c0Var);
                c0311j.f5429q.remove(c0Var);
                c0311j.i();
                break;
            default:
                viewPropertyAnimator.setListener(null);
                c0311j.c(c0Var);
                c0311j.f5427o.remove(c0Var);
                c0311j.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i8 = this.f5377a;
        C0311j c0311j = this.f5381e;
        switch (i8) {
            case 0:
                c0311j.getClass();
                break;
            default:
                c0311j.getClass();
                break;
        }
    }

    public C0306e(C0311j c0311j, c0 c0Var, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f5381e = c0311j;
        this.f5378b = c0Var;
        this.f5380d = viewPropertyAnimator;
        this.f5379c = view;
    }
}
