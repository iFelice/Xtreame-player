package T;

import N.N;
import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.OverScroller;
import java.util.Arrays;
import p000a.f;

/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final a f6489v = new a(0);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f6490a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6491b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public float[] f6493d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float[] f6494e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float[] f6495f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float[] f6496g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int[] f6497h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int[] f6498i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f6499j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f6500k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public VelocityTracker f6501l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f6502m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f6503n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f6504o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final OverScroller f6505p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final b f6506q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public View f6507r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f6508s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final ViewGroup f6509t;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f6492c = -1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final f f6510u = new f(this, 6);

    public c(Context context, ViewGroup viewGroup, b bVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (bVar == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f6509t = viewGroup;
        this.f6506q = bVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f6504o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f6491b = viewConfiguration.getScaledTouchSlop();
        this.f6502m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f6503n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f6505p = new OverScroller(context, f6489v);
    }

    public final void a() {
        this.f6492c = -1;
        float[] fArr = this.f6493d;
        if (fArr != null) {
            Arrays.fill(fArr, 0.0f);
            Arrays.fill(this.f6494e, 0.0f);
            Arrays.fill(this.f6495f, 0.0f);
            Arrays.fill(this.f6496g, 0.0f);
            Arrays.fill(this.f6497h, 0);
            Arrays.fill(this.f6498i, 0);
            Arrays.fill(this.f6499j, 0);
            this.f6500k = 0;
        }
        VelocityTracker velocityTracker = this.f6501l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f6501l = null;
        }
    }

    public final void b(View view, int i8) {
        ViewParent parent = view.getParent();
        ViewGroup viewGroup = this.f6509t;
        if (parent != viewGroup) {
            throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + viewGroup + ")");
        }
        this.f6507r = view;
        this.f6492c = i8;
        this.f6506q.i(view, i8);
        n(1);
    }

    public final boolean c(View view, float f8, float f9) {
        if (view == null) {
            return false;
        }
        b bVar = this.f6506q;
        boolean z7 = bVar.g(view) > 0;
        boolean z8 = bVar.h() > 0;
        if (z7 && z8) {
            float f10 = (f9 * f9) + (f8 * f8);
            int i8 = this.f6491b;
            return f10 > ((float) (i8 * i8));
        }
        if (z7) {
            return Math.abs(f8) > ((float) this.f6491b);
        }
        return z8 && Math.abs(f9) > ((float) this.f6491b);
    }

    public final void d(int i8) {
        float[] fArr = this.f6493d;
        if (fArr != null) {
            int i9 = this.f6500k;
            int i10 = 1 << i8;
            if ((i9 & i10) != 0) {
                fArr[i8] = 0.0f;
                this.f6494e[i8] = 0.0f;
                this.f6495f[i8] = 0.0f;
                this.f6496g[i8] = 0.0f;
                this.f6497h[i8] = 0;
                this.f6498i[i8] = 0;
                this.f6499j[i8] = 0;
                this.f6500k = (~i10) & i9;
            }
        }
    }

    public final int e(int i8, int i9, int i10) {
        if (i8 == 0) {
            return 0;
        }
        int width = this.f6509t.getWidth();
        float f8 = width / 2;
        float fSin = (((float) Math.sin((Math.min(1.0f, Math.abs(i8) / width) - 0.5f) * 0.47123894f)) * f8) + f8;
        int iAbs = Math.abs(i9);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fSin / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i8) / i10) + 1.0f) * 256.0f), 600);
    }

    public final boolean f() {
        if (this.f6490a == 2) {
            OverScroller overScroller = this.f6505p;
            boolean zComputeScrollOffset = overScroller.computeScrollOffset();
            int currX = overScroller.getCurrX();
            int currY = overScroller.getCurrY();
            int left = currX - this.f6507r.getLeft();
            int top = currY - this.f6507r.getTop();
            if (left != 0) {
                N.h(this.f6507r, left);
            }
            if (top != 0) {
                N.i(this.f6507r, top);
            }
            if (left != 0 || top != 0) {
                this.f6506q.k(this.f6507r, currX, currY);
            }
            if (zComputeScrollOffset && currX == overScroller.getFinalX() && currY == overScroller.getFinalY()) {
                overScroller.abortAnimation();
            } else if (!zComputeScrollOffset) {
            }
            this.f6509t.post(this.f6510u);
        }
        return this.f6490a == 2;
    }

    public final View g(int i8, int i9) {
        ViewGroup viewGroup = this.f6509t;
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            this.f6506q.getClass();
            View childAt = viewGroup.getChildAt(childCount);
            if (i8 >= childAt.getLeft() && i8 < childAt.getRight() && i9 >= childAt.getTop() && i9 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean h(int i8, int i9, int i10, int i11) {
        float f8;
        float f9;
        float f10;
        float f11;
        int left = this.f6507r.getLeft();
        int top = this.f6507r.getTop();
        int i12 = i8 - left;
        int i13 = i9 - top;
        OverScroller overScroller = this.f6505p;
        if (i12 == 0 && i13 == 0) {
            overScroller.abortAnimation();
            n(0);
            return false;
        }
        View view = this.f6507r;
        int i14 = (int) this.f6503n;
        int i15 = (int) this.f6502m;
        int iAbs = Math.abs(i10);
        if (iAbs < i14) {
            i10 = 0;
        } else if (iAbs > i15) {
            i10 = i10 > 0 ? i15 : -i15;
        }
        int iAbs2 = Math.abs(i11);
        if (iAbs2 < i14) {
            i11 = 0;
        } else if (iAbs2 > i15) {
            i11 = i11 > 0 ? i15 : -i15;
        }
        int iAbs3 = Math.abs(i12);
        int iAbs4 = Math.abs(i13);
        int iAbs5 = Math.abs(i10);
        int iAbs6 = Math.abs(i11);
        int i16 = iAbs5 + iAbs6;
        int i17 = iAbs3 + iAbs4;
        if (i10 != 0) {
            f8 = iAbs5;
            f9 = i16;
        } else {
            f8 = iAbs3;
            f9 = i17;
        }
        float f12 = f8 / f9;
        if (i11 != 0) {
            f10 = iAbs6;
            f11 = i16;
        } else {
            f10 = iAbs4;
            f11 = i17;
        }
        float f13 = f10 / f11;
        b bVar = this.f6506q;
        overScroller.startScroll(left, top, i12, i13, (int) ((e(i13, i11, bVar.h()) * f13) + (e(i12, i10, bVar.g(view)) * f12)));
        n(2);
        return true;
    }

    public final boolean i(int i8) {
        if ((this.f6500k & (1 << i8)) != 0) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i8 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    public final void j(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f6501l == null) {
            this.f6501l = VelocityTracker.obtain();
        }
        this.f6501l.addMovement(motionEvent);
        int i8 = 0;
        if (actionMasked == 0) {
            float x7 = motionEvent.getX();
            float y7 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewG = g((int) x7, (int) y7);
            l(x7, y7, pointerId);
            q(viewG, pointerId);
            int i9 = this.f6497h[pointerId];
            return;
        }
        if (actionMasked == 1) {
            if (this.f6490a == 1) {
                k();
            }
            a();
            return;
        }
        b bVar = this.f6506q;
        if (actionMasked != 2) {
            if (actionMasked == 3) {
                if (this.f6490a == 1) {
                    this.f6508s = true;
                    bVar.l(this.f6507r, 0.0f, 0.0f);
                    this.f6508s = false;
                    if (this.f6490a == 1) {
                        n(0);
                    }
                }
                a();
                return;
            }
            if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x8 = motionEvent.getX(actionIndex);
                float y8 = motionEvent.getY(actionIndex);
                l(x8, y8, pointerId2);
                if (this.f6490a == 0) {
                    q(g((int) x8, (int) y8), pointerId2);
                    int i10 = this.f6497h[pointerId2];
                    return;
                }
                int i11 = (int) x8;
                int i12 = (int) y8;
                View view = this.f6507r;
                if (view != null && i11 >= view.getLeft() && i11 < view.getRight() && i12 >= view.getTop() && i12 < view.getBottom()) {
                    q(this.f6507r, pointerId2);
                    return;
                }
                return;
            }
            if (actionMasked != 6) {
                return;
            }
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            if (this.f6490a == 1 && pointerId3 == this.f6492c) {
                int pointerCount = motionEvent.getPointerCount();
                while (i8 < pointerCount) {
                    int pointerId4 = motionEvent.getPointerId(i8);
                    if (pointerId4 != this.f6492c) {
                        View viewG2 = g((int) motionEvent.getX(i8), (int) motionEvent.getY(i8));
                        View view2 = this.f6507r;
                        if (viewG2 == view2 && q(view2, pointerId4)) {
                            if (this.f6492c == -1) {
                                break;
                            }
                        }
                    }
                    i8++;
                }
                k();
            }
            d(pointerId3);
            return;
        }
        if (this.f6490a == 1) {
            if (i(this.f6492c)) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f6492c);
                float x9 = motionEvent.getX(iFindPointerIndex);
                float y9 = motionEvent.getY(iFindPointerIndex);
                float[] fArr = this.f6495f;
                int i13 = this.f6492c;
                int i14 = (int) (x9 - fArr[i13]);
                int i15 = (int) (y9 - this.f6496g[i13]);
                int left = this.f6507r.getLeft() + i14;
                int top = this.f6507r.getTop() + i15;
                int left2 = this.f6507r.getLeft();
                int top2 = this.f6507r.getTop();
                if (i14 != 0) {
                    left = bVar.e(this.f6507r, left);
                    N.h(this.f6507r, left - left2);
                }
                if (i15 != 0) {
                    top = bVar.f(this.f6507r, top);
                    N.i(this.f6507r, top - top2);
                }
                if (i14 != 0 || i15 != 0) {
                    bVar.k(this.f6507r, left, top);
                }
                m(motionEvent);
                return;
            }
            return;
        }
        int pointerCount2 = motionEvent.getPointerCount();
        while (i8 < pointerCount2) {
            int pointerId5 = motionEvent.getPointerId(i8);
            if (i(pointerId5)) {
                float x10 = motionEvent.getX(i8);
                float y10 = motionEvent.getY(i8);
                float f8 = x10 - this.f6493d[pointerId5];
                float f9 = y10 - this.f6494e[pointerId5];
                Math.abs(f8);
                Math.abs(f9);
                int i16 = this.f6497h[pointerId5];
                Math.abs(f9);
                Math.abs(f8);
                int i17 = this.f6497h[pointerId5];
                Math.abs(f8);
                Math.abs(f9);
                int i18 = this.f6497h[pointerId5];
                Math.abs(f9);
                Math.abs(f8);
                int i19 = this.f6497h[pointerId5];
                if (this.f6490a != 1) {
                    View viewG3 = g((int) x10, (int) y10);
                    if (c(viewG3, f8, f9) && q(viewG3, pointerId5)) {
                        break;
                    }
                } else {
                    break;
                }
            }
            i8++;
        }
        m(motionEvent);
    }

    public final void k() {
        VelocityTracker velocityTracker = this.f6501l;
        float f8 = this.f6502m;
        velocityTracker.computeCurrentVelocity(1000, f8);
        float xVelocity = this.f6501l.getXVelocity(this.f6492c);
        float f9 = this.f6503n;
        float fAbs = Math.abs(xVelocity);
        float f10 = 0.0f;
        if (fAbs < f9) {
            xVelocity = 0.0f;
        } else if (fAbs > f8) {
            xVelocity = xVelocity > 0.0f ? f8 : -f8;
        }
        float yVelocity = this.f6501l.getYVelocity(this.f6492c);
        float fAbs2 = Math.abs(yVelocity);
        if (fAbs2 >= f9) {
            if (fAbs2 > f8) {
                if (yVelocity <= 0.0f) {
                    f8 = -f8;
                }
                f10 = f8;
            } else {
                f10 = yVelocity;
            }
        }
        this.f6508s = true;
        this.f6506q.l(this.f6507r, xVelocity, f10);
        this.f6508s = false;
        if (this.f6490a == 1) {
            n(0);
        }
    }

    public final void l(float f8, float f9, int i8) {
        float[] fArr = this.f6493d;
        if (fArr == null || fArr.length <= i8) {
            int i9 = i8 + 1;
            float[] fArr2 = new float[i9];
            float[] fArr3 = new float[i9];
            float[] fArr4 = new float[i9];
            float[] fArr5 = new float[i9];
            int[] iArr = new int[i9];
            int[] iArr2 = new int[i9];
            int[] iArr3 = new int[i9];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f6494e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f6495f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f6496g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f6497h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f6498i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f6499j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f6493d = fArr2;
            this.f6494e = fArr3;
            this.f6495f = fArr4;
            this.f6496g = fArr5;
            this.f6497h = iArr;
            this.f6498i = iArr2;
            this.f6499j = iArr3;
        }
        float[] fArr9 = this.f6493d;
        this.f6495f[i8] = f8;
        fArr9[i8] = f8;
        float[] fArr10 = this.f6494e;
        this.f6496g[i8] = f9;
        fArr10[i8] = f9;
        int[] iArr7 = this.f6497h;
        int i10 = (int) f8;
        int i11 = (int) f9;
        ViewGroup viewGroup = this.f6509t;
        int left = viewGroup.getLeft();
        int i12 = this.f6504o;
        int i13 = i10 < left + i12 ? 1 : 0;
        if (i11 < viewGroup.getTop() + i12) {
            i13 |= 4;
        }
        if (i10 > viewGroup.getRight() - i12) {
            i13 |= 2;
        }
        if (i11 > viewGroup.getBottom() - i12) {
            i13 |= 8;
        }
        iArr7[i8] = i13;
        this.f6500k |= 1 << i8;
    }

    public final void m(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i8 = 0; i8 < pointerCount; i8++) {
            int pointerId = motionEvent.getPointerId(i8);
            if (i(pointerId)) {
                float x7 = motionEvent.getX(i8);
                float y7 = motionEvent.getY(i8);
                this.f6495f[pointerId] = x7;
                this.f6496g[pointerId] = y7;
            }
        }
    }

    public final void n(int i8) {
        this.f6509t.removeCallbacks(this.f6510u);
        if (this.f6490a != i8) {
            this.f6490a = i8;
            this.f6506q.j(i8);
            if (this.f6490a == 0) {
                this.f6507r = null;
            }
        }
    }

    public final boolean o(int i8, int i9) {
        if (this.f6508s) {
            return h(i8, i9, (int) this.f6501l.getXVelocity(this.f6492c), (int) this.f6501l.getYVelocity(this.f6492c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:61:0x0114  */
    public final boolean p(MotionEvent motionEvent) {
        View viewG;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f6501l == null) {
            this.f6501l = VelocityTracker.obtain();
        }
        this.f6501l.addMovement(motionEvent);
        if (actionMasked == 0) {
            float x7 = motionEvent.getX();
            float y7 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            l(x7, y7, pointerId);
            View viewG2 = g((int) x7, (int) y7);
            if (viewG2 == this.f6507r && this.f6490a == 2) {
                q(viewG2, pointerId);
            }
            int i8 = this.f6497h[pointerId];
        } else if (actionMasked == 1) {
            a();
        } else if (actionMasked != 2) {
            if (actionMasked == 3) {
                a();
            } else if (actionMasked == 5) {
                int pointerId2 = motionEvent.getPointerId(actionIndex);
                float x8 = motionEvent.getX(actionIndex);
                float y8 = motionEvent.getY(actionIndex);
                l(x8, y8, pointerId2);
                int i9 = this.f6490a;
                if (i9 == 0) {
                    int i10 = this.f6497h[pointerId2];
                } else if (i9 == 2 && (viewG = g((int) x8, (int) y8)) == this.f6507r) {
                    q(viewG, pointerId2);
                }
            } else if (actionMasked == 6) {
                d(motionEvent.getPointerId(actionIndex));
            }
        } else if (this.f6493d != null && this.f6494e != null) {
            int pointerCount = motionEvent.getPointerCount();
            for (int i11 = 0; i11 < pointerCount; i11++) {
                int pointerId3 = motionEvent.getPointerId(i11);
                if (i(pointerId3)) {
                    float x9 = motionEvent.getX(i11);
                    float y9 = motionEvent.getY(i11);
                    float f8 = x9 - this.f6493d[pointerId3];
                    float f9 = y9 - this.f6494e[pointerId3];
                    View viewG3 = g((int) x9, (int) y9);
                    boolean z7 = viewG3 != null && c(viewG3, f8, f9);
                    if (!z7) {
                        Math.abs(f8);
                        Math.abs(f9);
                        int i12 = this.f6497h[pointerId3];
                        Math.abs(f9);
                        Math.abs(f8);
                        int i13 = this.f6497h[pointerId3];
                        Math.abs(f8);
                        Math.abs(f9);
                        int i14 = this.f6497h[pointerId3];
                        Math.abs(f9);
                        Math.abs(f8);
                        int i15 = this.f6497h[pointerId3];
                        if (this.f6490a != 1) {
                            break;
                        }
                    } else {
                        int left = viewG3.getLeft();
                        b bVar = this.f6506q;
                        int iE = bVar.e(viewG3, ((int) f8) + left);
                        int top = viewG3.getTop();
                        int iF = bVar.f(viewG3, ((int) f9) + top);
                        int iG = bVar.g(viewG3);
                        int iH = bVar.h();
                        if ((iG == 0 || (iG > 0 && iE == left)) && (iH == 0 || (iH > 0 && iF == top))) {
                            break;
                        }
                        Math.abs(f8);
                        Math.abs(f9);
                        int i16 = this.f6497h[pointerId3];
                        Math.abs(f9);
                        Math.abs(f8);
                        int i17 = this.f6497h[pointerId3];
                        Math.abs(f8);
                        Math.abs(f9);
                        int i18 = this.f6497h[pointerId3];
                        Math.abs(f9);
                        Math.abs(f8);
                        int i19 = this.f6497h[pointerId3];
                        if (this.f6490a != 1 || (z7 && q(viewG3, pointerId3))) {
                            break;
                        }
                    }
                }
            }
            m(motionEvent);
        }
        return this.f6490a == 1;
    }

    public final boolean q(View view, int i8) {
        if (view == this.f6507r && this.f6492c == i8) {
            return true;
        }
        if (view == null || !this.f6506q.m(view, i8)) {
            return false;
        }
        this.f6492c = i8;
        b(view, i8);
        return true;
    }
}
