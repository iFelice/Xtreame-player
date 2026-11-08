package D1;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2299a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2300b;

    public /* synthetic */ x(Object obj, int i8) {
        this.f2299a = i8;
        this.f2300b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i8 = this.f2299a;
        Object obj = this.f2300b;
        switch (i8) {
            case 0:
                B b8 = (B) obj;
                b8.getClass();
                b8.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 1:
                B b9 = (B) obj;
                b9.getClass();
                b9.b(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 2:
                B b10 = (B) obj;
                b10.getClass();
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                View view = b10.f2034b;
                if (view != null) {
                    view.setAlpha(fFloatValue);
                }
                ViewGroup viewGroup = b10.f2035c;
                if (viewGroup != null) {
                    viewGroup.setAlpha(fFloatValue);
                }
                ViewGroup viewGroup2 = b10.f2037e;
                if (viewGroup2 != null) {
                    viewGroup2.setAlpha(fFloatValue);
                }
                break;
            case 3:
                B b11 = (B) obj;
                b11.getClass();
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                View view2 = b11.f2034b;
                if (view2 != null) {
                    view2.setAlpha(fFloatValue2);
                }
                ViewGroup viewGroup3 = b11.f2035c;
                if (viewGroup3 != null) {
                    viewGroup3.setAlpha(fFloatValue2);
                }
                ViewGroup viewGroup4 = b11.f2037e;
                if (viewGroup4 != null) {
                    viewGroup4.setAlpha(fFloatValue2);
                }
                break;
            default:
                C0140e c0140e = (C0140e) obj;
                int i9 = C0140e.f2139y0;
                c0140e.getClass();
                c0140e.f2171o0 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                c0140e.invalidate(c0140e.f2140G);
                break;
        }
    }
}
