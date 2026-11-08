package p047g;

import android.animation.ObjectAnimator;
import android.graphics.drawable.AnimationDrawable;
import com.google.android.gms.internal.measurement.AbstractC2617p2;

/* JADX INFO: loaded from: classes.dex */
public final class c extends AbstractC2617p2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ObjectAnimator f25231e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f25232f;

    public c(AnimationDrawable animationDrawable, boolean z7, boolean z8) {
        int numberOfFrames = animationDrawable.getNumberOfFrames();
        int i8 = z7 ? numberOfFrames - 1 : 0;
        int i9 = z7 ? 0 : numberOfFrames - 1;
        d dVar = new d();
        int numberOfFrames2 = animationDrawable.getNumberOfFrames();
        dVar.f25234b = numberOfFrames2;
        int[] iArr = dVar.f25233a;
        if (iArr == null || iArr.length < numberOfFrames2) {
            dVar.f25233a = new int[numberOfFrames2];
        }
        int[] iArr2 = dVar.f25233a;
        int i10 = 0;
        for (int i11 = 0; i11 < numberOfFrames2; i11++) {
            int duration = animationDrawable.getDuration(z7 ? (numberOfFrames2 - i11) - 1 : i11);
            iArr2[i11] = duration;
            i10 += duration;
        }
        dVar.f25235c = i10;
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(animationDrawable, "currentIndex", i8, i9);
        objectAnimatorOfInt.setAutoCancel(true);
        objectAnimatorOfInt.setDuration(dVar.f25235c);
        objectAnimatorOfInt.setInterpolator(dVar);
        this.f25232f = z8;
        this.f25231e = objectAnimatorOfInt;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final boolean a() {
        return this.f25232f;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void l() {
        this.f25231e.reverse();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void m() {
        this.f25231e.start();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2617p2
    public final void n() {
        this.f25231e.cancel();
    }
}
