package O1;

import android.R;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;

/* JADX INFO: renamed from: O1.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0317p extends I implements O {

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public static final int[] f5470C = {R.attr.state_pressed};

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public static final int[] f5471D = new int[0];

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public int f5472A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final RunnableC0313l f5473B;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f5474a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f5475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateListDrawable f5476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Drawable f5477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f5478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f5479f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final StateListDrawable f5480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Drawable f5481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f5482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f5483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f5484k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f5485l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f5486m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f5487n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f5488o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public float f5489p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final RecyclerView f5492s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final ValueAnimator f5499z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f5490q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f5491r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f5493t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public boolean f5494u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public int f5495v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f5496w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int[] f5497x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final int[] f5498y = new int[2];

    public C0317p(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i8, int i9, int i10) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f5499z = valueAnimatorOfFloat;
        this.f5472A = 0;
        RunnableC0313l runnableC0313l = new RunnableC0313l(this, 0);
        this.f5473B = runnableC0313l;
        C0314m c0314m = new C0314m(this, 0);
        this.f5476c = stateListDrawable;
        this.f5477d = drawable;
        this.f5480g = stateListDrawable2;
        this.f5481h = drawable2;
        this.f5478e = Math.max(i8, stateListDrawable.getIntrinsicWidth());
        this.f5479f = Math.max(i8, drawable.getIntrinsicWidth());
        this.f5482i = Math.max(i8, stateListDrawable2.getIntrinsicWidth());
        this.f5483j = Math.max(i8, drawable2.getIntrinsicWidth());
        this.f5474a = i9;
        this.f5475b = i10;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new C0315n(this));
        valueAnimatorOfFloat.addUpdateListener(new C0316o(this));
        RecyclerView recyclerView2 = this.f5492s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            L l4 = recyclerView2.f9646T;
            if (l4 != null) {
                l4.c("Cannot remove item decoration during a scroll  or layout");
            }
            ArrayList arrayList = recyclerView2.f9652W;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                recyclerView2.setWillNotDraw(recyclerView2.getOverScrollMode() == 2);
            }
            recyclerView2.S();
            recyclerView2.requestLayout();
            RecyclerView recyclerView3 = this.f5492s;
            recyclerView3.f9657a0.remove(this);
            if (recyclerView3.f9659b0 == this) {
                recyclerView3.f9659b0 = null;
            }
            ArrayList arrayList2 = this.f5492s.f9639P0;
            if (arrayList2 != null) {
                arrayList2.remove(c0314m);
            }
            this.f5492s.removeCallbacks(runnableC0313l);
        }
        this.f5492s = recyclerView;
        if (recyclerView != null) {
            recyclerView.i(this);
            this.f5492s.f9657a0.add(this);
            this.f5492s.j(c0314m);
        }
    }

    public static int f(float f8, float f9, int[] iArr, int i8, int i9, int i10) {
        int i11 = iArr[1] - iArr[0];
        if (i11 == 0) {
            return 0;
        }
        int i12 = i8 - i10;
        int i13 = (int) (((f9 - f8) / i11) * i12);
        int i14 = i9 + i13;
        if (i14 >= i12 || i14 < 0) {
            return 0;
        }
        return i13;
    }

    @Override // O1.I
    public final void c(Canvas canvas) {
        if (this.f5490q != this.f5492s.getWidth() || this.f5491r != this.f5492s.getHeight()) {
            this.f5490q = this.f5492s.getWidth();
            this.f5491r = this.f5492s.getHeight();
            g(0);
            return;
        }
        if (this.f5472A != 0) {
            if (this.f5493t) {
                int i8 = this.f5490q;
                int i9 = this.f5478e;
                int i10 = i8 - i9;
                int i11 = this.f5485l;
                int i12 = this.f5484k;
                int i13 = i11 - (i12 / 2);
                StateListDrawable stateListDrawable = this.f5476c;
                stateListDrawable.setBounds(0, 0, i9, i12);
                int i14 = this.f5491r;
                int i15 = this.f5479f;
                Drawable drawable = this.f5477d;
                drawable.setBounds(0, 0, i15, i14);
                if (this.f5492s.getLayoutDirection() == 1) {
                    drawable.draw(canvas);
                    canvas.translate(i9, i13);
                    canvas.scale(-1.0f, 1.0f);
                    stateListDrawable.draw(canvas);
                    canvas.scale(-1.0f, 1.0f);
                    canvas.translate(-i9, -i13);
                } else {
                    canvas.translate(i10, 0.0f);
                    drawable.draw(canvas);
                    canvas.translate(0.0f, i13);
                    stateListDrawable.draw(canvas);
                    canvas.translate(-i10, -i13);
                }
            }
            if (this.f5494u) {
                int i16 = this.f5491r;
                int i17 = this.f5482i;
                int i18 = i16 - i17;
                int i19 = this.f5488o;
                int i20 = this.f5487n;
                int i21 = i19 - (i20 / 2);
                StateListDrawable stateListDrawable2 = this.f5480g;
                stateListDrawable2.setBounds(0, 0, i20, i17);
                int i22 = this.f5490q;
                int i23 = this.f5483j;
                Drawable drawable2 = this.f5481h;
                drawable2.setBounds(0, 0, i22, i23);
                canvas.translate(0.0f, i18);
                drawable2.draw(canvas);
                canvas.translate(i21, 0.0f);
                stateListDrawable2.draw(canvas);
                canvas.translate(-i21, -i18);
            }
        }
    }

    public final boolean d(float f8, float f9) {
        if (f9 >= this.f5491r - this.f5482i) {
            int i8 = this.f5488o;
            int i9 = this.f5487n;
            if (f8 >= i8 - (i9 / 2) && f8 <= (i9 / 2) + i8) {
                return true;
            }
        }
        return false;
    }

    public final boolean e(float f8, float f9) {
        boolean z7 = this.f5492s.getLayoutDirection() == 1;
        int i8 = this.f5478e;
        if (z7) {
            if (f8 > i8) {
                return false;
            }
        } else if (f8 < this.f5490q - i8) {
            return false;
        }
        int i9 = this.f5485l;
        int i10 = this.f5484k / 2;
        return f9 >= ((float) (i9 - i10)) && f9 <= ((float) (i10 + i9));
    }

    public final void g(int i8) {
        RunnableC0313l runnableC0313l = this.f5473B;
        StateListDrawable stateListDrawable = this.f5476c;
        if (i8 == 2 && this.f5495v != 2) {
            stateListDrawable.setState(f5470C);
            this.f5492s.removeCallbacks(runnableC0313l);
        }
        if (i8 == 0) {
            this.f5492s.invalidate();
        } else {
            h();
        }
        if (this.f5495v == 2 && i8 != 2) {
            stateListDrawable.setState(f5471D);
            this.f5492s.removeCallbacks(runnableC0313l);
            this.f5492s.postDelayed(runnableC0313l, 1200);
        } else if (i8 == 1) {
            this.f5492s.removeCallbacks(runnableC0313l);
            this.f5492s.postDelayed(runnableC0313l, 1500);
        }
        this.f5495v = i8;
    }

    public final void h() {
        int i8 = this.f5472A;
        ValueAnimator valueAnimator = this.f5499z;
        if (i8 != 0) {
            if (i8 != 3) {
                return;
            } else {
                valueAnimator.cancel();
            }
        }
        this.f5472A = 1;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        valueAnimator.setDuration(500L);
        valueAnimator.setStartDelay(0L);
        valueAnimator.start();
    }
}
