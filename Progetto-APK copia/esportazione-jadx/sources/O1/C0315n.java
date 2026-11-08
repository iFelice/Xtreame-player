package O1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: O1.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0315n extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5459a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f5460b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f5461c;

    public C0315n(C0317p c0317p) {
        this.f5461c = c0317p;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        switch (this.f5459a) {
            case 0:
                this.f5460b = true;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f5459a;
        Object obj = this.f5461c;
        switch (i8) {
            case 0:
                if (!this.f5460b) {
                    C0317p c0317p = (C0317p) obj;
                    if (((Float) c0317p.f5499z.getAnimatedValue()).floatValue() != 0.0f) {
                        c0317p.f5472A = 2;
                        c0317p.f5492s.invalidate();
                    } else {
                        c0317p.f5472A = 0;
                        c0317p.g(0);
                    }
                } else {
                    this.f5460b = false;
                }
                break;
            default:
                View view = (View) obj;
                X1.z.f7627a.j(view, 1.0f);
                if (this.f5460b) {
                    view.setLayerType(0, null);
                }
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        switch (this.f5459a) {
            case 1:
                View view = (View) this.f5461c;
                WeakHashMap weakHashMap = N.N.f4843a;
                if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                    this.f5460b = true;
                    view.setLayerType(2, null);
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public C0315n(View view) {
        this.f5461c = view;
    }
}
