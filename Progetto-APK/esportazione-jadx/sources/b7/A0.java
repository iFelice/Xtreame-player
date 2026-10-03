package b7;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes2.dex */
public final class A0 extends Animation {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f9939G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9940H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final View f9941I;

    public A0(FrameLayout frameLayout, int i8) {
        this.f9941I = frameLayout;
        this.f9939G = i8;
        this.f9940H = frameLayout.getWidth();
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f8, Transformation transformation) {
        int i8 = this.f9939G;
        int i9 = this.f9940H;
        int i10 = i9 + ((int) ((i8 - i9) * f8));
        View view = this.f9941I;
        view.getLayoutParams().width = i10;
        view.requestLayout();
    }

    @Override // android.view.animation.Animation
    public final void initialize(int i8, int i9, int i10, int i11) {
        super.initialize(i8, i9, i10, i11);
    }

    @Override // android.view.animation.Animation
    public final boolean willChangeBounds() {
        return true;
    }
}
