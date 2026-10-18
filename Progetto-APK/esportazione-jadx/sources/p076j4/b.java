package p076j4;

import A0.O;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: loaded from: classes.dex */
public abstract class b extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f25711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f25712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f25713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f25714f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public VelocityTracker f25715g;

    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:29:0x0059  */
    @Override // B.a
    public final boolean e(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        VelocityTracker velocityTracker;
        int iFindPointerIndex;
        if (this.f25714f < 0) {
            this.f25714f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        if (motionEvent.getAction() == 2 && this.f25711c) {
            return true;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f25711c = false;
            int x7 = (int) motionEvent.getX();
            int y7 = (int) motionEvent.getY();
            if (t(view) && coordinatorLayout.o(view, x7, y7)) {
                this.f25713e = y7;
                this.f25712d = motionEvent.getPointerId(0);
                if (this.f25715g == null) {
                    this.f25715g = VelocityTracker.obtain();
                }
            }
        } else if (actionMasked == 1) {
            this.f25711c = false;
            this.f25712d = -1;
            velocityTracker = this.f25715g;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f25715g = null;
            }
        } else if (actionMasked == 2) {
            int i8 = this.f25712d;
            if (i8 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i8)) != -1) {
                int y8 = (int) motionEvent.getY(iFindPointerIndex);
                if (Math.abs(y8 - this.f25713e) > this.f25714f) {
                    this.f25711c = true;
                    this.f25713e = y8;
                }
            }
        } else if (actionMasked == 3) {
            this.f25711c = false;
            this.f25712d = -1;
            velocityTracker = this.f25715g;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.f25715g = null;
            }
        }
        VelocityTracker velocityTracker2 = this.f25715g;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEvent);
        }
        return this.f25711c;
    }

    @Override // B.a
    public final boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        if (this.f25714f < 0) {
            this.f25714f = ViewConfiguration.get(coordinatorLayout.getContext()).getScaledTouchSlop();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f25715g;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    this.f25715g.computeCurrentVelocity(1000);
                    this.f25715g.getYVelocity(this.f25712d);
                    O.I(view);
                    throw null;
                }
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f25712d);
                if (iFindPointerIndex == -1) {
                    return false;
                }
                int y7 = (int) motionEvent.getY(iFindPointerIndex);
                int i8 = this.f25713e - y7;
                if (!this.f25711c && Math.abs(i8) > this.f25714f) {
                    this.f25711c = true;
                }
                if (this.f25711c) {
                    this.f25713e = y7;
                    O.I(view);
                    throw null;
                }
            } else if (actionMasked == 3) {
            }
            this.f25711c = false;
            this.f25712d = -1;
            VelocityTracker velocityTracker2 = this.f25715g;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
                this.f25715g = null;
            }
        } else {
            int x7 = (int) motionEvent.getX();
            int y8 = (int) motionEvent.getY();
            if (!coordinatorLayout.o(view, x7, y8) || !t(view)) {
                return false;
            }
            this.f25713e = y8;
            this.f25712d = motionEvent.getPointerId(0);
            if (this.f25715g == null) {
                this.f25715g = VelocityTracker.obtain();
            }
        }
        VelocityTracker velocityTracker3 = this.f25715g;
        if (velocityTracker3 != null) {
            velocityTracker3.addMovement(motionEvent);
        }
        return true;
    }

    public abstract boolean t(View view);
}
