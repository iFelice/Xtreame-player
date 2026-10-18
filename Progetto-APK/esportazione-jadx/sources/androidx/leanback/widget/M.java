package androidx.leanback.widget;

import android.animation.ValueAnimator;
import android.widget.FrameLayout;
import com.google.android.material.tabs.TabLayout;

/* JADX INFO: loaded from: classes.dex */
public final class M implements ValueAnimator.AnimatorUpdateListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9130a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f9131b;

    public /* synthetic */ M(FrameLayout frameLayout, int i8) {
        this.f9130a = i8;
        this.f9131b = frameLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        int i8 = this.f9130a;
        FrameLayout frameLayout = this.f9131b;
        switch (i8) {
            case 0:
                ((SearchOrbView) frameLayout).setOrbViewColor(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            case 1:
                ((SearchOrbView) frameLayout).setSearchOrbZ(valueAnimator.getAnimatedFraction());
                break;
            default:
                ((TabLayout) frameLayout).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                break;
        }
    }
}
