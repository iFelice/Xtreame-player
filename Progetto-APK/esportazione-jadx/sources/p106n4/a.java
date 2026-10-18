package p106n4;

import J6.r;
import N.N;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import com.google.android.gms.internal.ads.Cw;
import java.util.WeakHashMap;
import p086l.C3053t;
import p121p4.b;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class a extends C3053t {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final c f27543J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f27544K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public PorterDuff.Mode f27545L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ColorStateList f27546M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Drawable f27547N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public int f27548O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f27549P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f27550Q;

    public a(Context context, AttributeSet attributeSet) {
        int resourceId;
        Drawable drawableH;
        super(context, attributeSet, R.attr.materialButtonStyle);
        TypedArray typedArrayB = b.b(context, attributeSet, p060h4.a.f25411d, R.attr.materialButtonStyle, R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f27544K = typedArrayB.getDimensionPixelSize(9, 0);
        int i8 = typedArrayB.getInt(12, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f27545L = Cw.m(i8, mode);
        this.f27546M = Cw.l(getContext(), typedArrayB, 11);
        this.f27547N = (!typedArrayB.hasValue(7) || (resourceId = typedArrayB.getResourceId(7, 0)) == 0 || (drawableH = r.h(getContext(), resourceId)) == null) ? typedArrayB.getDrawable(7) : drawableH;
        this.f27550Q = typedArrayB.getInteger(8, 1);
        this.f27548O = typedArrayB.getDimensionPixelSize(10, 0);
        c cVar = new c(this);
        this.f27543J = cVar;
        cVar.f27552b = typedArrayB.getDimensionPixelOffset(0, 0);
        cVar.f27553c = typedArrayB.getDimensionPixelOffset(1, 0);
        cVar.f27554d = typedArrayB.getDimensionPixelOffset(2, 0);
        cVar.f27555e = typedArrayB.getDimensionPixelOffset(3, 0);
        cVar.f27556f = typedArrayB.getDimensionPixelSize(6, 0);
        cVar.f27557g = typedArrayB.getDimensionPixelSize(15, 0);
        cVar.f27558h = Cw.m(typedArrayB.getInt(5, -1), mode);
        a aVar = cVar.f27551a;
        cVar.f27559i = Cw.l(aVar.getContext(), typedArrayB, 4);
        cVar.f27560j = Cw.l(aVar.getContext(), typedArrayB, 14);
        cVar.f27561k = Cw.l(aVar.getContext(), typedArrayB, 13);
        Paint paint = cVar.f27562l;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeWidth(cVar.f27557g);
        ColorStateList colorStateList = cVar.f27560j;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(aVar.getDrawableState(), 0) : 0);
        WeakHashMap weakHashMap = N.f4843a;
        int paddingStart = aVar.getPaddingStart();
        int paddingTop = aVar.getPaddingTop();
        int paddingEnd = aVar.getPaddingEnd();
        int paddingBottom = aVar.getPaddingBottom();
        aVar.setInternalBackground(cVar.a());
        aVar.setPaddingRelative(paddingStart + cVar.f27552b, paddingTop + cVar.f27554d, paddingEnd + cVar.f27553c, paddingBottom + cVar.f27555e);
        typedArrayB.recycle();
        setCompoundDrawablePadding(this.f27544K);
        b();
    }

    public final boolean a() {
        c cVar = this.f27543J;
        return (cVar == null || cVar.f27566p) ? false : true;
    }

    public final void b() {
        Drawable drawable = this.f27547N;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f27547N = drawableMutate;
            drawableMutate.setTintList(this.f27546M);
            PorterDuff.Mode mode = this.f27545L;
            if (mode != null) {
                this.f27547N.setTintMode(mode);
            }
            int intrinsicWidth = this.f27548O;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f27547N.getIntrinsicWidth();
            }
            int intrinsicHeight = this.f27548O;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f27547N.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f27547N;
            int i8 = this.f27549P;
            drawable2.setBounds(i8, 0, intrinsicWidth + i8, intrinsicHeight);
        }
        setCompoundDrawablesRelative(this.f27547N, null, null, null);
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.f27543J.f27556f;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f27547N;
    }

    public int getIconGravity() {
        return this.f27550Q;
    }

    public int getIconPadding() {
        return this.f27544K;
    }

    public int getIconSize() {
        return this.f27548O;
    }

    public ColorStateList getIconTint() {
        return this.f27546M;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f27545L;
    }

    public ColorStateList getRippleColor() {
        if (a()) {
            return this.f27543J.f27561k;
        }
        return null;
    }

    public ColorStateList getStrokeColor() {
        if (a()) {
            return this.f27543J.f27560j;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.f27543J.f27557g;
        }
        return 0;
    }

    @Override // p086l.C3053t
    public ColorStateList getSupportBackgroundTintList() {
        return a() ? this.f27543J.f27559i : super.getSupportBackgroundTintList();
    }

    @Override // p086l.C3053t
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return a() ? this.f27543J.f27558h : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // p086l.C3053t, android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        c cVar;
        super.onLayout(z7, i8, i9, i10, i11);
        if (Build.VERSION.SDK_INT != 21 || (cVar = this.f27543J) == null) {
            return;
        }
        int i12 = i11 - i9;
        int i13 = i10 - i8;
        GradientDrawable gradientDrawable = cVar.f27565o;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(cVar.f27552b, cVar.f27554d, i13 - cVar.f27553c, i12 - cVar.f27555e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i8, int i9) {
        super.onMeasure(i8, i9);
        if (this.f27547N == null || this.f27550Q != 2) {
            return;
        }
        int iMeasureText = (int) getPaint().measureText(getText().toString());
        int intrinsicWidth = this.f27548O;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f27547N.getIntrinsicWidth();
        }
        int measuredWidth = getMeasuredWidth() - iMeasureText;
        WeakHashMap weakHashMap = N.f4843a;
        int paddingEnd = ((((measuredWidth - getPaddingEnd()) - intrinsicWidth) - this.f27544K) - getPaddingStart()) / 2;
        if (getLayoutDirection() == 1) {
            paddingEnd = -paddingEnd;
        }
        if (this.f27549P != paddingEnd) {
            this.f27549P = paddingEnd;
            b();
        }
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i8) {
        if (!a()) {
            super.setBackgroundColor(i8);
            return;
        }
        GradientDrawable gradientDrawable = this.f27543J.f27563m;
        if (gradientDrawable != null) {
            gradientDrawable.setColor(i8);
        }
    }

    @Override // p086l.C3053t, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!a()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.i("MaterialButton", "Setting a custom background is not supported.");
        c cVar = this.f27543J;
        cVar.f27566p = true;
        ColorStateList colorStateList = cVar.f27559i;
        a aVar = cVar.f27551a;
        aVar.setSupportBackgroundTintList(colorStateList);
        aVar.setSupportBackgroundTintMode(cVar.f27558h);
        super.setBackgroundDrawable(drawable);
    }

    @Override // p086l.C3053t, android.view.View
    public void setBackgroundResource(int i8) {
        setBackgroundDrawable(i8 != 0 ? r.h(getContext(), i8) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(int i8) {
        if (a()) {
            c cVar = this.f27543J;
            if (cVar.f27556f != i8) {
                cVar.f27556f = i8;
                if (cVar.f27563m == null || cVar.f27564n == null || cVar.f27565o == null) {
                    return;
                }
                if (Build.VERSION.SDK_INT == 21) {
                    a aVar = cVar.f27551a;
                    float f8 = i8 + 1.0E-5f;
                    (aVar.getBackground() != null ? (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) aVar.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0) : null).setCornerRadius(f8);
                    (aVar.getBackground() != null ? (GradientDrawable) ((LayerDrawable) ((InsetDrawable) ((RippleDrawable) aVar.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1) : null).setCornerRadius(f8);
                }
                float f9 = i8 + 1.0E-5f;
                cVar.f27563m.setCornerRadius(f9);
                cVar.f27564n.setCornerRadius(f9);
                cVar.f27565o.setCornerRadius(f9);
            }
        }
    }

    public void setCornerRadiusResource(int i8) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i8));
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f27547N != drawable) {
            this.f27547N = drawable;
            b();
        }
    }

    public void setIconGravity(int i8) {
        this.f27550Q = i8;
    }

    public void setIconPadding(int i8) {
        if (this.f27544K != i8) {
            this.f27544K = i8;
            setCompoundDrawablePadding(i8);
        }
    }

    public void setIconResource(int i8) {
        setIcon(i8 != 0 ? r.h(getContext(), i8) : null);
    }

    public void setIconSize(int i8) {
        if (i8 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.f27548O != i8) {
            this.f27548O = i8;
            b();
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f27546M != colorStateList) {
            this.f27546M = colorStateList;
            b();
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f27545L != mode) {
            this.f27545L = mode;
            b();
        }
    }

    public void setIconTintResource(int i8) {
        setIconTint(r.g(getContext(), i8));
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f27543J;
            if (cVar.f27561k != colorStateList) {
                cVar.f27561k = colorStateList;
                a aVar = cVar.f27551a;
                if (aVar.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) aVar.getBackground()).setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i8) {
        if (a()) {
            setRippleColor(r.g(getContext(), i8));
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (a()) {
            c cVar = this.f27543J;
            if (cVar.f27560j != colorStateList) {
                cVar.f27560j = colorStateList;
                Paint paint = cVar.f27562l;
                a aVar = cVar.f27551a;
                paint.setColor(colorStateList != null ? colorStateList.getColorForState(aVar.getDrawableState(), 0) : 0);
                if (cVar.f27564n != null) {
                    aVar.setInternalBackground(cVar.a());
                }
            }
        }
    }

    public void setStrokeColorResource(int i8) {
        if (a()) {
            setStrokeColor(r.g(getContext(), i8));
        }
    }

    public void setStrokeWidth(int i8) {
        if (a()) {
            c cVar = this.f27543J;
            if (cVar.f27557g != i8) {
                cVar.f27557g = i8;
                cVar.f27562l.setStrokeWidth(i8);
                if (cVar.f27564n != null) {
                    cVar.f27551a.setInternalBackground(cVar.a());
                }
            }
        }
    }

    public void setStrokeWidthResource(int i8) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i8));
        }
    }

    @Override // p086l.C3053t
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        boolean zA = a();
        c cVar = this.f27543J;
        if (!zA) {
            if (cVar != null) {
                super.setSupportBackgroundTintList(colorStateList);
            }
        } else if (cVar.f27559i != colorStateList) {
            cVar.f27559i = colorStateList;
            cVar.b();
        }
    }

    @Override // p086l.C3053t
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        boolean zA = a();
        c cVar = this.f27543J;
        if (!zA) {
            if (cVar != null) {
                super.setSupportBackgroundTintMode(mode);
            }
        } else if (cVar.f27558h != mode) {
            cVar.f27558h = mode;
            cVar.b();
        }
    }
}
