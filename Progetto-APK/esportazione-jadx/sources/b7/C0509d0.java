package b7;

import android.animation.ValueAnimator;
import android.view.ViewGroup;

/* JADX INFO: renamed from: b7.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C0509d0 implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0550t0 f10281b;

    public /* synthetic */ C0509d0(C0550t0 c0550t0, int i8) {
        this.f10280a = i8;
        this.f10281b = c0550t0;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i8 = this.f10280a;
        C0550t0 c0550t0 = this.f10281b;
        switch (i8) {
            case 0:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams = c0550t0.f10488x1.getLayoutParams();
                layoutParams.height = iIntValue;
                c0550t0.f10488x1.setLayoutParams(layoutParams);
                break;
            default:
                int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                ViewGroup.LayoutParams layoutParams2 = c0550t0.f10489y1.getLayoutParams();
                layoutParams2.height = iIntValue2;
                c0550t0.f10489y1.setLayoutParams(layoutParams2);
                break;
        }
    }
}
