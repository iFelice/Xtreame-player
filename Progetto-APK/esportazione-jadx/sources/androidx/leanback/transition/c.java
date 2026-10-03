package androidx.leanback.transition;

import X4.i;
import android.animation.ValueAnimator;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f9064a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9065b;

    public /* synthetic */ c(i iVar, ViewGroup.LayoutParams layoutParams) {
        this.f9065b = iVar;
        this.f9064a = layoutParams;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        ViewGroup.LayoutParams layoutParams = (ViewGroup.LayoutParams) this.f9064a;
        layoutParams.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ((i) this.f9065b).f7678K.setLayoutParams(layoutParams);
    }
}
