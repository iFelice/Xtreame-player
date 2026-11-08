package androidx.appcompat.widget;

import E3.f;
import J6.r;
import N.C0276z;
import N.N;
import U4.b;
import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import java.util.WeakHashMap;
import p063i.a;
import p086l.AbstractC3054t0;
import p086l.B;
import p086l.C3023d0;
import p086l.b1;
import p086l.c1;
import p086l.w1;
import p096m2.u;
import p102n0.c;

/* JADX INFO: loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Drawable f8851G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public ColorStateList f8852H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public PorterDuff.Mode f8853I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f8854J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public boolean f8855K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public Drawable f8856L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public ColorStateList f8857M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public PorterDuff.Mode f8858N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public boolean f8859O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f8860P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f8861Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f8862R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f8863S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f8864T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public CharSequence f8865U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public CharSequence f8866V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public CharSequence f8867W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public CharSequence f8868a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f8869b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f8870c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final int f8871d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public float f8872e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public float f8873f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public final VelocityTracker f8874g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final int f8875h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public float f8876i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f8877j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public int f8878k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public int f8879l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public int f8880m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public int f8881n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f8882o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f8883p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f8884q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final TextPaint f8885r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final ColorStateList f8886s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public StaticLayout f8887t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public StaticLayout f8888u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final a f8889v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public ObjectAnimator f8890w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public B f8891x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final Rect f8892y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final b1 f8850z0 = new b1(0, Float.class, "thumbPos");

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public static final int[] f8849A0 = {R.attr.state_checked};

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        Typeface typeface;
        int resourceId;
        super(context, attributeSet, pe.hf.black20.R.attr.switchStyle);
        this.f8852H = null;
        this.f8853I = null;
        this.f8854J = false;
        this.f8855K = false;
        this.f8857M = null;
        this.f8858N = null;
        this.f8859O = false;
        this.f8860P = false;
        this.f8874g0 = VelocityTracker.obtain();
        this.f8884q0 = true;
        this.f8892y0 = new Rect();
        c1.a(getContext(), this);
        TextPaint textPaint = new TextPaint(1);
        this.f8885r0 = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int[] iArr = p031e.a.f24707v;
        u uVarJ = u.J(context, attributeSet, iArr, pe.hf.black20.R.attr.switchStyle, 0);
        N.l(this, context, iArr, attributeSet, (TypedArray) uVarJ.f27279I, pe.hf.black20.R.attr.switchStyle);
        Drawable drawableS = uVarJ.s(2);
        this.f8851G = drawableS;
        if (drawableS != null) {
            drawableS.setCallback(this);
        }
        Drawable drawableS2 = uVarJ.s(11);
        this.f8856L = drawableS2;
        if (drawableS2 != null) {
            drawableS2.setCallback(this);
        }
        setTextOnInternal(uVarJ.C(0));
        setTextOffInternal(uVarJ.C(1));
        this.f8869b0 = uVarJ.n(3, true);
        this.f8861Q = uVarJ.r(8, 0);
        this.f8862R = uVarJ.r(5, 0);
        this.f8863S = uVarJ.r(6, 0);
        this.f8864T = uVarJ.n(4, false);
        ColorStateList colorStateListO = uVarJ.o(9);
        if (colorStateListO != null) {
            this.f8852H = colorStateListO;
            this.f8854J = true;
        }
        PorterDuff.Mode modeC = AbstractC3054t0.c(uVarJ.x(10, -1), null);
        if (this.f8853I != modeC) {
            this.f8853I = modeC;
            this.f8855K = true;
        }
        if (this.f8854J || this.f8855K) {
            a();
        }
        ColorStateList colorStateListO2 = uVarJ.o(12);
        if (colorStateListO2 != null) {
            this.f8857M = colorStateListO2;
            this.f8859O = true;
        }
        PorterDuff.Mode modeC2 = AbstractC3054t0.c(uVarJ.x(13, -1), null);
        if (this.f8858N != modeC2) {
            this.f8858N = modeC2;
            this.f8860P = true;
        }
        if (this.f8859O || this.f8860P) {
            b();
        }
        int iZ = uVarJ.z(7, 0);
        if (iZ != 0) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iZ, p031e.a.f24708w);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0)) == 0 || (colorStateList = r.g(context, resourceId)) == null) ? typedArrayObtainStyledAttributes.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.f8886s0 = colorStateList;
            } else {
                this.f8886s0 = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f8 = dimensionPixelSize;
                if (f8 != textPaint.getTextSize()) {
                    textPaint.setTextSize(f8);
                    requestLayout();
                }
            }
            int i8 = typedArrayObtainStyledAttributes.getInt(1, -1);
            int i9 = typedArrayObtainStyledAttributes.getInt(2, -1);
            if (i8 == 1) {
                typeface = Typeface.SANS_SERIF;
            } else if (i8 != 2) {
                typeface = i8 != 3 ? null : Typeface.MONOSPACE;
            } else {
                typeface = Typeface.SERIF;
            }
            if (i9 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i9) : Typeface.create(typeface, i9);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i10 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i9;
                textPaint.setFakeBoldText((i10 & 1) != 0);
                textPaint.setTextSkewX((2 & i10) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
                Context context2 = getContext();
                a aVar = new a();
                aVar.f25495a = context2.getResources().getConfiguration().locale;
                this.f8889v0 = aVar;
            } else {
                this.f8889v0 = null;
            }
            setTextOnInternal(this.f8865U);
            setTextOffInternal(this.f8867W);
            typedArrayObtainStyledAttributes.recycle();
        }
        new C3023d0(this).f(attributeSet, pe.hf.black20.R.attr.switchStyle);
        uVarJ.P();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f8871d0 = viewConfiguration.getScaledTouchSlop();
        this.f8875h0 = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, pe.hf.black20.R.attr.switchStyle);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private B getEmojiTextViewHelper() {
        if (this.f8891x0 == null) {
            this.f8891x0 = new B(this);
        }
        return this.f8891x0;
    }

    private boolean getTargetCheckedState() {
        return this.f8876i0 > 0.5f;
    }

    private int getThumbOffset() {
        boolean z7 = w1.f26407a;
        return (int) (((getLayoutDirection() == 1 ? 1.0f - this.f8876i0 : this.f8876i0) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f8856L;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f8892y0;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f8851G;
        Rect rectB = drawable2 != null ? AbstractC3054t0.b(drawable2) : AbstractC3054t0.f26386c;
        return ((((this.f8877j0 - this.f8879l0) - rect.left) - rect.right) - rectB.left) - rectB.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f8867W = charSequence;
        B emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodJ0 = ((b) emojiTextViewHelper.f26065b.f24988H).j0(this.f8889v0);
        if (transformationMethodJ0 != null) {
            charSequence = transformationMethodJ0.getTransformation(charSequence, this);
        }
        this.f8868a0 = charSequence;
        this.f8888u0 = null;
        if (this.f8869b0) {
            c();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f8865U = charSequence;
        B emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodJ0 = ((b) emojiTextViewHelper.f26065b.f24988H).j0(this.f8889v0);
        if (transformationMethodJ0 != null) {
            charSequence = transformationMethodJ0.getTransformation(charSequence, this);
        }
        this.f8866V = charSequence;
        this.f8887t0 = null;
        if (this.f8869b0) {
            c();
        }
    }

    public final void a() {
        Drawable drawable = this.f8851G;
        if (drawable != null) {
            if (this.f8854J || this.f8855K) {
                Drawable drawableMutate = c.q(drawable).mutate();
                this.f8851G = drawableMutate;
                if (this.f8854J) {
                    drawableMutate.setTintList(this.f8852H);
                }
                if (this.f8855K) {
                    this.f8851G.setTintMode(this.f8853I);
                }
                if (this.f8851G.isStateful()) {
                    this.f8851G.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f8856L;
        if (drawable != null) {
            if (this.f8859O || this.f8860P) {
                Drawable drawableMutate = c.q(drawable).mutate();
                this.f8856L = drawableMutate;
                if (this.f8859O) {
                    drawableMutate.setTintList(this.f8857M);
                }
                if (this.f8860P) {
                    this.f8856L.setTintMode(this.f8858N);
                }
                if (this.f8856L.isStateful()) {
                    this.f8856L.setState(getDrawableState());
                }
            }
        }
    }

    public final void c() {
        if (((b) this.f8891x0.f26065b.f24988H).d0()) {
            Object obj = U.a.f6622a;
        }
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i8;
        int i9;
        int i10 = this.f8880m0;
        int i11 = this.f8881n0;
        int i12 = this.f8882o0;
        int i13 = this.f8883p0;
        int thumbOffset = getThumbOffset() + i10;
        Drawable drawable = this.f8851G;
        Rect rectB = drawable != null ? AbstractC3054t0.b(drawable) : AbstractC3054t0.f26386c;
        Drawable drawable2 = this.f8856L;
        Rect rect = this.f8892y0;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i14 = rect.left;
            thumbOffset += i14;
            if (rectB != null) {
                int i15 = rectB.left;
                if (i15 > i14) {
                    i10 += i15 - i14;
                }
                int i16 = rectB.top;
                int i17 = rect.top;
                i8 = i16 > i17 ? (i16 - i17) + i11 : i11;
                int i18 = rectB.right;
                int i19 = rect.right;
                if (i18 > i19) {
                    i12 -= i18 - i19;
                }
                int i20 = rectB.bottom;
                int i21 = rect.bottom;
                if (i20 > i21) {
                    i9 = i13 - (i20 - i21);
                }
                this.f8856L.setBounds(i10, i8, i12, i9);
            } else {
                i8 = i11;
            }
            i9 = i13;
            this.f8856L.setBounds(i10, i8, i12, i9);
        }
        Drawable drawable3 = this.f8851G;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i22 = thumbOffset - rect.left;
            int i23 = thumbOffset + this.f8879l0 + rect.right;
            this.f8851G.setBounds(i22, i11, i23, i13);
            Drawable background = getBackground();
            if (background != null) {
                background.setHotspotBounds(i22, i11, i23, i13);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f8, float f9) {
        super.drawableHotspotChanged(f8, f9);
        Drawable drawable = this.f8851G;
        if (drawable != null) {
            drawable.setHotspot(f8, f9);
        }
        Drawable drawable2 = this.f8856L;
        if (drawable2 != null) {
            drawable2.setHotspot(f8, f9);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f8851G;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f8856L;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        boolean z7 = w1.f26407a;
        if (getLayoutDirection() != 1) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f8877j0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f8863S : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        boolean z7 = w1.f26407a;
        if (getLayoutDirection() == 1) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f8877j0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f8863S : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f8869b0;
    }

    public boolean getSplitTrack() {
        return this.f8864T;
    }

    public int getSwitchMinWidth() {
        return this.f8862R;
    }

    public int getSwitchPadding() {
        return this.f8863S;
    }

    public CharSequence getTextOff() {
        return this.f8867W;
    }

    public CharSequence getTextOn() {
        return this.f8865U;
    }

    public Drawable getThumbDrawable() {
        return this.f8851G;
    }

    public final float getThumbPosition() {
        return this.f8876i0;
    }

    public int getThumbTextPadding() {
        return this.f8861Q;
    }

    public ColorStateList getThumbTintList() {
        return this.f8852H;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f8853I;
    }

    public Drawable getTrackDrawable() {
        return this.f8856L;
    }

    public ColorStateList getTrackTintList() {
        return this.f8857M;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f8858N;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f8851G;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f8856L;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.f8890w0;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.f8890w0.end();
        this.f8890w0 = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i8) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i8 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f8849A0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f8856L;
        Rect rect = this.f8892y0;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i8 = this.f8881n0;
        int i9 = this.f8883p0;
        int i10 = i8 + rect.top;
        int i11 = i9 - rect.bottom;
        Drawable drawable2 = this.f8851G;
        if (drawable != null) {
            if (!this.f8864T || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                Rect rectB = AbstractC3054t0.b(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectB.left;
                rect.right -= rectB.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f8887t0 : this.f8888u0;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f8886s0;
            TextPaint textPaint = this.f8885r0;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i10 + i11) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            CharSequence charSequence = isChecked() ? this.f8865U : this.f8867W;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            CharSequence text = accessibilityNodeInfo.getText();
            if (TextUtils.isEmpty(text)) {
                accessibilityNodeInfo.setText(charSequence);
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(text);
            sb.append(' ');
            sb.append(charSequence);
            accessibilityNodeInfo.setText(sb);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z7, i8, i9, i10, i11);
        int iMax2 = 0;
        if (this.f8851G != null) {
            Drawable drawable = this.f8856L;
            Rect rect = this.f8892y0;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectB = AbstractC3054t0.b(this.f8851G);
            iMax = Math.max(0, rectB.left - rect.left);
            iMax2 = Math.max(0, rectB.right - rect.right);
        } else {
            iMax = 0;
        }
        boolean z8 = w1.f26407a;
        if (getLayoutDirection() == 1) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.f8877j0 + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.f8877j0) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i12 = this.f8878k0;
            int i13 = height2 - (i12 / 2);
            height = i12 + i13;
            paddingTop = i13;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.f8878k0 + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.f8878k0;
        }
        this.f8880m0 = paddingLeft;
        this.f8881n0 = paddingTop;
        this.f8883p0 = height;
        this.f8882o0 = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i8, int i9) {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        int intrinsicHeight2 = 0;
        if (this.f8869b0) {
            StaticLayout staticLayout = this.f8887t0;
            TextPaint textPaint = this.f8885r0;
            if (staticLayout == null) {
                CharSequence charSequence = this.f8866V;
                this.f8887t0 = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f8888u0 == null) {
                CharSequence charSequence2 = this.f8868a0;
                this.f8888u0 = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f8851G;
        Rect rect = this.f8892y0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f8851G.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f8851G.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.f8869b0) {
            iMax = (this.f8861Q * 2) + Math.max(this.f8887t0.getWidth(), this.f8888u0.getWidth());
        } else {
            iMax = 0;
        }
        this.f8879l0 = Math.max(iMax, intrinsicWidth);
        Drawable drawable2 = this.f8856L;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f8856L.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        Drawable drawable3 = this.f8851G;
        if (drawable3 != null) {
            Rect rectB = AbstractC3054t0.b(drawable3);
            iMax2 = Math.max(iMax2, rectB.left);
            iMax3 = Math.max(iMax3, rectB.right);
        }
        int iMax4 = this.f8884q0 ? Math.max(this.f8862R, (this.f8879l0 * 2) + iMax2 + iMax3) : this.f8862R;
        int iMax5 = Math.max(intrinsicHeight2, intrinsicHeight);
        this.f8877j0 = iMax4;
        this.f8878k0 = iMax5;
        super.onMeasure(i8, i9);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        CharSequence charSequence = isChecked() ? this.f8865U : this.f8867W;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0092  */
    /* JADX WARN: Code duplicated, block: B:42:0x0097  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:50:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:52:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:64:0x00df  */
    /* JADX WARN: Code duplicated, block: B:67:0x00f6  */
    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        boolean zIsChecked;
        boolean targetCheckedState;
        float xVelocity;
        float f8;
        VelocityTracker velocityTracker = this.f8874g0;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i8 = this.f8871d0;
        if (actionMasked != 0) {
            float f9 = 0.0f;
            if (actionMasked == 1) {
                if (this.f8870c0 == 2) {
                    this.f8870c0 = 0;
                    if (motionEvent.getAction() == 1 || !isEnabled()) {
                        z7 = false;
                    } else {
                        z7 = true;
                    }
                    zIsChecked = isChecked();
                    if (z7) {
                        velocityTracker.computeCurrentVelocity(1000);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.f8875h0) {
                            boolean z8 = w1.f26407a;
                            targetCheckedState = getLayoutDirection() == 1 ? xVelocity > 0.0f : xVelocity < 0.0f;
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f8870c0 = 0;
                velocityTracker.clear();
            } else if (actionMasked == 2) {
                int i9 = this.f8870c0;
                if (i9 == 1) {
                    float x7 = motionEvent.getX();
                    float y7 = motionEvent.getY();
                    if (Math.abs(x7 - this.f8872e0) > i8 || Math.abs(y7 - this.f8873f0) > i8) {
                        this.f8870c0 = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.f8872e0 = x7;
                        this.f8873f0 = y7;
                        return true;
                    }
                } else if (i9 == 2) {
                    float x8 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f10 = x8 - this.f8872e0;
                    if (thumbScrollRange != 0) {
                        f8 = f10 / thumbScrollRange;
                    } else {
                        f8 = f10 > 0.0f ? 1.0f : -1.0f;
                    }
                    boolean z9 = w1.f26407a;
                    if (getLayoutDirection() == 1) {
                        f8 = -f8;
                    }
                    float f11 = this.f8876i0;
                    float f12 = f8 + f11;
                    if (f12 >= 0.0f) {
                        f9 = f12 > 1.0f ? 1.0f : f12;
                    }
                    if (f9 != f11) {
                        this.f8872e0 = x8;
                        setThumbPosition(f9);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
                if (this.f8870c0 == 2) {
                    this.f8870c0 = 0;
                    if (motionEvent.getAction() == 1) {
                        z7 = false;
                    } else {
                        z7 = false;
                    }
                    zIsChecked = isChecked();
                    if (z7) {
                        velocityTracker.computeCurrentVelocity(1000);
                        xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > this.f8875h0) {
                            boolean z10 = w1.f26407a;
                            if (getLayoutDirection() == 1) {
                            }
                        } else {
                            targetCheckedState = getTargetCheckedState();
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain2 = MotionEvent.obtain(motionEvent);
                    motionEventObtain2.setAction(3);
                    super.onTouchEvent(motionEventObtain2);
                    motionEventObtain2.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f8870c0 = 0;
                velocityTracker.clear();
            }
        } else {
            float x9 = motionEvent.getX();
            float y8 = motionEvent.getY();
            if (isEnabled() && this.f8851G != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.f8851G;
                Rect rect = this.f8892y0;
                drawable.getPadding(rect);
                int i10 = this.f8881n0 - i8;
                int i11 = (this.f8880m0 + thumbOffset) - i8;
                int i12 = this.f8879l0 + i11 + rect.left + rect.right + i8;
                int i13 = this.f8883p0 + i8;
                if (x9 > i11 && x9 < i12 && y8 > i10 && y8 < i13) {
                    this.f8870c0 = 1;
                    this.f8872e0 = x9;
                    this.f8873f0 = y8;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z7) {
        super.setChecked(z7);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            if (Build.VERSION.SDK_INT >= 30) {
                Object string = this.f8865U;
                if (string == null) {
                    string = getResources().getString(pe.hf.black20.R.string.abc_capital_on);
                }
                WeakHashMap weakHashMap = N.f4843a;
                new C0276z(pe.hf.black20.R.id.tag_state_description, 64, 30, 2).f(this, string);
            }
        } else if (Build.VERSION.SDK_INT >= 30) {
            Object string2 = this.f8867W;
            if (string2 == null) {
                string2 = getResources().getString(pe.hf.black20.R.string.abc_capital_off);
            }
            WeakHashMap weakHashMap2 = N.f4843a;
            new C0276z(pe.hf.black20.R.id.tag_state_description, 64, 30, 2).f(this, string2);
        }
        if (getWindowToken() == null || !isLaidOut()) {
            ObjectAnimator objectAnimator = this.f8890w0;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this, f8850z0, zIsChecked ? 1.0f : 0.0f);
        this.f8890w0 = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        this.f8890w0.setAutoCancel(true);
        this.f8890w0.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(f.E(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
        setTextOnInternal(this.f8865U);
        setTextOffInternal(this.f8867W);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z7) {
        this.f8884q0 = z7;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z7) {
        if (this.f8869b0 != z7) {
            this.f8869b0 = z7;
            requestLayout();
            if (z7) {
                c();
            }
        }
    }

    public void setSplitTrack(boolean z7) {
        this.f8864T = z7;
        invalidate();
    }

    public void setSwitchMinWidth(int i8) {
        this.f8862R = i8;
        requestLayout();
    }

    public void setSwitchPadding(int i8) {
        this.f8863S = i8;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f8885r0;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f8867W;
        if (string == null) {
            string = getResources().getString(pe.hf.black20.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = N.f4843a;
        new C0276z(pe.hf.black20.R.id.tag_state_description, 64, 30, 2).f(this, string);
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (!isChecked() || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Object string = this.f8865U;
        if (string == null) {
            string = getResources().getString(pe.hf.black20.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = N.f4843a;
        new C0276z(pe.hf.black20.R.id.tag_state_description, 64, 30, 2).f(this, string);
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f8851G;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f8851G = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f8) {
        this.f8876i0 = f8;
        invalidate();
    }

    public void setThumbResource(int i8) {
        setThumbDrawable(r.h(getContext(), i8));
    }

    public void setThumbTextPadding(int i8) {
        this.f8861Q = i8;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f8852H = colorStateList;
        this.f8854J = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f8853I = mode;
        this.f8855K = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f8856L;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f8856L = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i8) {
        setTrackDrawable(r.h(getContext(), i8));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f8857M = colorStateList;
        this.f8859O = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f8858N = mode;
        this.f8860P = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f8851G || drawable == this.f8856L;
    }
}
