package D1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* JADX INFO: loaded from: classes.dex */
public final class A extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2027a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0156v f2028b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ B f2029c;

    public /* synthetic */ A(B b8, C0156v c0156v, int i8) {
        this.f2027a = i8;
        this.f2029c = b8;
        this.f2028b = c0156v;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f2027a;
        C0156v c0156v = this.f2028b;
        B b8 = this.f2029c;
        switch (i8) {
            case 0:
                b8.j(1);
                if (b8.f2031B) {
                    c0156v.post(b8.f2051s);
                    b8.f2031B = false;
                }
                break;
            case 1:
                b8.j(2);
                if (b8.f2031B) {
                    c0156v.post(b8.f2051s);
                    b8.f2031B = false;
                }
                break;
            default:
                b8.j(2);
                if (b8.f2031B) {
                    c0156v.post(b8.f2051s);
                    b8.f2031B = false;
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i8 = this.f2027a;
        B b8 = this.f2029c;
        switch (i8) {
            case 0:
                b8.j(3);
                break;
            case 1:
                b8.j(3);
                break;
            default:
                b8.j(3);
                break;
        }
    }
}
