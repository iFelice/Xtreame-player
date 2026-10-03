package T;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public final class a implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6487a;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f8) {
        switch (this.f6487a) {
            case 0:
                float f9 = f8 - 1.0f;
                return (f9 * f9 * f9 * f9 * f9) + 1.0f;
            case 1:
                float f10 = f8 - 1.0f;
                return (f10 * f10 * f10 * f10 * f10) + 1.0f;
            default:
                float f11 = f8 - 1.0f;
                return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }
}
