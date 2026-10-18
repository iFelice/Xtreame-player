package com.google.android.gms.internal.ads;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ul, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class GestureDetectorOnGestureListenerC0954Ul implements GestureDetector.OnGestureListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0721El f16881G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC0912Rl f16882H;

    public GestureDetectorOnGestureListenerC0954Ul(C0721El c0721El, ViewTreeObserverOnGlobalLayoutListenerC0912Rl viewTreeObserverOnGlobalLayoutListenerC0912Rl) {
        this.f16881G = c0721El;
        this.f16882H = viewTreeObserverOnGlobalLayoutListenerC0912Rl;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0040  */
    @Override // android.view.GestureDetector.OnGestureListener
    public final synchronized boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f8, float f9) {
        int y7;
        try {
            if (this.f16881G != null) {
                int i8 = -1;
                if (Math.abs(f8) > Math.abs(f9)) {
                    if (f8 > 0.0f) {
                        y7 = (int) (((motionEvent2.getX() - motionEvent.getX()) / f8) * 1000.0f);
                        i8 = 1;
                    } else if (f8 < 0.0f) {
                        y7 = (int) (((motionEvent2.getX() - motionEvent.getX()) / f8) * 1000.0f);
                        i8 = 2;
                    } else {
                        y7 = 0;
                    }
                } else if (f9 > 0.0f) {
                    y7 = (int) (((motionEvent2.getY() - motionEvent.getY()) / f9) * 1000.0f);
                    i8 = 8;
                } else if (f9 < 0.0f) {
                    y7 = (int) (((motionEvent2.getY() - motionEvent.getY()) / f9) * 1000.0f);
                    i8 = 4;
                } else {
                    y7 = 0;
                }
                if (i8 == this.f16881G.p()) {
                    this.f16881G.d(this.f16882H.f16340J, y7);
                    return false;
                }
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f8, float f9) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public final synchronized boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }
}
