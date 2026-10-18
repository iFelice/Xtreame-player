package Q;

import N.N;
import android.content.res.Resources;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public final class d implements View.OnTouchListener {

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public static final int f5980X = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final a f5981G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final AccelerateInterpolator f5982H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final View f5983I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public p000a.f f5984J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final float[] f5985K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final float[] f5986L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f5987M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f5988N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final float[] f5989O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final float[] f5990P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final float[] f5991Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f5992R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f5993S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f5994T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f5995U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f5996V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final ListView f5997W;

    public d(ListView listView) {
        a aVar = new a();
        aVar.f5975e = Long.MIN_VALUE;
        aVar.f5977g = -1L;
        aVar.f5976f = 0L;
        this.f5981G = aVar;
        this.f5982H = new AccelerateInterpolator();
        this.f5985K = new float[]{0.0f, 0.0f};
        this.f5986L = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f5989O = new float[]{0.0f, 0.0f};
        this.f5990P = new float[]{0.0f, 0.0f};
        this.f5991Q = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.f5983I = listView;
        float f8 = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.f5991Q;
        float f9 = ((int) ((1575.0f * f8) + 0.5f)) / 1000.0f;
        fArr[0] = f9;
        fArr[1] = f9;
        float[] fArr2 = this.f5990P;
        float f10 = ((int) ((f8 * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f10;
        fArr2[1] = f10;
        this.f5987M = 1;
        float[] fArr3 = this.f5986L;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f5985K;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.f5989O;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.f5988N = f5980X;
        aVar.f5971a = 500;
        aVar.f5972b = 500;
        this.f5997W = listView;
    }

    public static float b(float f8, float f9, float f10) {
        if (f8 > f10) {
            return f10;
        }
        return f8 < f9 ? f9 : f8;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003d  */
    /* JADX WARN: Code duplicated, block: B:15:0x004d  */
    /* JADX WARN: Code duplicated, block: B:16:0x0054  */
    /* JADX WARN: Code duplicated, block: B:19:? A[RETURN, SYNTHETIC] */
    public final float a(float f8, float f9, float f10, int i8) {
        float fB;
        float interpolation;
        float fB2 = b(this.f5985K[i8] * f9, 0.0f, this.f5986L[i8]);
        float fC = c(f9 - f8, fB2) - c(f8, fB2);
        AccelerateInterpolator accelerateInterpolator = this.f5982H;
        if (fC >= 0.0f) {
            if (fC > 0.0f) {
                interpolation = accelerateInterpolator.getInterpolation(fC);
            } else {
                fB = 0.0f;
            }
            if (fB == 0.0f) {
                return 0.0f;
            }
            float f11 = this.f5989O[i8];
            float f12 = this.f5990P[i8];
            float f13 = this.f5991Q[i8];
            float f14 = f11 * f10;
            return fB > 0.0f ? b(fB * f14, f12, f13) : -b((-fB) * f14, f12, f13);
        }
        interpolation = -accelerateInterpolator.getInterpolation(-fC);
        fB = b(interpolation, -1.0f, 1.0f);
        if (fB == 0.0f) {
            return 0.0f;
        }
        float f15 = this.f5989O[i8];
        float f16 = this.f5990P[i8];
        float f17 = this.f5991Q[i8];
        float f18 = f15 * f10;
        if (fB > 0.0f) {
        }
    }

    public final float c(float f8, float f9) {
        if (f9 == 0.0f) {
            return 0.0f;
        }
        int i8 = this.f5987M;
        if (i8 != 0 && i8 != 1) {
            if (i8 == 2 && f8 < 0.0f) {
                return f8 / (-f9);
            }
            return 0.0f;
        }
        if (f8 >= f9) {
            return 0.0f;
        }
        if (f8 >= 0.0f) {
            return 1.0f - (f8 / f9);
        }
        return (this.f5995U && i8 == 1) ? 1.0f : 0.0f;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0016  */
    public final boolean d(View view, MotionEvent motionEvent) {
        int i8;
        if (!this.f5996V) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                e();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                    e();
                }
            }
            return false;
        }
        this.f5994T = true;
        this.f5992R = false;
        float x7 = motionEvent.getX();
        float width = view.getWidth();
        View view2 = this.f5983I;
        float fA = a(x7, width, view2.getWidth(), 0);
        float fA2 = a(motionEvent.getY(), view.getHeight(), view2.getHeight(), 1);
        a aVar = this.f5981G;
        aVar.f5973c = fA;
        aVar.f5974d = fA2;
        if (!this.f5995U && f()) {
            if (this.f5984J == null) {
                this.f5984J = new p000a.f(this, 5);
            }
            this.f5995U = true;
            this.f5993S = true;
            if (this.f5992R || (i8 = this.f5988N) <= 0) {
                this.f5984J.run();
            } else {
                p000a.f fVar = this.f5984J;
                long j8 = i8;
                WeakHashMap weakHashMap = N.f4843a;
                view2.postOnAnimationDelayed(fVar, j8);
            }
            this.f5992R = true;
        }
        return false;
    }

    public final void e() {
        int i8 = 0;
        if (this.f5993S) {
            this.f5995U = false;
            return;
        }
        a aVar = this.f5981G;
        aVar.getClass();
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i9 = (int) (jCurrentAnimationTimeMillis - aVar.f5975e);
        int i10 = aVar.f5972b;
        if (i9 > i10) {
            i8 = i10;
        } else if (i9 >= 0) {
            i8 = i9;
        }
        aVar.f5979i = i8;
        aVar.f5978h = aVar.a(jCurrentAnimationTimeMillis);
        aVar.f5977g = jCurrentAnimationTimeMillis;
    }

    public final boolean f() {
        ListView listView;
        int count;
        a aVar = this.f5981G;
        float f8 = aVar.f5974d;
        int iAbs = (int) (f8 / Math.abs(f8));
        Math.abs(aVar.f5973c);
        if (iAbs == 0 || (count = (listView = this.f5997W).getCount()) == 0) {
            return false;
        }
        int childCount = listView.getChildCount();
        int firstVisiblePosition = listView.getFirstVisiblePosition();
        int i8 = firstVisiblePosition + childCount;
        if (iAbs > 0) {
            if (i8 >= count && listView.getChildAt(childCount - 1).getBottom() <= listView.getHeight()) {
                return false;
            }
        } else {
            if (iAbs >= 0) {
                return false;
            }
            if (firstVisiblePosition <= 0 && listView.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    @Override // android.view.View.OnTouchListener
    public final /* bridge */ /* synthetic */ boolean onTouch(View view, MotionEvent motionEvent) {
        d(view, motionEvent);
        return false;
    }
}
