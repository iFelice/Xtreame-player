package X4;

import android.R;
import android.animation.ValueAnimator;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import p086l.C3022d;

/* JADX INFO: loaded from: classes.dex */
public class i implements View.OnTouchListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final int f7674G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f7675H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f7676I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final long f7677J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final View f7678K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final p096m2.e f7679L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f7680M = 1;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public float f7681N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f7682O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f7683P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f7684Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Object f7685R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public VelocityTracker f7686S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public float f7687T;

    public i(View view, p096m2.e eVar) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        this.f7674G = viewConfiguration.getScaledTouchSlop();
        this.f7675H = viewConfiguration.getScaledMinimumFlingVelocity() * 16;
        this.f7676I = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f7677J = view.getContext().getResources().getInteger(R.integer.config_shortAnimTime);
        this.f7678K = view;
        this.f7679L = eVar;
    }

    public final void a(float f8, float f9, C3022d c3022d) {
        float fB = b();
        float f10 = f8 - fB;
        float alpha = this.f7678K.getAlpha();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setDuration(this.f7677J);
        valueAnimatorOfFloat.addUpdateListener(new g(this, fB, f10, alpha, f9 - alpha));
        if (c3022d != null) {
            valueAnimatorOfFloat.addListener(c3022d);
        }
        valueAnimatorOfFloat.start();
    }

    public float b() {
        return this.f7678K.getTranslationX();
    }

    public void c(float f8) {
        this.f7678K.setTranslationX(f8);
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z7;
        motionEvent.offsetLocation(this.f7687T, 0.0f);
        int i8 = this.f7680M;
        View view2 = this.f7678K;
        if (i8 < 2) {
            this.f7680M = view2.getWidth();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f7681N = motionEvent.getRawX();
            this.f7682O = motionEvent.getRawY();
            this.f7679L.getClass();
            VelocityTracker velocityTrackerObtain = VelocityTracker.obtain();
            this.f7686S = velocityTrackerObtain;
            velocityTrackerObtain.addMovement(motionEvent);
            return false;
        }
        boolean z8 = true;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                VelocityTracker velocityTracker = this.f7686S;
                if (velocityTracker != null) {
                    velocityTracker.addMovement(motionEvent);
                    float rawX = motionEvent.getRawX() - this.f7681N;
                    float rawY = motionEvent.getRawY() - this.f7682O;
                    float fAbs = Math.abs(rawX);
                    int i9 = this.f7674G;
                    if (fAbs > i9 && Math.abs(rawY) < Math.abs(rawX) / 2.0f) {
                        this.f7683P = true;
                        if (rawX <= 0.0f) {
                            i9 = -i9;
                        }
                        this.f7684Q = i9;
                        view2.getParent().requestDisallowInterceptTouchEvent(true);
                        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                        motionEventObtain.setAction((motionEvent.getActionIndex() << 8) | 3);
                        view2.onTouchEvent(motionEventObtain);
                        motionEventObtain.recycle();
                    }
                    if (this.f7683P) {
                        this.f7687T = rawX;
                        c(rawX - this.f7684Q);
                        this.f7678K.setAlpha(Math.max(0.0f, Math.min(1.0f, 1.0f - ((Math.abs(rawX) * 2.0f) / this.f7680M))));
                        return true;
                    }
                }
            } else if (actionMasked == 3 && this.f7686S != null) {
                a(0.0f, 1.0f, null);
                this.f7686S.recycle();
                this.f7686S = null;
                this.f7687T = 0.0f;
                this.f7681N = 0.0f;
                this.f7682O = 0.0f;
                this.f7683P = false;
            }
        } else if (this.f7686S != null) {
            float rawX2 = motionEvent.getRawX() - this.f7681N;
            this.f7686S.addMovement(motionEvent);
            this.f7686S.computeCurrentVelocity(1000);
            float xVelocity = this.f7686S.getXVelocity();
            float fAbs2 = Math.abs(xVelocity);
            float fAbs3 = Math.abs(this.f7686S.getYVelocity());
            if (Math.abs(rawX2) > this.f7680M / 2 && this.f7683P) {
                z7 = rawX2 > 0.0f;
            } else if (this.f7675H > fAbs2 || fAbs2 > this.f7676I || fAbs3 >= fAbs2 || fAbs3 >= fAbs2 || !this.f7683P) {
                z7 = false;
                z8 = false;
            } else {
                z8 = ((xVelocity > 0.0f ? 1 : (xVelocity == 0.0f ? 0 : -1)) < 0) == ((rawX2 > 0.0f ? 1 : (rawX2 == 0.0f ? 0 : -1)) < 0);
                z7 = this.f7686S.getXVelocity() > 0.0f;
            }
            if (z8) {
                a(z7 ? this.f7680M : -this.f7680M, 0.0f, new C3022d(this, 7));
            } else if (this.f7683P) {
                a(0.0f, 1.0f, null);
            }
            VelocityTracker velocityTracker2 = this.f7686S;
            if (velocityTracker2 != null) {
                velocityTracker2.recycle();
            }
            this.f7686S = null;
            this.f7687T = 0.0f;
            this.f7681N = 0.0f;
            this.f7682O = 0.0f;
            this.f7683P = false;
        }
        return false;
    }
}
