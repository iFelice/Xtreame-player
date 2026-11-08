package p086l;

import J6.r;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import b7.AbstractC0551u;
import p031e.a;
import p071j.d;
import p079k.ViewTreeObserverOnGlobalLayoutListenerC3013e;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public final class W extends Spinner {

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public static final int[] f26192O = {R.attr.spinnerMode};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26193G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f26194H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3038l f26195I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public SpinnerAdapter f26196J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f26197K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final V f26198L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f26199M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final Rect f26200N;

    /* JADX WARN: Code duplicated, block: B:26:0x0063 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x0066  */
    /* JADX WARN: Code duplicated, block: B:29:0x0099  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d7  */
    public W(Context context, AttributeSet attributeSet) throws Throwable {
        TypedArray typedArrayObtainStyledAttributes;
        int i8;
        CharSequence[] textArray;
        SpinnerAdapter spinnerAdapter;
        super(context, attributeSet, pe.hf.black20.R.attr.spinnerStyle);
        this.f26200N = new Rect();
        c1.a(getContext(), this);
        int[] iArr = a.f24706u;
        u uVarJ = u.J(context, attributeSet, iArr, pe.hf.black20.R.attr.spinnerStyle, 0);
        this.f26193G = new C3051s(this);
        int iZ = uVarJ.z(4, 0);
        if (iZ != 0) {
            this.f26194H = new d(context, iZ);
        } else {
            this.f26194H = context;
        }
        int i9 = -1;
        TypedArray typedArray = null;
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f26192O, pe.hf.black20.R.attr.spinnerStyle, 0);
            try {
                try {
                    if (typedArrayObtainStyledAttributes.hasValue(0)) {
                        i9 = typedArrayObtainStyledAttributes.getInt(0, 0);
                    }
                } catch (Throwable th) {
                    th = th;
                    typedArray = typedArrayObtainStyledAttributes;
                    if (typedArray != null) {
                        typedArray.recycle();
                    }
                    throw th;
                }
            } catch (Exception e8) {
                e = e8;
                Log.i("AppCompatSpinner", "Could not read android:spinnerMode", e);
                if (typedArrayObtainStyledAttributes != null) {
                }
                i8 = 1;
                if (i9 != 0) {
                    P p7 = new P(this);
                    this.f26198L = p7;
                    p7.f26163I = uVarJ.A(2);
                } else if (i9 == 1) {
                    T t7 = new T(this, this.f26194H, attributeSet);
                    u uVarJ2 = u.J(this.f26194H, attributeSet, iArr, pe.hf.black20.R.attr.spinnerStyle, 0);
                    this.f26199M = ((TypedArray) uVarJ2.f27279I).getLayoutDimension(3, -2);
                    t7.g(uVarJ2.s(1));
                    t7.f26176i0 = uVarJ.A(2);
                    uVarJ2.P();
                    this.f26198L = t7;
                    this.f26195I = new C3038l(this, this, t7, i8);
                }
                textArray = ((TypedArray) uVarJ.f27279I).getTextArray(0);
                if (textArray != null) {
                    ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
                    arrayAdapter.setDropDownViewResource(pe.hf.black20.R.layout.support_simple_spinner_dropdown_item);
                    setAdapter((SpinnerAdapter) arrayAdapter);
                }
                uVarJ.P();
                this.f26197K = true;
                spinnerAdapter = this.f26196J;
                if (spinnerAdapter != null) {
                    setAdapter(spinnerAdapter);
                    this.f26196J = null;
                }
                this.f26193G.f(attributeSet, pe.hf.black20.R.attr.spinnerStyle);
            }
        } catch (Exception e9) {
            e = e9;
            typedArrayObtainStyledAttributes = null;
        } catch (Throwable th2) {
            th = th2;
            if (typedArray != null) {
                typedArray.recycle();
            }
            throw th;
        }
        typedArrayObtainStyledAttributes.recycle();
        i8 = 1;
        if (i9 != 0) {
            P p8 = new P(this);
            this.f26198L = p8;
            p8.f26163I = uVarJ.A(2);
        } else if (i9 == 1) {
            T t8 = new T(this, this.f26194H, attributeSet);
            u uVarJ3 = u.J(this.f26194H, attributeSet, iArr, pe.hf.black20.R.attr.spinnerStyle, 0);
            this.f26199M = ((TypedArray) uVarJ3.f27279I).getLayoutDimension(3, -2);
            t8.g(uVarJ3.s(1));
            t8.f26176i0 = uVarJ.A(2);
            uVarJ3.P();
            this.f26198L = t8;
            this.f26195I = new C3038l(this, this, t8, i8);
        }
        textArray = ((TypedArray) uVarJ.f27279I).getTextArray(0);
        if (textArray != null) {
            ArrayAdapter arrayAdapter2 = new ArrayAdapter(context, R.layout.simple_spinner_item, textArray);
            arrayAdapter2.setDropDownViewResource(pe.hf.black20.R.layout.support_simple_spinner_dropdown_item);
            setAdapter((SpinnerAdapter) arrayAdapter2);
        }
        uVarJ.P();
        this.f26197K = true;
        spinnerAdapter = this.f26196J;
        if (spinnerAdapter != null) {
            setAdapter(spinnerAdapter);
            this.f26196J = null;
        }
        this.f26193G.f(attributeSet, pe.hf.black20.R.attr.spinnerStyle);
    }

    public final int a(SpinnerAdapter spinnerAdapter, Drawable drawable) {
        int i8 = 0;
        if (spinnerAdapter == null) {
            return 0;
        }
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int iMax = Math.max(0, getSelectedItemPosition());
        int iMin = Math.min(spinnerAdapter.getCount(), iMax + 15);
        View view = null;
        int iMax2 = 0;
        for (int iMax3 = Math.max(0, iMax - (15 - (iMin - iMax))); iMax3 < iMin; iMax3++) {
            int itemViewType = spinnerAdapter.getItemViewType(iMax3);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            view = spinnerAdapter.getView(iMax3, view, this);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            iMax2 = Math.max(iMax2, view.getMeasuredWidth());
        }
        if (drawable == null) {
            return iMax2;
        }
        Rect rect = this.f26200N;
        drawable.getPadding(rect);
        return iMax2 + rect.left + rect.right;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            c3051s.b();
        }
    }

    @Override // android.widget.Spinner
    public int getDropDownHorizontalOffset() {
        V v5 = this.f26198L;
        return v5 != null ? v5.b() : super.getDropDownHorizontalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownVerticalOffset() {
        V v5 = this.f26198L;
        return v5 != null ? v5.m() : super.getDropDownVerticalOffset();
    }

    @Override // android.widget.Spinner
    public int getDropDownWidth() {
        return this.f26198L != null ? this.f26199M : super.getDropDownWidth();
    }

    public final V getInternalPopup() {
        return this.f26198L;
    }

    @Override // android.widget.Spinner
    public Drawable getPopupBackground() {
        V v5 = this.f26198L;
        return v5 != null ? v5.e() : super.getPopupBackground();
    }

    @Override // android.widget.Spinner
    public Context getPopupContext() {
        return this.f26194H;
    }

    @Override // android.widget.Spinner
    public CharSequence getPrompt() {
        V v5 = this.f26198L;
        return v5 != null ? v5.d() : super.getPrompt();
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    @Override // android.widget.Spinner, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        V v5 = this.f26198L;
        if (v5 == null || !v5.a()) {
            return;
        }
        v5.dismiss();
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        if (this.f26198L == null || View.MeasureSpec.getMode(i8) != Integer.MIN_VALUE) {
            return;
        }
        setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(getAdapter(), getBackground())), View.MeasureSpec.getSize(i8)), getMeasuredHeight());
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        ViewTreeObserver viewTreeObserver;
        U u7 = (U) parcelable;
        super.onRestoreInstanceState(u7.getSuperState());
        if (!u7.f26181G || (viewTreeObserver = getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserverOnGlobalLayoutListenerC3013e(this, 2));
    }

    @Override // android.widget.Spinner, android.widget.AbsSpinner, android.view.View
    public final Parcelable onSaveInstanceState() {
        U u7 = new U(super.onSaveInstanceState());
        V v5 = this.f26198L;
        u7.f26181G = v5 != null && v5.a();
        return u7;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C3038l c3038l = this.f26195I;
        if (c3038l == null || !c3038l.onTouch(this, motionEvent)) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.Spinner, android.view.View
    public final boolean performClick() {
        V v5 = this.f26198L;
        if (v5 == null) {
            return super.performClick();
        }
        if (v5.a()) {
            return true;
        }
        this.f26198L.l(getTextDirection(), getTextAlignment());
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownHorizontalOffset(int i8) {
        V v5 = this.f26198L;
        if (v5 == null) {
            super.setDropDownHorizontalOffset(i8);
        } else {
            v5.k(i8);
            v5.c(i8);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownVerticalOffset(int i8) {
        V v5 = this.f26198L;
        if (v5 != null) {
            v5.i(i8);
        } else {
            super.setDropDownVerticalOffset(i8);
        }
    }

    @Override // android.widget.Spinner
    public void setDropDownWidth(int i8) {
        if (this.f26198L != null) {
            this.f26199M = i8;
        } else {
            super.setDropDownWidth(i8);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundDrawable(Drawable drawable) {
        V v5 = this.f26198L;
        if (v5 != null) {
            v5.g(drawable);
        } else {
            super.setPopupBackgroundDrawable(drawable);
        }
    }

    @Override // android.widget.Spinner
    public void setPopupBackgroundResource(int i8) {
        setPopupBackgroundDrawable(r.h(getPopupContext(), i8));
    }

    @Override // android.widget.Spinner
    public void setPrompt(CharSequence charSequence) {
        V v5 = this.f26198L;
        if (v5 != null) {
            v5.f(charSequence);
        } else {
            super.setPrompt(charSequence);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26193G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // android.widget.AdapterView
    public void setAdapter(SpinnerAdapter spinnerAdapter) {
        if (!this.f26197K) {
            this.f26196J = spinnerAdapter;
            return;
        }
        super.setAdapter(spinnerAdapter);
        V v5 = this.f26198L;
        if (v5 != null) {
            Context context = this.f26194H;
            if (context == null) {
                context = getContext();
            }
            Resources.Theme theme = context.getTheme();
            Q q7 = new Q();
            q7.f26165a = spinnerAdapter;
            if (spinnerAdapter instanceof ListAdapter) {
                q7.f26166b = (ListAdapter) spinnerAdapter;
            }
            if (theme != null && Build.VERSION.SDK_INT >= 23 && AbstractC0551u.y(spinnerAdapter)) {
                O.a(AbstractC0551u.i(spinnerAdapter), theme);
            }
            v5.n(q7);
        }
    }
}
