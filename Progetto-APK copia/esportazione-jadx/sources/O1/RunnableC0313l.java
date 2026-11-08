package O1;

import android.animation.ValueAnimator;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

/* JADX INFO: renamed from: O1.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC0313l implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f5449G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f5450H;

    public /* synthetic */ RunnableC0313l(Object obj, int i8) {
        this.f5449G = i8;
        this.f5450H = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f5449G;
        Object obj = this.f5450H;
        switch (i8) {
            case 0:
                C0317p c0317p = (C0317p) obj;
                int i9 = c0317p.f5472A;
                ValueAnimator valueAnimator = c0317p.f5499z;
                if (i9 == 1) {
                    valueAnimator.cancel();
                } else if (i9 != 2) {
                }
                c0317p.f5472A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                break;
            default:
                ((StaggeredGridLayoutManager) obj).U0();
                break;
        }
    }
}
