package N;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Application;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class T extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4859a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f4860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4861c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f4862d;

    public T(ViewGroup viewGroup, Application application) {
        this.f4859a = 3;
        this.f4860b = viewGroup;
        this.f4861c = application;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f4859a) {
            case 0:
                ((V) this.f4861c).a();
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f4859a;
        Object obj = this.f4861c;
        Object obj2 = this.f4860b;
        switch (i8) {
            case 0:
                ((V) obj).c();
                break;
            case 1:
                ((X1.y) obj).B((View) obj2);
                break;
            default:
                super.onAnimationEnd(animator);
                ((View) obj2).animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(((Application) obj).getResources().getInteger(R.integer.config_longAnimTime)).setListener(null);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f4859a) {
            case 0:
                ((V) this.f4861c).b();
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public /* synthetic */ T(Object obj, Object obj2, View view, int i8) {
        this.f4859a = i8;
        this.f4862d = obj;
        this.f4861c = obj2;
        this.f4860b = view;
    }
}
