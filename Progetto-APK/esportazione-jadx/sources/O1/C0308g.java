package O1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* JADX INFO: renamed from: O1.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0308g extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5392a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0309h f5393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ViewPropertyAnimator f5394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ View f5395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0311j f5396e;

    public /* synthetic */ C0308g(C0311j c0311j, C0309h c0309h, ViewPropertyAnimator viewPropertyAnimator, View view, int i8) {
        this.f5392a = i8;
        this.f5396e = c0311j;
        this.f5393b = c0309h;
        this.f5394c = viewPropertyAnimator;
        this.f5395d = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f5392a;
        C0311j c0311j = this.f5396e;
        C0309h c0309h = this.f5393b;
        View view = this.f5395d;
        ViewPropertyAnimator viewPropertyAnimator = this.f5394c;
        switch (i8) {
            case 0:
                viewPropertyAnimator.setListener(null);
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                c0311j.c(c0309h.f5399a);
                c0311j.f5430r.remove(c0309h.f5399a);
                c0311j.i();
                break;
            default:
                viewPropertyAnimator.setListener(null);
                view.setAlpha(1.0f);
                view.setTranslationX(0.0f);
                view.setTranslationY(0.0f);
                c0311j.c(c0309h.f5400b);
                c0311j.f5430r.remove(c0309h.f5400b);
                c0311j.i();
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i8 = this.f5392a;
        C0311j c0311j = this.f5396e;
        C0309h c0309h = this.f5393b;
        switch (i8) {
            case 0:
                c0 c0Var = c0309h.f5399a;
                c0311j.getClass();
                break;
            default:
                c0 c0Var2 = c0309h.f5400b;
                c0311j.getClass();
                break;
        }
    }
}
