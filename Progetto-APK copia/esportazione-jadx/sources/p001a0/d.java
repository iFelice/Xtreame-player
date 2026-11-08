package p001a0;

import android.view.animation.Interpolator;

/* JADX INFO: loaded from: classes.dex */
public abstract class d implements Interpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f8628a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f8629b;

    public d(float[] fArr) {
        this.f8628a = fArr;
        this.f8629b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f8) {
        if (f8 >= 1.0f) {
            return 1.0f;
        }
        if (f8 <= 0.0f) {
            return 0.0f;
        }
        float[] fArr = this.f8628a;
        int iMin = Math.min((int) ((fArr.length - 1) * f8), fArr.length - 2);
        float f9 = this.f8629b;
        float f10 = (f8 - (iMin * f9)) / f9;
        float f11 = fArr[iMin];
        return ((fArr[iMin + 1] - f11) * f10) + f11;
    }
}
