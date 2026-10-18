package p086l;

import A0.O;
import E3.f;
import J6.r;
import L.a;
import Q.k;
import Q3.b;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import p039f.S;
import p096m2.e;

/* JADX INFO: renamed from: l.h0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3031h0 extends TextView implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26259G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3023d0 f26260H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final e f26261I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public B f26262J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f26263K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public S f26264L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Future f26265M;

    public C3031h0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private B getEmojiTextViewHelper() {
        if (this.f26262J == null) {
            this.f26262J = new B(this);
        }
        return this.f26262J;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (w1.f26409c) {
            return super.getAutoSizeMaxTextSize();
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            return Math.round(c3023d0.f26242i.f26287e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (w1.f26409c) {
            return super.getAutoSizeMinTextSize();
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            return Math.round(c3023d0.f26242i.f26286d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (w1.f26409c) {
            return super.getAutoSizeStepGranularity();
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            return Math.round(c3023d0.f26242i.f26285c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (w1.f26409c) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C3023d0 c3023d0 = this.f26260H;
        return c3023d0 != null ? c3023d0.f26242i.f26288f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (w1.f26409c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            return c3023d0.f26242i.f26283a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public InterfaceC3025e0 getSuperCaller() {
        if (this.f26264L == null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 34) {
                this.f26264L = new C3029g0(this);
            } else if (i8 >= 28) {
                this.f26264L = new C3027f0(this);
            } else if (i8 >= 26) {
                this.f26264L = new S(this, 6);
            }
        }
        return this.f26264L;
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26260H.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26260H.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        m();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        e eVar;
        if (Build.VERSION.SDK_INT >= 28 || (eVar = this.f26261I) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) eVar.f27216I;
        return textClassifier == null ? X.a((TextView) eVar.f27215H) : textClassifier;
    }

    public a getTextMetricsParamsCompat() {
        return f.q(this);
    }

    public final void m() {
        Future future = this.f26265M;
        if (future == null) {
            return;
        }
        try {
            this.f26265M = null;
            O.I(future.get());
            if (Build.VERSION.SDK_INT >= 29) {
                throw null;
            }
            f.q(this);
            throw null;
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f26260H.getClass();
        C3023d0.h(this, inputConnectionOnCreateInputConnection, editorInfo);
        b.q(this, editorInfo, inputConnectionOnCreateInputConnection);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        int i8 = Build.VERSION.SDK_INT;
        if (i8 < 30 || i8 >= 33 || !onCheckIsTextEditor()) {
            return;
        }
        ((InputMethodManager) getContext().getSystemService("input_method")).isActive(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 == null || w1.f26409c) {
            return;
        }
        c3023d0.f26242i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i8, int i9) {
        m();
        super.onMeasure(i8, i9);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        super.onTextChanged(charSequence, i8, i9, i10);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 == null || w1.f26409c) {
            return;
        }
        C3041m0 c3041m0 = c3023d0.f26242i;
        if (c3041m0.f()) {
            c3041m0.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i8, int i9, int i10, int i11) {
        if (w1.f26409c) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i8, i9, i10, i11);
            return;
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.i(i8, i9, i10, i11);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i8) {
        if (w1.f26409c) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i8);
            return;
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.j(iArr, i8);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i8) {
        if (w1.f26409c) {
            super.setAutoSizeTextTypeWithDefaults(i8);
            return;
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.k(i8);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(f.E(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i8) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().z(i8);
        } else {
            f.z(this, i8);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i8) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().t(i8);
        } else {
            f.A(this, i8);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i8) {
        f.B(this, i8);
    }

    public void setPrecomputedText(L.b bVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        f.q(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26259G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26260H;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26260H;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i8) {
        super.setTextAppearance(context, i8);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.g(context, i8);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        e eVar;
        if (Build.VERSION.SDK_INT >= 28 || (eVar = this.f26261I) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            eVar.f27216I = textClassifier;
        }
    }

    public void setTextFuture(Future<L.b> future) {
        this.f26265M = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(a aVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = aVar.f4600b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i8 = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i8 = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i8 = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i8 = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i8 = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i8 = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i8 = 7;
            }
        }
        setTextDirection(i8);
        int i9 = Build.VERSION.SDK_INT;
        TextPaint textPaint = aVar.f4599a;
        if (i9 >= 23) {
            getPaint().set(textPaint);
            H.n(this, aVar.f4601c);
            H.r(this, aVar.f4602d);
        } else {
            float textScaleX = textPaint.getTextScaleX();
            getPaint().set(textPaint);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i8, float f8) {
        boolean z7 = w1.f26409c;
        if (z7) {
            super.setTextSize(i8, f8);
            return;
        }
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 == null || z7) {
            return;
        }
        C3041m0 c3041m0 = c3023d0.f26242i;
        if (c3041m0.f()) {
            return;
        }
        c3041m0.g(i8, f8);
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i8) {
        Typeface typefaceCreate;
        if (this.f26263K) {
            return;
        }
        if (typeface == null || i8 <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            S s7 = G.e.f3283a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i8);
        }
        this.f26263K = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i8);
        } finally {
            this.f26263K = false;
        }
    }

    @Override // android.widget.TextView
    public final void setLineHeight(int i8, float f8) {
        int i9 = Build.VERSION.SDK_INT;
        if (i9 >= 34) {
            getSuperCaller().D(i8, f8);
        } else if (i9 >= 34) {
            e7.a.n(this, i8, f8);
        } else {
            f.B(this, Math.round(TypedValue.applyDimension(i8, f8, getResources().getDisplayMetrics())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3031h0(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        d1.a(context);
        this.f26263K = false;
        this.f26264L = null;
        c1.a(getContext(), this);
        C3051s c3051s = new C3051s(this);
        this.f26259G = c3051s;
        c3051s.f(attributeSet, i8);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26260H = c3023d0;
        c3023d0.f(attributeSet, i8);
        c3023d0.b();
        this.f26261I = new e((TextView) this);
        getEmojiTextViewHelper().b(attributeSet, i8);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i8, int i9, int i10, int i11) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i8 != 0 ? r.h(context, i8) : null, i9 != 0 ? r.h(context, i9) : null, i10 != 0 ? r.h(context, i10) : null, i11 != 0 ? r.h(context, i11) : null);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i8, int i9, int i10, int i11) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i8 != 0 ? r.h(context, i8) : null, i9 != 0 ? r.h(context, i9) : null, i10 != 0 ? r.h(context, i10) : null, i11 != 0 ? r.h(context, i11) : null);
        C3023d0 c3023d0 = this.f26260H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }
}
