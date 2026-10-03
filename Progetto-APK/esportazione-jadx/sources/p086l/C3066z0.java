package p086l;

import Q.d;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import p000a.f;
import pe.hf.black20.R;

/* JADX INFO: renamed from: l.z0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3066z0 extends ListView {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Rect f26423G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f26424H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f26425I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f26426J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f26427K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f26428L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C3062x0 f26429M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f26430N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f26431O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f26432P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public d f26433Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public f f26434R;

    public C3066z0(Context context, boolean z7) {
        super(context, null, R.attr.dropDownListViewStyle);
        this.f26423G = new Rect();
        this.f26424H = 0;
        this.f26425I = 0;
        this.f26426J = 0;
        this.f26427K = 0;
        this.f26431O = z7;
        setCacheColorHint(0);
    }

    public final int a(int i8, int i9) {
        int listPaddingTop = getListPaddingTop();
        int listPaddingBottom = getListPaddingBottom();
        int dividerHeight = getDividerHeight();
        Drawable divider = getDivider();
        ListAdapter adapter = getAdapter();
        if (adapter == null) {
            return listPaddingTop + listPaddingBottom;
        }
        int measuredHeight = listPaddingTop + listPaddingBottom;
        if (dividerHeight <= 0 || divider == null) {
            dividerHeight = 0;
        }
        int count = adapter.getCount();
        View view = null;
        int i10 = 0;
        for (int i11 = 0; i11 < count; i11++) {
            int itemViewType = adapter.getItemViewType(i11);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(i11, view, this);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = generateDefaultLayoutParams();
                view.setLayoutParams(layoutParams);
            }
            int i12 = layoutParams.height;
            view.measure(i8, i12 > 0 ? View.MeasureSpec.makeMeasureSpec(i12, 1073741824) : View.MeasureSpec.makeMeasureSpec(0, 0));
            view.forceLayout();
            if (i11 > 0) {
                measuredHeight += dividerHeight;
            }
            measuredHeight += view.getMeasuredHeight();
            if (measuredHeight >= i9) {
                return i9;
            }
        }
        return measuredHeight;
    }

    /* JADX WARN: Code duplicated, block: B:84:0x014a  */
    /* JADX WARN: Code duplicated, block: B:86:0x0160  */
    /* JADX WARN: Code duplicated, block: B:88:0x0165  */
    /* JADX WARN: Code duplicated, block: B:90:0x0169  */
    /* JADX WARN: Code duplicated, block: B:92:0x017a  */
    /* JADX WARN: Code duplicated, block: B:94:0x017e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0182  */
    /* JADX WARN: Code duplicated, block: B:9:0x0015  */
    public final boolean b(MotionEvent motionEvent, int i8) {
        boolean z7;
        boolean zA;
        View childAt;
        View childAt2;
        d dVar;
        int actionMasked = motionEvent.getActionMasked();
        boolean z8 = false;
        if (actionMasked != 1) {
            if (actionMasked == 2) {
                z7 = true;
            } else if (actionMasked != 3) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z7 || z8) {
                this.f26432P = false;
                setPressed(false);
                drawableStateChanged();
                childAt2 = getChildAt(this.f26428L - getFirstVisiblePosition());
                if (childAt2 != null) {
                    childAt2.setPressed(false);
                }
            }
            if (z7) {
                if (this.f26433Q == null) {
                    this.f26433Q = new d(this);
                }
                d dVar2 = this.f26433Q;
                boolean z9 = dVar2.f5996V;
                dVar2.f5996V = true;
                dVar2.d(this, motionEvent);
            } else {
                dVar = this.f26433Q;
                if (dVar != null) {
                    if (dVar.f5996V) {
                        dVar.e();
                    }
                    dVar.f5996V = false;
                }
            }
            return z7;
        }
        z7 = false;
        int iFindPointerIndex = motionEvent.findPointerIndex(i8);
        if (iFindPointerIndex < 0) {
            z7 = false;
        } else {
            int x7 = (int) motionEvent.getX(iFindPointerIndex);
            int y7 = (int) motionEvent.getY(iFindPointerIndex);
            int iPointToPosition = pointToPosition(x7, y7);
            if (iPointToPosition == -1) {
                z8 = true;
            } else {
                View childAt3 = getChildAt(iPointToPosition - getFirstVisiblePosition());
                float f8 = x7;
                float f9 = y7;
                this.f26432P = true;
                int i9 = Build.VERSION.SDK_INT;
                AbstractC3056u0.a(this, f8, f9);
                if (!isPressed()) {
                    setPressed(true);
                }
                layoutChildren();
                int i10 = this.f26428L;
                if (i10 != -1 && (childAt = getChildAt(i10 - getFirstVisiblePosition())) != null && childAt != childAt3 && childAt.isPressed()) {
                    childAt.setPressed(false);
                }
                this.f26428L = iPointToPosition;
                AbstractC3056u0.a(childAt3, f8 - childAt3.getLeft(), f9 - childAt3.getTop());
                if (!childAt3.isPressed()) {
                    childAt3.setPressed(true);
                }
                Drawable selector = getSelector();
                boolean z10 = (selector == null || iPointToPosition == -1) ? false : true;
                if (z10) {
                    selector.setVisible(false, false);
                }
                int left = childAt3.getLeft();
                int top = childAt3.getTop();
                int right = childAt3.getRight();
                int bottom = childAt3.getBottom();
                Rect rect = this.f26423G;
                rect.set(left, top, right, bottom);
                rect.left -= this.f26424H;
                rect.top -= this.f26425I;
                rect.right += this.f26426J;
                rect.bottom += this.f26427K;
                if (i9 >= 33) {
                    zA = AbstractC3060w0.a(this);
                } else {
                    Field field = AbstractC3064y0.f26421a;
                    if (field != null) {
                        try {
                            zA = field.getBoolean(this);
                        } catch (IllegalAccessException e8) {
                            e8.printStackTrace();
                            zA = false;
                        }
                    } else {
                        zA = false;
                    }
                }
                if (childAt3.isEnabled() != zA) {
                    boolean z11 = !zA;
                    if (Build.VERSION.SDK_INT >= 33) {
                        AbstractC3060w0.b(this, z11);
                    } else {
                        Field field2 = AbstractC3064y0.f26421a;
                        if (field2 != null) {
                            try {
                                field2.set(this, Boolean.valueOf(z11));
                            } catch (IllegalAccessException e9) {
                                e9.printStackTrace();
                            }
                        }
                    }
                    if (iPointToPosition != -1) {
                        refreshDrawableState();
                    }
                }
                if (z10) {
                    float fExactCenterX = rect.exactCenterX();
                    float fExactCenterY = rect.exactCenterY();
                    selector.setVisible(getVisibility() == 0, false);
                    selector.setHotspot(fExactCenterX, fExactCenterY);
                }
                Drawable selector2 = getSelector();
                if (selector2 != null && iPointToPosition != -1) {
                    selector2.setHotspot(f8, f9);
                }
                C3062x0 c3062x0 = this.f26429M;
                if (c3062x0 != null) {
                    c3062x0.f26417H = false;
                }
                refreshDrawableState();
                if (actionMasked == 1) {
                    performItemClick(childAt3, iPointToPosition, getItemIdAtPosition(iPointToPosition));
                }
                z7 = true;
                z8 = false;
            }
        }
        if (z7) {
            this.f26432P = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f26428L - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        } else {
            this.f26432P = false;
            setPressed(false);
            drawableStateChanged();
            childAt2 = getChildAt(this.f26428L - getFirstVisiblePosition());
            if (childAt2 != null) {
                childAt2.setPressed(false);
            }
        }
        if (z7) {
            if (this.f26433Q == null) {
                this.f26433Q = new d(this);
            }
            d dVar3 = this.f26433Q;
            boolean z12 = dVar3.f5996V;
            dVar3.f5996V = true;
            dVar3.d(this, motionEvent);
        } else {
            dVar = this.f26433Q;
            if (dVar != null) {
                if (dVar.f5996V) {
                    dVar.e();
                }
                dVar.f5996V = false;
            }
        }
        return z7;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        Drawable selector;
        Rect rect = this.f26423G;
        if (!rect.isEmpty() && (selector = getSelector()) != null) {
            selector.setBounds(rect);
            selector.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        if (this.f26434R != null) {
            return;
        }
        super.drawableStateChanged();
        C3062x0 c3062x0 = this.f26429M;
        if (c3062x0 != null) {
            c3062x0.f26417H = true;
        }
        Drawable selector = getSelector();
        if (selector != null && this.f26432P && isPressed()) {
            selector.setState(getDrawableState());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean hasFocus() {
        return this.f26431O || super.hasFocus();
    }

    @Override // android.view.View
    public final boolean hasWindowFocus() {
        return this.f26431O || super.hasWindowFocus();
    }

    @Override // android.view.View
    public final boolean isFocused() {
        return this.f26431O || super.isFocused();
    }

    @Override // android.view.View
    public final boolean isInTouchMode() {
        return (this.f26431O && this.f26430N) || super.isInTouchMode();
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        this.f26434R = null;
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 26) {
            return super.onHoverEvent(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        int i9 = 2;
        if (actionMasked == 10 && this.f26434R == null) {
            f fVar = new f(this, i9);
            this.f26434R = fVar;
            post(fVar);
        }
        boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
        if (actionMasked == 9 || actionMasked == 7) {
            int iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition != -1 && iPointToPosition != getSelectedItemPosition()) {
                View childAt = getChildAt(iPointToPosition - getFirstVisiblePosition());
                if (childAt.isEnabled()) {
                    requestFocus();
                    if (i8 < 30 || !AbstractC3058v0.f26399d) {
                        setSelectionFromTop(iPointToPosition, childAt.getTop() - getTop());
                    } else {
                        try {
                            AbstractC3058v0.f26396a.invoke(this, Integer.valueOf(iPointToPosition), childAt, Boolean.FALSE, -1, -1);
                            AbstractC3058v0.f26397b.invoke(this, Integer.valueOf(iPointToPosition));
                            AbstractC3058v0.f26398c.invoke(this, Integer.valueOf(iPointToPosition));
                        } catch (IllegalAccessException e8) {
                            e8.printStackTrace();
                        } catch (InvocationTargetException e9) {
                            e9.printStackTrace();
                        }
                    }
                }
                Drawable selector = getSelector();
                if (selector != null && this.f26432P && isPressed()) {
                    selector.setState(getDrawableState());
                }
            }
        } else {
            setSelection(-1);
        }
        return zOnHoverEvent;
    }

    @Override // android.widget.AbsListView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.f26428L = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        f fVar = this.f26434R;
        if (fVar != null) {
            C3066z0 c3066z0 = (C3066z0) fVar.f8565H;
            c3066z0.f26434R = null;
            c3066z0.removeCallbacks(fVar);
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setListSelectionHidden(boolean z7) {
        this.f26430N = z7;
    }

    @Override // android.widget.AbsListView
    public void setSelector(Drawable drawable) {
        C3062x0 c3062x0 = null;
        if (drawable != null) {
            C3062x0 c3062x1 = new C3062x0();
            Drawable drawable2 = c3062x1.f26416G;
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            c3062x1.f26416G = drawable;
            drawable.setCallback(c3062x1);
            c3062x1.f26417H = true;
            c3062x0 = c3062x1;
        }
        this.f26429M = c3062x0;
        super.setSelector(c3062x0);
        Rect rect = new Rect();
        if (drawable != null) {
            drawable.getPadding(rect);
        }
        this.f26424H = rect.left;
        this.f26425I = rect.top;
        this.f26426J = rect.right;
        this.f26427K = rect.bottom;
    }
}
