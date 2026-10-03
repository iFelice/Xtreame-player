package p086l;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: classes.dex */
public final class B0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f26066G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0 f26067H;

    public /* synthetic */ B0(C0 c8, int i8) {
        this.f26066G = i8;
        this.f26067H = c8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f26066G;
        C0 c8 = this.f26067H;
        switch (i8) {
            case 0:
                ViewParent parent = c8.f26074J.getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                break;
            default:
                c8.a();
                View view = c8.f26074J;
                if (view.isEnabled() && !view.isLongClickable() && c8.c()) {
                    view.getParent().requestDisallowInterceptTouchEvent(true);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    view.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    c8.f26077M = true;
                    break;
                }
                break;
        }
    }
}
