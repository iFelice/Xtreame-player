package p047g;

import android.animation.TimeInterpolator;

/* JADX INFO: loaded from: classes.dex */
public final class d implements TimeInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f25233a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f25234b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f25235c;

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f8) {
        int i8 = (int) ((f8 * this.f25235c) + 0.5f);
        int i9 = this.f25234b;
        int[] iArr = this.f25233a;
        int i10 = 0;
        while (i10 < i9) {
            int i11 = iArr[i10];
            if (i8 < i11) {
                break;
            }
            i8 -= i11;
            i10++;
        }
        return (i10 / i9) + (i10 < i9 ? i8 / this.f25235c : 0.0f);
    }
}
