package D1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class z extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2303a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ B f2304b;

    public /* synthetic */ z(B b8, int i8) {
        this.f2303a = i8;
        this.f2304b = b8;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f2303a;
        B b8 = this.f2304b;
        switch (i8) {
            case 0:
                View view = b8.f2034b;
                if (view != null) {
                    view.setVisibility(4);
                }
                ViewGroup viewGroup = b8.f2035c;
                if (viewGroup != null) {
                    viewGroup.setVisibility(4);
                }
                ViewGroup viewGroup2 = b8.f2037e;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(4);
                }
                break;
            case 1:
            default:
                super.onAnimationEnd(animator);
                break;
            case 2:
                b8.j(0);
                break;
            case 3:
                b8.j(0);
                break;
            case 4:
                ViewGroup viewGroup3 = b8.f2038f;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(4);
                }
                break;
            case 5:
                ViewGroup viewGroup4 = b8.f2040h;
                if (viewGroup4 != null) {
                    viewGroup4.setVisibility(4);
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i8 = this.f2303a;
        B b8 = this.f2304b;
        switch (i8) {
            case 0:
                View view = b8.f2042j;
                if ((view instanceof C0140e) && !b8.f2030A) {
                    C0140e c0140e = (C0140e) view;
                    ValueAnimator valueAnimator = c0140e.f2170n0;
                    if (valueAnimator.isStarted()) {
                        valueAnimator.cancel();
                    }
                    valueAnimator.setFloatValues(c0140e.f2171o0, 0.0f);
                    valueAnimator.setDuration(250L);
                    valueAnimator.start();
                    break;
                }
                break;
            case 1:
                View view2 = b8.f2034b;
                if (view2 != null) {
                    view2.setVisibility(0);
                }
                ViewGroup viewGroup = b8.f2035c;
                if (viewGroup != null) {
                    viewGroup.setVisibility(0);
                }
                ViewGroup viewGroup2 = b8.f2037e;
                if (viewGroup2 != null) {
                    viewGroup2.setVisibility(b8.f2030A ? 0 : 4);
                }
                View view3 = b8.f2042j;
                if ((view3 instanceof C0140e) && !b8.f2030A) {
                    C0140e c0140e2 = (C0140e) view3;
                    ValueAnimator valueAnimator2 = c0140e2.f2170n0;
                    if (valueAnimator2.isStarted()) {
                        valueAnimator2.cancel();
                    }
                    c0140e2.f2172p0 = false;
                    valueAnimator2.setFloatValues(c0140e2.f2171o0, 1.0f);
                    valueAnimator2.setDuration(250L);
                    valueAnimator2.start();
                    break;
                }
                break;
            case 2:
                b8.j(4);
                break;
            case 3:
                b8.j(4);
                break;
            case 4:
                ViewGroup viewGroup3 = b8.f2040h;
                if (viewGroup3 != null) {
                    viewGroup3.setVisibility(0);
                    ViewGroup viewGroup4 = b8.f2040h;
                    viewGroup4.setTranslationX(viewGroup4.getWidth());
                    viewGroup4.scrollTo(viewGroup4.getWidth(), 0);
                }
                break;
            default:
                ViewGroup viewGroup5 = b8.f2038f;
                if (viewGroup5 != null) {
                    viewGroup5.setVisibility(0);
                }
                break;
        }
    }
}
