package p086l;

import A0.O;
import X1.q;
import X4.h;
import X4.i;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.leanback.transition.c;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.transformation.ExpandableTransformationBehavior;
import com.google.android.tv.ads.controls.SideDrawerFragment;
import p105n3.n;

/* JADX INFO: renamed from: l.d, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3022d extends AnimatorListenerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f26232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f26233b;

    public /* synthetic */ C3022d(Object obj, int i8) {
        this.f26232a = i8;
        this.f26233b = obj;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        int i8 = this.f26232a;
        Object obj = this.f26233b;
        switch (i8) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.f8814f0 = null;
                actionBarOverlayLayout.f8801P = false;
                break;
            case 1:
            default:
                super.onAnimationCancel(animator);
                break;
            case 2:
                n nVar = (n) obj;
                nVar.setEnabled(true);
                nVar.f27541G.setEnabled(true);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i8 = this.f26232a;
        Object obj = this.f26233b;
        switch (i8) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.f8814f0 = null;
                actionBarOverlayLayout.f8801P = false;
                return;
            case 1:
                ((q) obj).n();
                animator.removeListener(this);
                return;
            case 2:
                n nVar = (n) obj;
                nVar.setEnabled(true);
                nVar.f27541G.setEnabled(true);
                return;
            case 3:
                ((HideBottomViewOnScrollBehavior) obj).f24104c = null;
                return;
            case 4:
                O.I(obj);
                throw null;
            case 5:
                ((ExpandableTransformationBehavior) obj).getClass();
                return;
            case 6:
                ((SideDrawerFragment) obj).K().finish();
                return;
            case 7:
                i iVar = (i) obj;
                View view = iVar.f7678K;
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                int height = view.getHeight();
                ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(iVar.f7677J);
                duration.addListener(new h(iVar, layoutParams, height));
                duration.addUpdateListener(new c(iVar, layoutParams));
                duration.start();
                return;
            default:
                super.onAnimationEnd(animator);
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        int i8 = this.f26232a;
        Object obj = this.f26233b;
        switch (i8) {
            case 2:
                n nVar = (n) obj;
                nVar.setEnabled(false);
                nVar.f27541G.setEnabled(false);
                return;
            case 3:
            default:
                super.onAnimationStart(animator);
                return;
            case 4:
                O.I(obj);
                throw null;
        }
    }
}
