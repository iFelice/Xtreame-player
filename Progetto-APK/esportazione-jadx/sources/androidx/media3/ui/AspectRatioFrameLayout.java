package androidx.media3.ui;

import D1.I;
import D1.InterfaceC0136a;
import D1.RunnableC0137b;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final /* synthetic */ int f9474J = 0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final RunnableC0137b f9475G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public float f9476H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f9477I;

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9477I = 0;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, I.f2065a, 0, 0);
            try {
                this.f9477I = typedArrayObtainStyledAttributes.getInt(0, 0);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.f9475G = new RunnableC0137b(this);
    }

    public int getResizeMode() {
        return this.f9477I;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        float f8;
        float f9;
        super.onMeasure(i8, i9);
        if (this.f9476H <= 0.0f) {
            return;
        }
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        float f10 = measuredWidth;
        float f11 = measuredHeight;
        float f12 = (this.f9476H / (f10 / f11)) - 1.0f;
        float fAbs = Math.abs(f12);
        RunnableC0137b runnableC0137b = this.f9475G;
        if (fAbs <= 0.01f) {
            if (runnableC0137b.f2124G) {
                return;
            }
            runnableC0137b.f2124G = true;
            runnableC0137b.f2125H.post(runnableC0137b);
            return;
        }
        int i10 = this.f9477I;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f8 = this.f9476H;
                } else if (i10 == 4) {
                    if (f12 > 0.0f) {
                        f8 = this.f9476H;
                    } else {
                        f9 = this.f9476H;
                    }
                }
                measuredWidth = (int) (f11 * f8);
            } else {
                f9 = this.f9476H;
            }
            measuredHeight = (int) (f10 / f9);
        } else if (f12 > 0.0f) {
            f9 = this.f9476H;
            measuredHeight = (int) (f10 / f9);
        } else {
            f8 = this.f9476H;
            measuredWidth = (int) (f11 * f8);
        }
        if (!runnableC0137b.f2124G) {
            runnableC0137b.f2124G = true;
            runnableC0137b.f2125H.post(runnableC0137b);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824), View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824));
    }

    public void setAspectRatio(float f8) {
        if (this.f9476H != f8) {
            this.f9476H = f8;
            requestLayout();
        }
    }

    public void setResizeMode(int i8) {
        if (this.f9477I != i8) {
            this.f9477I = i8;
            requestLayout();
        }
    }

    public void setAspectRatioListener(InterfaceC0136a interfaceC0136a) {
    }
}
