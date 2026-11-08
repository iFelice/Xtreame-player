package p086l;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import p079k.E;

/* JADX INFO: loaded from: classes.dex */
public abstract class C0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f26071G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f26072H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f26073I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final View f26074J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public B0 f26075K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public B0 f26076L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f26077M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f26078N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int[] f26079O = new int[2];

    public C0(View view) {
        this.f26074J = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f26071G = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f26072H = tapTimeout;
        this.f26073I = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        B0 b8 = this.f26076L;
        View view = this.f26074J;
        if (b8 != null) {
            view.removeCallbacks(b8);
        }
        B0 b9 = this.f26075K;
        if (b9 != null) {
            view.removeCallbacks(b9);
        }
    }

    public abstract E b();

    public abstract boolean c();

    public boolean d() {
        E eB = b();
        if (eB == null || !eB.a()) {
            return true;
        }
        eB.dismiss();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x005c  */
    /* JADX WARN: Code duplicated, block: B:24:0x0062  */
    /* JADX WARN: Code duplicated, block: B:25:0x0065  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z7;
        C3066z0 c3066z0J;
        boolean z8 = this.f26077M;
        View view2 = this.f26074J;
        if (z8) {
            E eB = b();
            if (eB != null && eB.a() && (c3066z0J = eB.j()) != null && c3066z0J.isShown()) {
                MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
                int[] iArr = this.f26079O;
                view2.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(iArr[0], iArr[1]);
                c3066z0J.getLocationOnScreen(iArr);
                motionEventObtainNoHistory.offsetLocation(-iArr[0], -iArr[1]);
                boolean zB = c3066z0J.b(motionEventObtainNoHistory, this.f26078N);
                motionEventObtainNoHistory.recycle();
                int actionMasked = motionEvent.getActionMasked();
                boolean z9 = (actionMasked == 1 || actionMasked == 3) ? false : true;
                if (zB && z9) {
                    z7 = true;
                } else if (d()) {
                    z7 = false;
                } else {
                    z7 = true;
                }
            } else if (d()) {
                z7 = true;
            } else {
                z7 = false;
            }
        } else {
            if (view2.isEnabled()) {
                int actionMasked2 = motionEvent.getActionMasked();
                if (actionMasked2 == 0) {
                    this.f26078N = motionEvent.getPointerId(0);
                    if (this.f26075K == null) {
                        this.f26075K = new B0(this, 0);
                    }
                    view2.postDelayed(this.f26075K, this.f26072H);
                    if (this.f26076L == null) {
                        this.f26076L = new B0(this, 1);
                    }
                    view2.postDelayed(this.f26076L, this.f26073I);
                } else if (actionMasked2 == 1) {
                    a();
                } else if (actionMasked2 == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f26078N);
                    if (iFindPointerIndex >= 0) {
                        float x7 = motionEvent.getX(iFindPointerIndex);
                        float y7 = motionEvent.getY(iFindPointerIndex);
                        float f8 = this.f26071G;
                        float f9 = -f8;
                        if (x7 < f9 || y7 < f9 || x7 >= (view2.getRight() - view2.getLeft()) + f8 || y7 >= (view2.getBottom() - view2.getTop()) + f8) {
                            a();
                            view2.getParent().requestDisallowInterceptTouchEvent(true);
                            z7 = c();
                        }
                    }
                } else if (actionMasked2 == 3) {
                    a();
                }
            }
            if (z7) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                view2.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f26077M = z7;
        return z7 || z8;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f26077M = false;
        this.f26078N = -1;
        B0 b8 = this.f26075K;
        if (b8 != null) {
            this.f26074J.removeCallbacks(b8);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
