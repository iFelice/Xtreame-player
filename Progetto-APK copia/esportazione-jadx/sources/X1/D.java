package X1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class D extends AnimatorListenerAdapter implements p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f7537a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7538b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewGroup f7539c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f7541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f7542f = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f7540d = true;

    public D(int i8, View view) {
        this.f7537a = view;
        this.f7538b = i8;
        this.f7539c = (ViewGroup) view.getParent();
        e(true);
    }

    @Override // X1.p
    public final void a() {
        e(false);
    }

    @Override // X1.p
    public final void b(q qVar) {
        if (!this.f7542f) {
            z.b(this.f7537a, this.f7538b);
            ViewGroup viewGroup = this.f7539c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        e(false);
        qVar.w(this);
    }

    @Override // X1.p
    public final void d() {
        e(true);
    }

    public final void e(boolean z7) {
        ViewGroup viewGroup;
        if (!this.f7540d || this.f7541e == z7 || (viewGroup = this.f7539c) == null) {
            return;
        }
        this.f7541e = z7;
        Z3.C.l(viewGroup, z7);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f7542f = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (!this.f7542f) {
            z.b(this.f7537a, this.f7538b);
            ViewGroup viewGroup = this.f7539c;
            if (viewGroup != null) {
                viewGroup.invalidate();
            }
        }
        e(false);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        if (this.f7542f) {
            return;
        }
        z.b(this.f7537a, this.f7538b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        if (this.f7542f) {
            return;
        }
        z.b(this.f7537a, 0);
    }

    @Override // X1.p
    public final void c() {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
