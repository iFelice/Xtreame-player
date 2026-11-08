package p145s4;

import N.N;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import com.google.android.material.tabs.TabLayout;
import java.util.WeakHashMap;
import p068i4.a;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public final class e extends LinearLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f30098G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Paint f30099H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final GradientDrawable f30100I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f30101J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public float f30102K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f30103L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f30104M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public int f30105N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ValueAnimator f30106O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final /* synthetic */ TabLayout f30107P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(TabLayout tabLayout, Context context) {
        super(context);
        this.f30107P = tabLayout;
        this.f30101J = -1;
        this.f30103L = -1;
        this.f30104M = -1;
        this.f30105N = -1;
        setWillNotDraw(false);
        this.f30099H = new Paint();
        this.f30100I = new GradientDrawable();
    }

    public final void a(int i8, int i9) {
        int i10;
        ValueAnimator valueAnimator = this.f30106O;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f30106O.cancel();
        }
        View childAt = getChildAt(i8);
        if (childAt == null) {
            c();
            return;
        }
        int left = childAt.getLeft();
        int right = childAt.getRight();
        TabLayout tabLayout = this.f30107P;
        if (tabLayout.f24184k0 || !(childAt instanceof h)) {
            i10 = left;
        } else {
            RectF rectF = tabLayout.f24159I;
            b((h) childAt, rectF);
            int i11 = (int) rectF.left;
            right = (int) rectF.right;
            i10 = i11;
        }
        int i12 = right;
        int i13 = this.f30104M;
        int i14 = this.f30105N;
        if (i13 == i10 && i14 == i12) {
            return;
        }
        ValueAnimator valueAnimator2 = new ValueAnimator();
        this.f30106O = valueAnimator2;
        valueAnimator2.setInterpolator(a.f25574a);
        valueAnimator2.setDuration(i9);
        valueAnimator2.setFloatValues(0.0f, 1.0f);
        valueAnimator2.addUpdateListener(new c(this, i13, i10, i14, i12));
        valueAnimator2.addListener(new d(this, i8));
        valueAnimator2.start();
    }

    public final void b(h hVar, RectF rectF) {
        View[] viewArr = {hVar.f30120H, hVar.f30121I, hVar.f30122J};
        int iMax = 0;
        int iMin = 0;
        boolean z7 = false;
        for (int i8 = 0; i8 < 3; i8++) {
            View view = viewArr[i8];
            if (view != null && view.getVisibility() == 0) {
                iMin = z7 ? Math.min(iMin, view.getLeft()) : view.getLeft();
                iMax = z7 ? Math.max(iMax, view.getRight()) : view.getRight();
                z7 = true;
            }
        }
        int iD = iMax - iMin;
        TabLayout tabLayout = this.f30107P;
        if (iD < tabLayout.d(24)) {
            iD = tabLayout.d(24);
        }
        int right = (hVar.getRight() + hVar.getLeft()) / 2;
        int i9 = iD / 2;
        rectF.set(right - i9, 0.0f, right + i9, 0.0f);
    }

    public final void c() {
        int left;
        int right;
        View childAt = getChildAt(this.f30101J);
        if (childAt == null || childAt.getWidth() <= 0) {
            left = -1;
            right = -1;
        } else {
            left = childAt.getLeft();
            right = childAt.getRight();
            TabLayout tabLayout = this.f30107P;
            boolean z7 = tabLayout.f24184k0;
            RectF rectF = tabLayout.f24159I;
            if (!z7 && (childAt instanceof h)) {
                b((h) childAt, rectF);
                left = (int) rectF.left;
                right = (int) rectF.right;
            }
            if (this.f30102K > 0.0f && this.f30101J < getChildCount() - 1) {
                View childAt2 = getChildAt(this.f30101J + 1);
                int left2 = childAt2.getLeft();
                int right2 = childAt2.getRight();
                if (!tabLayout.f24184k0 && (childAt2 instanceof h)) {
                    b((h) childAt2, rectF);
                    left2 = (int) rectF.left;
                    right2 = (int) rectF.right;
                }
                float f8 = this.f30102K;
                float f9 = left2 * f8;
                float f10 = 1.0f - f8;
                left = (int) ((left * f10) + f9);
                right = (int) ((f10 * right) + (f8 * right2));
            }
        }
        if (left == this.f30104M && right == this.f30105N) {
            return;
        }
        this.f30104M = left;
        this.f30105N = right;
        WeakHashMap weakHashMap = N.f4843a;
        postInvalidateOnAnimation();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        TabLayout tabLayout = this.f30107P;
        Drawable drawable = tabLayout.f24169S;
        int height = 0;
        int intrinsicHeight = drawable != null ? drawable.getIntrinsicHeight() : 0;
        int i8 = this.f30098G;
        if (i8 >= 0) {
            intrinsicHeight = i8;
        }
        int i9 = tabLayout.f24181h0;
        if (i9 == 0) {
            height = getHeight() - intrinsicHeight;
            intrinsicHeight = getHeight();
        } else if (i9 == 1) {
            height = (getHeight() - intrinsicHeight) / 2;
            intrinsicHeight = (getHeight() + intrinsicHeight) / 2;
        } else if (i9 != 2) {
            intrinsicHeight = i9 != 3 ? 0 : getHeight();
        }
        int i10 = this.f30104M;
        if (i10 >= 0 && this.f30105N > i10) {
            Drawable drawable2 = tabLayout.f24169S;
            if (drawable2 == null) {
                drawable2 = this.f30100I;
            }
            Drawable drawableQ = c.q(drawable2);
            drawableQ.setBounds(this.f30104M, height, this.f30105N, intrinsicHeight);
            Paint paint = this.f30099H;
            if (paint != null) {
                if (Build.VERSION.SDK_INT == 21) {
                    drawableQ.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
                } else {
                    drawableQ.setTint(paint.getColor());
                }
            }
            drawableQ.draw(canvas);
        }
        super.draw(canvas);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        ValueAnimator valueAnimator = this.f30106O;
        if (valueAnimator == null || !valueAnimator.isRunning()) {
            c();
            return;
        }
        this.f30106O.cancel();
        a(this.f30101J, Math.round((1.0f - this.f30106O.getAnimatedFraction()) * this.f30106O.getDuration()));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        if (View.MeasureSpec.getMode(i8) != 1073741824) {
            return;
        }
        TabLayout tabLayout = this.f30107P;
        if (tabLayout.f24182i0 == 1 && tabLayout.f24179f0 == 1) {
            int childCount = getChildCount();
            int iMax = 0;
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() == 0) {
                    iMax = Math.max(iMax, childAt.getMeasuredWidth());
                }
            }
            if (iMax <= 0) {
                return;
            }
            if (iMax * childCount <= getMeasuredWidth() - (tabLayout.d(16) * 2)) {
                boolean z7 = false;
                for (int i11 = 0; i11 < childCount; i11++) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) getChildAt(i11).getLayoutParams();
                    if (layoutParams.width != iMax || layoutParams.weight != 0.0f) {
                        layoutParams.width = iMax;
                        layoutParams.weight = 0.0f;
                        z7 = true;
                    }
                }
                if (!z7) {
                    return;
                }
            } else {
                tabLayout.f24179f0 = 0;
                tabLayout.k(false);
            }
            super.onMeasure(i8, i9);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i8) {
        super.onRtlPropertiesChanged(i8);
        if (Build.VERSION.SDK_INT >= 23 || this.f30103L == i8) {
            return;
        }
        requestLayout();
        this.f30103L = i8;
    }
}
