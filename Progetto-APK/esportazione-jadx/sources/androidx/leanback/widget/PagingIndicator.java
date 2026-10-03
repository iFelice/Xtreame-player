package androidx.leanback.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import p086l.b1;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class PagingIndicator extends View {

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final DecelerateInterpolator f9148f0 = new DecelerateInterpolator();

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final b1 f9149g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final b1 f9150h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final b1 f9151i0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f9152G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final int f9153H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final int f9154I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f9155J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final int f9156K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f9157L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f9158M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f9159N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public A[] f9160O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int[] f9161P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int[] f9162Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int[] f9163R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f9164S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f9165T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f9166U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f9167V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final Paint f9168W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Paint f9169a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public Bitmap f9170b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public Paint f9171c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final Rect f9172d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final float f9173e0;

    static {
        Class<Float> cls = Float.class;
        f9149g0 = new b1(1, cls, "alpha");
        f9150h0 = new b1(2, cls, "diameter");
        f9151i0 = new b1(3, cls, "translation_x");
    }

    public PagingIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = getResources();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9808b, 0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_radius));
        this.f9154I = dimensionPixelOffset;
        int i8 = dimensionPixelOffset * 2;
        this.f9153H = i8;
        int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_radius));
        this.f9157L = dimensionPixelOffset2;
        int i9 = dimensionPixelOffset2 * 2;
        this.f9156K = i9;
        this.f9155J = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_gap));
        this.f9158M = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_gap));
        int color = typedArrayObtainStyledAttributes.getColor(3, getResources().getColor(R.color.lb_page_indicator_dot));
        Paint paint = new Paint(1);
        this.f9168W = paint;
        paint.setColor(color);
        this.f9167V = typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.lb_page_indicator_arrow_background));
        if (this.f9171c0 == null && typedArrayObtainStyledAttributes.hasValue(1)) {
            setArrowColor(typedArrayObtainStyledAttributes.getColor(1, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f9152G = resources.getConfiguration().getLayoutDirection() == 0;
        int color2 = resources.getColor(R.color.lb_page_indicator_arrow_shadow);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_radius);
        this.f9159N = dimensionPixelSize;
        Paint paint2 = new Paint(1);
        this.f9169a0 = paint2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_offset);
        paint2.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, color2);
        this.f9170b0 = d();
        this.f9172d0 = new Rect(0, 0, this.f9170b0.getWidth(), this.f9170b0.getHeight());
        float f8 = i9;
        this.f9173e0 = this.f9170b0.getWidth() / f8;
        AnimatorSet animatorSet2 = new AnimatorSet();
        b1 b1Var = f9149g0;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, b1Var, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(167L);
        DecelerateInterpolator decelerateInterpolator = f9148f0;
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        float f9 = i8;
        b1 b1Var2 = f9150h0;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat((Object) null, b1Var2, f9, f8);
        objectAnimatorOfFloat2.setDuration(417L);
        objectAnimatorOfFloat2.setInterpolator(decelerateInterpolator);
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, c());
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat((Object) null, b1Var, 1.0f, 0.0f);
        objectAnimatorOfFloat3.setDuration(167L);
        objectAnimatorOfFloat3.setInterpolator(decelerateInterpolator);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat((Object) null, b1Var2, f8, f9);
        objectAnimatorOfFloat4.setDuration(417L);
        objectAnimatorOfFloat4.setInterpolator(decelerateInterpolator);
        animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4, c());
        animatorSet.playTogether(animatorSet2, animatorSet3);
        setLayerType(1, null);
    }

    private int getDesiredHeight() {
        return getPaddingBottom() + getPaddingTop() + this.f9156K + this.f9159N;
    }

    private int getDesiredWidth() {
        return getPaddingRight() + getPaddingLeft() + getRequiredWidth();
    }

    private int getRequiredWidth() {
        return ((this.f9165T - 3) * this.f9155J) + (this.f9158M * 2) + (this.f9154I * 2);
    }

    private void setSelectedPage(int i8) {
        if (i8 == this.f9166U) {
            return;
        }
        this.f9166U = i8;
        a();
    }

    public final void a() {
        int i8;
        int i9 = 0;
        while (true) {
            i8 = this.f9166U;
            float f8 = -1.0f;
            if (i9 >= i8) {
                break;
            }
            this.f9160O[i9].b();
            A a8 = this.f9160O[i9];
            if (i9 != 0) {
                f8 = 1.0f;
            }
            a8.f9091h = f8;
            a8.f9087d = this.f9162Q[i9];
            i9++;
        }
        A a9 = this.f9160O[i8];
        a9.f9086c = 0.0f;
        a9.f9087d = 0.0f;
        PagingIndicator pagingIndicator = a9.f9093j;
        a9.f9088e = pagingIndicator.f9156K;
        float f9 = pagingIndicator.f9157L;
        a9.f9089f = f9;
        a9.f9090g = f9 * pagingIndicator.f9173e0;
        a9.f9084a = 1.0f;
        a9.a();
        A[] aArr = this.f9160O;
        int i10 = this.f9166U;
        A a10 = aArr[i10];
        a10.f9091h = i10 <= 0 ? 1.0f : -1.0f;
        a10.f9087d = this.f9161P[i10];
        while (true) {
            i10++;
            if (i10 >= this.f9165T) {
                return;
            }
            this.f9160O[i10].b();
            A a11 = this.f9160O[i10];
            a11.f9091h = 1.0f;
            a11.f9087d = this.f9163R[i10];
        }
    }

    public final void b() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int requiredWidth = getRequiredWidth();
        int i8 = (paddingLeft + width) / 2;
        int i9 = this.f9165T;
        int[] iArr = new int[i9];
        this.f9161P = iArr;
        int[] iArr2 = new int[i9];
        this.f9162Q = iArr2;
        int[] iArr3 = new int[i9];
        this.f9163R = iArr3;
        boolean z7 = this.f9152G;
        int i10 = this.f9154I;
        int i11 = this.f9158M;
        int i12 = this.f9155J;
        int i13 = 1;
        if (z7) {
            int i14 = i8 - (requiredWidth / 2);
            iArr[0] = ((i14 + i10) - i12) + i11;
            iArr2[0] = i14 + i10;
            iArr3[0] = (i11 * 2) + ((i14 + i10) - (i12 * 2));
            while (i13 < this.f9165T) {
                int[] iArr4 = this.f9161P;
                int[] iArr5 = this.f9162Q;
                int i15 = i13 - 1;
                iArr4[i13] = iArr5[i15] + i11;
                iArr5[i13] = iArr5[i15] + i12;
                this.f9163R[i13] = iArr4[i15] + i11;
                i13++;
            }
        } else {
            int i16 = (requiredWidth / 2) + i8;
            iArr[0] = ((i16 - i10) + i12) - i11;
            iArr2[0] = i16 - i10;
            iArr3[0] = ((i12 * 2) + (i16 - i10)) - (i11 * 2);
            while (i13 < this.f9165T) {
                int[] iArr6 = this.f9161P;
                int[] iArr7 = this.f9162Q;
                int i17 = i13 - 1;
                iArr6[i13] = iArr7[i17] - i11;
                iArr7[i13] = iArr7[i17] - i12;
                this.f9163R[i13] = iArr6[i17] - i11;
                i13++;
            }
        }
        this.f9164S = paddingTop + this.f9157L;
        a();
    }

    public final ObjectAnimator c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, f9151i0, (-this.f9158M) + this.f9155J, 0.0f);
        objectAnimatorOfFloat.setDuration(417L);
        objectAnimatorOfFloat.setInterpolator(f9148f0);
        return objectAnimatorOfFloat;
    }

    public final Bitmap d() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.lb_ic_nav_arrow);
        if (this.f9152G) {
            return bitmapDecodeResource;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), matrix, false);
    }

    public int[] getDotSelectedLeftX() {
        return this.f9162Q;
    }

    public int[] getDotSelectedRightX() {
        return this.f9163R;
    }

    public int[] getDotSelectedX() {
        return this.f9161P;
    }

    public int getPageCount() {
        return this.f9165T;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        for (int i8 = 0; i8 < this.f9165T; i8++) {
            A a8 = this.f9160O[i8];
            float f8 = a8.f9087d + a8.f9086c;
            PagingIndicator pagingIndicator = a8.f9093j;
            canvas.drawCircle(f8, pagingIndicator.f9164S, a8.f9089f, pagingIndicator.f9168W);
            if (a8.f9084a > 0.0f) {
                Paint paint = pagingIndicator.f9169a0;
                paint.setColor(a8.f9085b);
                canvas.drawCircle(f8, pagingIndicator.f9164S, a8.f9089f, paint);
                Bitmap bitmap = pagingIndicator.f9170b0;
                float f9 = a8.f9090g;
                float f10 = pagingIndicator.f9164S;
                canvas.drawBitmap(bitmap, pagingIndicator.f9172d0, new Rect((int) (f8 - f9), (int) (f10 - f9), (int) (f8 + f9), (int) (f10 + f9)), pagingIndicator.f9171c0);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        int desiredHeight = getDesiredHeight();
        int mode = View.MeasureSpec.getMode(i9);
        if (mode == Integer.MIN_VALUE) {
            desiredHeight = Math.min(desiredHeight, View.MeasureSpec.getSize(i9));
        } else if (mode == 1073741824) {
            desiredHeight = View.MeasureSpec.getSize(i9);
        }
        int desiredWidth = getDesiredWidth();
        int mode2 = View.MeasureSpec.getMode(i8);
        if (mode2 == Integer.MIN_VALUE) {
            desiredWidth = Math.min(desiredWidth, View.MeasureSpec.getSize(i8));
        } else if (mode2 == 1073741824) {
            desiredWidth = View.MeasureSpec.getSize(i8);
        }
        setMeasuredDimension(desiredWidth, desiredHeight);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i8) {
        super.onRtlPropertiesChanged(i8);
        boolean z7 = i8 == 0;
        if (this.f9152G != z7) {
            this.f9152G = z7;
            this.f9170b0 = d();
            A[] aArr = this.f9160O;
            if (aArr != null) {
                for (A a8 : aArr) {
                    a8.f9092i = a8.f9093j.f9152G ? 1.0f : -1.0f;
                }
            }
            b();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        setMeasuredDimension(i8, i9);
        b();
    }

    public void setArrowBackgroundColor(int i8) {
        this.f9167V = i8;
    }

    public void setArrowColor(int i8) {
        if (this.f9171c0 == null) {
            this.f9171c0 = new Paint();
        }
        this.f9171c0.setColorFilter(new PorterDuffColorFilter(i8, PorterDuff.Mode.SRC_IN));
    }

    public void setDotBackgroundColor(int i8) {
        this.f9168W.setColor(i8);
    }

    public void setPageCount(int i8) {
        if (i8 <= 0) {
            throw new IllegalArgumentException("The page count should be a positive integer");
        }
        this.f9165T = i8;
        this.f9160O = new A[i8];
        for (int i9 = 0; i9 < this.f9165T; i9++) {
            this.f9160O[i9] = new A(this);
        }
        b();
        setSelectedPage(0);
    }
}
