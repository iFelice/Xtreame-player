package O1;

import android.animation.ValueAnimator;

/* JADX INFO: renamed from: O1.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0316o implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0317p f5466a;

    public C0316o(C0317p c0317p) {
        this.f5466a = c0317p;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
        C0317p c0317p = this.f5466a;
        c0317p.f5476c.setAlpha(iFloatValue);
        c0317p.f5477d.setAlpha(iFloatValue);
        c0317p.f5492s.invalidate();
    }
}
