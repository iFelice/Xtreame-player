package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalGridView extends AbstractC0480f {

    /* JADX INFO: renamed from: A1, reason: collision with root package name */
    public Bitmap f9117A1;

    /* JADX INFO: renamed from: B1, reason: collision with root package name */
    public LinearGradient f9118B1;

    /* JADX INFO: renamed from: C1, reason: collision with root package name */
    public int f9119C1;

    /* JADX INFO: renamed from: D1, reason: collision with root package name */
    public int f9120D1;

    /* JADX INFO: renamed from: E1, reason: collision with root package name */
    public Bitmap f9121E1;

    /* JADX INFO: renamed from: F1, reason: collision with root package name */
    public LinearGradient f9122F1;

    /* JADX INFO: renamed from: G1, reason: collision with root package name */
    public int f9123G1;

    /* JADX INFO: renamed from: H1, reason: collision with root package name */
    public int f9124H1;

    /* JADX INFO: renamed from: I1, reason: collision with root package name */
    public final Rect f9125I1;

    /* JADX INFO: renamed from: x1, reason: collision with root package name */
    public boolean f9126x1;

    /* JADX INFO: renamed from: y1, reason: collision with root package name */
    public boolean f9127y1;

    /* JADX INFO: renamed from: z1, reason: collision with root package name */
    public final Paint f9128z1;

    public HorizontalGridView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f9128z1 = new Paint();
        this.f9125I1 = new Rect();
        this.f9291r1.w1(0);
        q0(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p009b0.a.f9811e);
        setRowHeight(typedArrayObtainStyledAttributes);
        setNumRows(typedArrayObtainStyledAttributes.getInt(0, 1));
        typedArrayObtainStyledAttributes.recycle();
        r0();
        Paint paint = new Paint();
        this.f9128z1 = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    private Bitmap getTempBitmapHigh() {
        Bitmap bitmap = this.f9121E1;
        if (bitmap == null || bitmap.getWidth() != this.f9123G1 || this.f9121E1.getHeight() != getHeight()) {
            this.f9121E1 = Bitmap.createBitmap(this.f9123G1, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f9121E1;
    }

    private Bitmap getTempBitmapLow() {
        Bitmap bitmap = this.f9117A1;
        if (bitmap == null || bitmap.getWidth() != this.f9119C1 || this.f9117A1.getHeight() != getHeight()) {
            this.f9117A1 = Bitmap.createBitmap(this.f9119C1, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f9117A1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        boolean z7;
        boolean z8 = this.f9126x1;
        C0491q c0491q = this.f9291r1;
        boolean z9 = true;
        if (!z8) {
            z7 = false;
            break;
        }
        int childCount = getChildCount();
        int i8 = 0;
        while (true) {
            if (i8 >= childCount) {
                z7 = false;
                break;
            }
            View childAt = getChildAt(i8);
            c0491q.getClass();
            C0488n c0488n = (C0488n) childAt.getLayoutParams();
            c0488n.getClass();
            if (childAt.getLeft() + c0488n.f9311e < getPaddingLeft() - this.f9120D1) {
                z7 = true;
                break;
            }
            i8++;
        }
        if (!this.f9127y1) {
            z9 = false;
            break;
        }
        int childCount2 = getChildCount() - 1;
        while (true) {
            if (childCount2 < 0) {
                z9 = false;
                break;
            }
            View childAt2 = getChildAt(childCount2);
            c0491q.getClass();
            C0488n c0488n2 = (C0488n) childAt2.getLayoutParams();
            c0488n2.getClass();
            if (childAt2.getRight() - c0488n2.f9313g > (getWidth() - getPaddingRight()) + this.f9124H1) {
                break;
            } else {
                childCount2--;
            }
        }
        if (!z7) {
            this.f9117A1 = null;
        }
        if (!z9) {
            this.f9121E1 = null;
        }
        if (!z7 && !z9) {
            super.draw(canvas);
            return;
        }
        int paddingLeft = this.f9126x1 ? (getPaddingLeft() - this.f9120D1) - this.f9119C1 : 0;
        int width = this.f9127y1 ? (getWidth() - getPaddingRight()) + this.f9124H1 + this.f9123G1 : getWidth();
        int iSave = canvas.save();
        canvas.clipRect((this.f9126x1 ? this.f9119C1 : 0) + paddingLeft, 0, width - (this.f9127y1 ? this.f9123G1 : 0), getHeight());
        super.draw(canvas);
        canvas.restoreToCount(iSave);
        Canvas canvas2 = new Canvas();
        Rect rect = this.f9125I1;
        rect.top = 0;
        rect.bottom = getHeight();
        if (z7 && this.f9119C1 > 0) {
            Bitmap tempBitmapLow = getTempBitmapLow();
            tempBitmapLow.eraseColor(0);
            canvas2.setBitmap(tempBitmapLow);
            int iSave2 = canvas2.save();
            canvas2.clipRect(0, 0, this.f9119C1, getHeight());
            float f8 = -paddingLeft;
            canvas2.translate(f8, 0.0f);
            super.draw(canvas2);
            canvas2.restoreToCount(iSave2);
            this.f9128z1.setShader(this.f9118B1);
            canvas2.drawRect(0.0f, 0.0f, this.f9119C1, getHeight(), this.f9128z1);
            rect.left = 0;
            rect.right = this.f9119C1;
            canvas.translate(paddingLeft, 0.0f);
            canvas.drawBitmap(tempBitmapLow, rect, rect, (Paint) null);
            canvas.translate(f8, 0.0f);
        }
        if (!z9 || this.f9123G1 <= 0) {
            return;
        }
        Bitmap tempBitmapHigh = getTempBitmapHigh();
        tempBitmapHigh.eraseColor(0);
        canvas2.setBitmap(tempBitmapHigh);
        int iSave3 = canvas2.save();
        canvas2.clipRect(0, 0, this.f9123G1, getHeight());
        canvas2.translate(-(width - this.f9123G1), 0.0f);
        super.draw(canvas2);
        canvas2.restoreToCount(iSave3);
        this.f9128z1.setShader(this.f9122F1);
        canvas2.drawRect(0.0f, 0.0f, this.f9123G1, getHeight(), this.f9128z1);
        rect.left = 0;
        int i9 = this.f9123G1;
        rect.right = i9;
        canvas.translate(width - i9, 0.0f);
        canvas.drawBitmap(tempBitmapHigh, rect, rect, (Paint) null);
        canvas.translate(-(width - this.f9123G1), 0.0f);
    }

    public final boolean getFadingLeftEdge() {
        return this.f9126x1;
    }

    public final int getFadingLeftEdgeLength() {
        return this.f9119C1;
    }

    public final int getFadingLeftEdgeOffset() {
        return this.f9120D1;
    }

    public final boolean getFadingRightEdge() {
        return this.f9127y1;
    }

    public final int getFadingRightEdgeLength() {
        return this.f9123G1;
    }

    public final int getFadingRightEdgeOffset() {
        return this.f9124H1;
    }

    public final void r0() {
        if (this.f9126x1 || this.f9127y1) {
            setLayerType(2, null);
            setWillNotDraw(false);
        } else {
            setLayerType(0, null);
            setWillNotDraw(true);
        }
    }

    public final void setFadingLeftEdge(boolean z7) {
        if (this.f9126x1 != z7) {
            this.f9126x1 = z7;
            if (!z7) {
                this.f9117A1 = null;
            }
            invalidate();
            r0();
        }
    }

    public final void setFadingLeftEdgeLength(int i8) {
        if (this.f9119C1 != i8) {
            this.f9119C1 = i8;
            if (i8 != 0) {
                this.f9118B1 = new LinearGradient(0.0f, 0.0f, this.f9119C1, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            } else {
                this.f9118B1 = null;
            }
            invalidate();
        }
    }

    public final void setFadingLeftEdgeOffset(int i8) {
        if (this.f9120D1 != i8) {
            this.f9120D1 = i8;
            invalidate();
        }
    }

    public final void setFadingRightEdge(boolean z7) {
        if (this.f9127y1 != z7) {
            this.f9127y1 = z7;
            if (!z7) {
                this.f9121E1 = null;
            }
            invalidate();
            r0();
        }
    }

    public final void setFadingRightEdgeLength(int i8) {
        if (this.f9123G1 != i8) {
            this.f9123G1 = i8;
            if (i8 != 0) {
                this.f9122F1 = new LinearGradient(0.0f, 0.0f, this.f9123G1, 0.0f, -16777216, 0, Shader.TileMode.CLAMP);
            } else {
                this.f9122F1 = null;
            }
            invalidate();
        }
    }

    public final void setFadingRightEdgeOffset(int i8) {
        if (this.f9124H1 != i8) {
            this.f9124H1 = i8;
            invalidate();
        }
    }

    public void setNumRows(int i8) {
        C0491q c0491q = this.f9291r1;
        if (i8 < 0) {
            c0491q.getClass();
            throw new IllegalArgumentException();
        }
        c0491q.f9357T = i8;
        requestLayout();
    }

    public void setRowHeight(TypedArray typedArray) {
        if (typedArray.peekValue(1) != null) {
            setRowHeight(typedArray.getLayoutDimension(1, 0));
        }
    }

    public void setRowHeight(int i8) {
        this.f9291r1.x1(i8);
        requestLayout();
    }
}
