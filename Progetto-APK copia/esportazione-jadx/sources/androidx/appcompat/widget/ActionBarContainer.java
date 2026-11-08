package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import p031e.a;
import p086l.C3018b;
import p086l.Y0;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f8760G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public View f8761H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public View f8762I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Drawable f8763J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Drawable f8764K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Drawable f8765L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f8766M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f8767N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final int f8768O;

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBackground(new C3018b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24686a);
        boolean z7 = false;
        this.f8763J = typedArrayObtainStyledAttributes.getDrawable(0);
        this.f8764K = typedArrayObtainStyledAttributes.getDrawable(2);
        this.f8768O = typedArrayObtainStyledAttributes.getDimensionPixelSize(13, -1);
        if (getId() == R.id.split_action_bar) {
            this.f8766M = true;
            this.f8765L = typedArrayObtainStyledAttributes.getDrawable(1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f8766M ? !(this.f8763J != null || this.f8764K != null) : this.f8765L == null) {
            z7 = true;
        }
        setWillNotDraw(z7);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f8763J;
        if (drawable != null && drawable.isStateful()) {
            this.f8763J.setState(getDrawableState());
        }
        Drawable drawable2 = this.f8764K;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f8764K.setState(getDrawableState());
        }
        Drawable drawable3 = this.f8765L;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f8765L.setState(getDrawableState());
    }

    public View getTabContainer() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f8763J;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f8764K;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f8765L;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8761H = findViewById(R.id.action_bar);
        this.f8762I = findViewById(R.id.action_context_bar);
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f8760G || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        boolean z8;
        super.onLayout(z7, i8, i9, i10, i11);
        if (this.f8766M) {
            Drawable drawable = this.f8765L;
            if (drawable == null) {
                return;
            } else {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        } else {
            if (this.f8763J != null) {
                if (this.f8761H.getVisibility() == 0) {
                    this.f8763J.setBounds(this.f8761H.getLeft(), this.f8761H.getTop(), this.f8761H.getRight(), this.f8761H.getBottom());
                } else {
                    View view = this.f8762I;
                    if (view == null || view.getVisibility() != 0) {
                        this.f8763J.setBounds(0, 0, 0, 0);
                    } else {
                        this.f8763J.setBounds(this.f8762I.getLeft(), this.f8762I.getTop(), this.f8762I.getRight(), this.f8762I.getBottom());
                    }
                }
                z8 = true;
            } else {
                z8 = false;
            }
            this.f8767N = false;
            if (!z8) {
                return;
            }
        }
        invalidate();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i8, int i9) {
        int i10;
        if (this.f8761H == null && View.MeasureSpec.getMode(i9) == Integer.MIN_VALUE && (i10 = this.f8768O) >= 0) {
            i9 = View.MeasureSpec.makeMeasureSpec(Math.min(i10, View.MeasureSpec.getSize(i9)), Integer.MIN_VALUE);
        }
        super.onMeasure(i8, i9);
        if (this.f8761H == null) {
            return;
        }
        View.MeasureSpec.getMode(i9);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f8763J;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f8763J);
        }
        this.f8763J = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f8761H;
            if (view != null) {
                this.f8763J.setBounds(view.getLeft(), this.f8761H.getTop(), this.f8761H.getRight(), this.f8761H.getBottom());
            }
        }
        boolean z7 = false;
        if (!this.f8766M ? !(this.f8763J != null || this.f8764K != null) : this.f8765L == null) {
            z7 = true;
        }
        setWillNotDraw(z7);
        invalidate();
        invalidateOutline();
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f8765L;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f8765L);
        }
        this.f8765L = drawable;
        boolean z7 = this.f8766M;
        boolean z8 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (z7 && (drawable2 = this.f8765L) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!z7 ? !(this.f8763J != null || this.f8764K != null) : this.f8765L == null) {
            z8 = true;
        }
        setWillNotDraw(z8);
        invalidate();
        invalidateOutline();
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2 = this.f8764K;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f8764K);
        }
        this.f8764K = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f8767N && this.f8764K != null) {
                throw null;
            }
        }
        boolean z7 = false;
        if (!this.f8766M ? !(this.f8763J != null || this.f8764K != null) : this.f8765L == null) {
            z7 = true;
        }
        setWillNotDraw(z7);
        invalidate();
        invalidateOutline();
    }

    public void setTransitioning(boolean z7) {
        this.f8760G = z7;
        setDescendantFocusability(z7 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i8) {
        super.setVisibility(i8);
        boolean z7 = i8 == 0;
        Drawable drawable = this.f8763J;
        if (drawable != null) {
            drawable.setVisible(z7, false);
        }
        Drawable drawable2 = this.f8764K;
        if (drawable2 != null) {
            drawable2.setVisible(z7, false);
        }
        Drawable drawable3 = this.f8765L;
        if (drawable3 != null) {
            drawable3.setVisible(z7, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        Drawable drawable2 = this.f8763J;
        boolean z7 = this.f8766M;
        return (drawable == drawable2 && !z7) || (drawable == this.f8764K && this.f8767N) || ((drawable == this.f8765L && z7) || super.verifyDrawable(drawable));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i8) {
        if (i8 != 0) {
            return super.startActionModeForChild(view, callback, i8);
        }
        return null;
    }

    public void setTabContainer(Y0 y7) {
    }
}
