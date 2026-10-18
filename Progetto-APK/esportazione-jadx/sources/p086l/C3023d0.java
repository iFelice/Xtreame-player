package p086l;

import E3.f;
import N.N;
import P.b;
import P.c;
import Q.k;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import p000a.r;
import p016c.g;
import p031e.a;
import p096m2.u;

/* JADX INFO: renamed from: l.d0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3023d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f26234a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public e1 f26235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public e1 f26236c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public e1 f26237d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public e1 f26238e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public e1 f26239f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public e1 f26240g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public e1 f26241h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C3041m0 f26242i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f26243j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f26244k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Typeface f26245l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f26246m;

    public C3023d0(TextView textView) {
        this.f26234a = textView;
        this.f26242i = new C3041m0(textView);
    }

    public static e1 c(Context context, C3063y c3063y, int i8) {
        ColorStateList colorStateListI;
        synchronized (c3063y) {
            colorStateListI = c3063y.f26420a.i(context, i8);
        }
        if (colorStateListI == null) {
            return null;
        }
        e1 e1Var = new e1(0);
        e1Var.f26252c = true;
        e1Var.f26253d = colorStateListI;
        return e1Var;
    }

    public static void h(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i8 >= 30) {
            b.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i8 >= 30) {
            b.a(editorInfo, text);
            return;
        }
        int i9 = editorInfo.initialSelStart;
        int i10 = editorInfo.initialSelEnd;
        int i11 = i9 > i10 ? i10 : i9;
        if (i9 <= i10) {
            i9 = i10;
        }
        int length = text.length();
        if (i11 < 0 || i9 > length) {
            c.a(editorInfo, null, 0, 0);
            return;
        }
        int i12 = editorInfo.inputType & 4095;
        if (i12 == 129 || i12 == 225 || i12 == 18) {
            c.a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            c.a(editorInfo, text, i11, i9);
            return;
        }
        int i13 = i9 - i11;
        int i14 = i13 > 1024 ? 0 : i13;
        int i15 = 2048 - i14;
        int iMin = Math.min(text.length() - i9, i15 - Math.min(i11, (int) (((double) i15) * 0.8d)));
        int iMin2 = Math.min(i11, i15 - iMin);
        int i16 = i11 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i16))) {
            i16++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i9 + iMin) - 1))) {
            iMin--;
        }
        int i17 = iMin2 + i14;
        c.a(editorInfo, i14 != i13 ? TextUtils.concat(text.subSequence(i16, i16 + iMin2), text.subSequence(i9, iMin + i9)) : text.subSequence(i16, i17 + iMin + i16), iMin2, i17);
    }

    public final void a(Drawable drawable, e1 e1Var) {
        if (drawable == null || e1Var == null) {
            return;
        }
        C3063y.d(drawable, e1Var, this.f26234a.getDrawableState());
    }

    public final void b() {
        e1 e1Var = this.f26235b;
        TextView textView = this.f26234a;
        if (e1Var != null || this.f26236c != null || this.f26237d != null || this.f26238e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f26235b);
            a(compoundDrawables[1], this.f26236c);
            a(compoundDrawables[2], this.f26237d);
            a(compoundDrawables[3], this.f26238e);
        }
        if (this.f26239f == null && this.f26240g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f26239f);
        a(compoundDrawablesRelative[2], this.f26240g);
    }

    public final ColorStateList d() {
        e1 e1Var = this.f26241h;
        if (e1Var != null) {
            return (ColorStateList) e1Var.f26253d;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        e1 e1Var = this.f26241h;
        if (e1Var != null) {
            return (PorterDuff.Mode) e1Var.f26254e;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:270:0x0458  */
    /* JADX WARN: Code duplicated, block: B:272:0x045d  */
    /* JADX WARN: Code duplicated, block: B:275:0x0466 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:276:0x0468  */
    /* JADX WARN: Code duplicated, block: B:277:0x046d  */
    /* JADX WARN: Code duplicated, block: B:279:0x0473  */
    /* JADX WARN: Code duplicated, block: B:280:0x0477  */
    /* JADX WARN: Code duplicated, block: B:283:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x0101  */
    /* JADX WARN: Code duplicated, block: B:47:0x0108  */
    /* JADX WARN: Code duplicated, block: B:52:0x011b  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void f(AttributeSet attributeSet, int i8) {
        boolean zN;
        String strA;
        boolean z7;
        ColorStateList colorStateListO;
        ColorStateList colorStateListO2;
        ColorStateList colorStateListO3;
        String strA2;
        C3063y c3063y;
        int i9;
        int i10;
        float fApplyDimension;
        int i11;
        float fR;
        int i12;
        int i13;
        int resourceId;
        int i14;
        int i15;
        int i16;
        TextView textView = this.f26234a;
        Context context = textView.getContext();
        C3063y c3063yA = C3063y.a();
        int[] iArr = a.f24693h;
        u uVarJ = u.J(context, attributeSet, iArr, i8, 0);
        N.l(textView, textView.getContext(), iArr, attributeSet, (TypedArray) uVarJ.f27279I, i8);
        int iZ = uVarJ.z(0, -1);
        if (uVarJ.F(3)) {
            this.f26235b = c(context, c3063yA, uVarJ.z(3, 0));
        }
        if (uVarJ.F(1)) {
            this.f26236c = c(context, c3063yA, uVarJ.z(1, 0));
        }
        if (uVarJ.F(4)) {
            this.f26237d = c(context, c3063yA, uVarJ.z(4, 0));
        }
        if (uVarJ.F(2)) {
            this.f26238e = c(context, c3063yA, uVarJ.z(2, 0));
        }
        if (uVarJ.F(5)) {
            this.f26239f = c(context, c3063yA, uVarJ.z(5, 0));
        }
        if (uVarJ.F(6)) {
            this.f26240g = c(context, c3063yA, uVarJ.z(6, 0));
        }
        uVarJ.P();
        boolean z8 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        int[] iArr2 = a.f24708w;
        if (iZ != -1) {
            u uVar = new u(context, context.obtainStyledAttributes(iZ, iArr2));
            if (z8 || !uVar.F(14)) {
                zN = false;
                z7 = false;
            } else {
                zN = uVar.n(14, false);
                z7 = true;
            }
            n(context, uVar);
            int i17 = Build.VERSION.SDK_INT;
            if (i17 < 23) {
                colorStateListO = uVar.F(3) ? uVar.o(3) : null;
                if (uVar.F(4)) {
                    colorStateListO2 = uVar.o(4);
                    i16 = 5;
                } else {
                    i16 = 5;
                    colorStateListO2 = null;
                }
                if (uVar.F(i16)) {
                    colorStateListO3 = uVar.o(i16);
                    i14 = 15;
                } else {
                    i14 = 15;
                }
                if (uVar.F(i14)) {
                    strA2 = uVar.A(i14);
                    i15 = 26;
                } else {
                    i15 = 26;
                    strA2 = null;
                }
                if (i17 >= i15 || !uVar.F(13)) {
                    strA = null;
                } else {
                    strA = uVar.A(13);
                }
                uVar.P();
            } else {
                i14 = 15;
                colorStateListO = null;
                colorStateListO2 = null;
            }
            colorStateListO3 = null;
            if (uVar.F(i14)) {
                strA2 = uVar.A(i14);
                i15 = 26;
            } else {
                i15 = 26;
                strA2 = null;
            }
            if (i17 >= i15) {
                strA = null;
            } else {
                strA = null;
            }
            uVar.P();
        } else {
            zN = false;
            strA = null;
            z7 = false;
            colorStateListO = null;
            colorStateListO2 = null;
            colorStateListO3 = null;
            strA2 = null;
        }
        u uVar2 = new u(context, context.obtainStyledAttributes(attributeSet, iArr2, i8, 0));
        if (!z8 && uVar2.F(14)) {
            zN = uVar2.n(14, false);
            z7 = true;
        }
        int i18 = Build.VERSION.SDK_INT;
        if (i18 < 23) {
            if (uVar2.F(3)) {
                colorStateListO = uVar2.o(3);
            }
            if (uVar2.F(4)) {
                colorStateListO2 = uVar2.o(4);
            }
            if (uVar2.F(5)) {
                colorStateListO3 = uVar2.o(5);
            }
        }
        ColorStateList colorStateList = colorStateListO;
        ColorStateList colorStateList2 = colorStateListO2;
        ColorStateList colorStateList3 = colorStateListO3;
        if (uVar2.F(15)) {
            strA2 = uVar2.A(15);
        }
        String str = strA2;
        if (i18 >= 26 && uVar2.F(13)) {
            strA = uVar2.A(13);
        }
        if (i18 < 28 || !uVar2.F(0)) {
            c3063y = c3063yA;
        } else {
            c3063y = c3063yA;
            if (uVar2.r(0, -1) == 0) {
                textView.setTextSize(0, 0.0f);
            }
        }
        n(context, uVar2);
        uVar2.P();
        if (colorStateList != null) {
            textView.setTextColor(colorStateList);
        }
        if (colorStateList2 != null) {
            textView.setHintTextColor(colorStateList2);
        }
        if (colorStateList3 != null) {
            textView.setLinkTextColor(colorStateList3);
        }
        if (!z8 && z7) {
            textView.setAllCaps(zN);
        }
        Typeface typeface = this.f26245l;
        if (typeface != null) {
            if (this.f26244k == -1) {
                textView.setTypeface(typeface, this.f26243j);
            } else {
                textView.setTypeface(typeface);
            }
        }
        if (strA != null) {
            AbstractC3019b0.d(textView, strA);
        }
        if (str == null) {
            i9 = 0;
        } else if (i18 >= 24) {
            AbstractC3017a0.b(textView, AbstractC3017a0.a(str));
            i9 = 0;
        } else {
            i9 = 0;
            textView.setTextLocale(Z.a(str.split(",")[0]));
        }
        int[] iArr3 = a.f24694i;
        C3041m0 c3041m0 = this.f26242i;
        Context context2 = c3041m0.f26292j;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr3, i8, i9);
        TextView textView2 = c3041m0.f26291i;
        N.l(textView2, textView2.getContext(), iArr3, attributeSet, typedArrayObtainStyledAttributes, i8);
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            c3041m0.f26283a = typedArrayObtainStyledAttributes.getInt(5, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(4) ? typedArrayObtainStyledAttributes.getDimension(4, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            fApplyDimension = typedArrayObtainStyledAttributes.getDimension(2, -1.0f);
            i10 = 1;
        } else {
            i10 = 1;
            fApplyDimension = -1.0f;
        }
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(i10) ? typedArrayObtainStyledAttributes.getDimension(i10, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(3) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            int length = typedArrayObtainTypedArray.length();
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i19 = 0; i19 < length; i19++) {
                    iArr4[i19] = typedArrayObtainTypedArray.getDimensionPixelSize(i19, -1);
                }
                c3041m0.f26288f = C3041m0.b(iArr4);
                c3041m0.i();
            }
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!c3041m0.j()) {
            c3041m0.f26283a = 0;
        } else if (c3041m0.f26283a == 1) {
            if (!c3041m0.f26289g) {
                DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                if (fApplyDimension == -1.0f) {
                    i13 = 2;
                    fApplyDimension = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                } else {
                    i13 = 2;
                }
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(i13, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                c3041m0.k(fApplyDimension, dimension2, dimension);
            }
            c3041m0.h();
        }
        if (w1.f26409c && c3041m0.f26283a != 0) {
            int[] iArr5 = c3041m0.f26288f;
            if (iArr5.length > 0) {
                if (AbstractC3019b0.a(textView) != -1.0f) {
                    AbstractC3019b0.b(textView, Math.round(c3041m0.f26286d), Math.round(c3041m0.f26287e), Math.round(c3041m0.f26285c), 0);
                } else {
                    AbstractC3019b0.c(textView, iArr5, 0);
                }
            }
        }
        u uVar3 = new u(context, context.obtainStyledAttributes(attributeSet, iArr3));
        int iZ2 = uVar3.z(8, -1);
        C3063y c3063y2 = c3063y;
        Drawable drawableB = iZ2 != -1 ? c3063y2.b(context, iZ2) : null;
        int iZ3 = uVar3.z(13, -1);
        Drawable drawableB2 = iZ3 != -1 ? c3063y2.b(context, iZ3) : null;
        int iZ4 = uVar3.z(9, -1);
        Drawable drawableB3 = iZ4 != -1 ? c3063y2.b(context, iZ4) : null;
        int iZ5 = uVar3.z(6, -1);
        Drawable drawableB4 = iZ5 != -1 ? c3063y2.b(context, iZ5) : null;
        int iZ6 = uVar3.z(10, -1);
        Drawable drawableB5 = iZ6 != -1 ? c3063y2.b(context, iZ6) : null;
        int iZ7 = uVar3.z(7, -1);
        Drawable drawableB6 = iZ7 != -1 ? c3063y2.b(context, iZ7) : null;
        if (drawableB5 != null || drawableB6 != null) {
            Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
            if (drawableB5 == null) {
                drawableB5 = compoundDrawablesRelative[0];
            }
            if (drawableB2 == null) {
                drawableB2 = compoundDrawablesRelative[1];
            }
            if (drawableB6 == null) {
                drawableB6 = compoundDrawablesRelative[2];
            }
            if (drawableB4 == null) {
                drawableB4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawableB5, drawableB2, drawableB6, drawableB4);
        } else if (drawableB != null || drawableB2 != null || drawableB3 != null || drawableB4 != null) {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            Drawable drawable = compoundDrawablesRelative2[0];
            if (drawable == null && compoundDrawablesRelative2[2] == null) {
                Drawable[] compoundDrawables = textView.getCompoundDrawables();
                if (drawableB == null) {
                    drawableB = compoundDrawables[0];
                }
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawables[1];
                }
                if (drawableB3 == null) {
                    drawableB3 = compoundDrawables[2];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawables[3];
                }
                textView.setCompoundDrawablesWithIntrinsicBounds(drawableB, drawableB2, drawableB3, drawableB4);
            } else {
                if (drawableB2 == null) {
                    drawableB2 = compoundDrawablesRelative2[1];
                }
                if (drawableB4 == null) {
                    drawableB4 = compoundDrawablesRelative2[3];
                }
                textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawableB2, compoundDrawablesRelative2[2], drawableB4);
            }
        }
        if (uVar3.F(11)) {
            ColorStateList colorStateListO4 = uVar3.o(11);
            if (Build.VERSION.SDK_INT >= 24) {
                H.o(textView, colorStateListO4);
            } else if (textView instanceof k) {
                ((k) textView).setSupportCompoundDrawablesTintList(colorStateListO4);
            }
        }
        if (uVar3.F(12)) {
            PorterDuff.Mode modeC = AbstractC3054t0.c(uVar3.x(12, -1), null);
            if (Build.VERSION.SDK_INT >= 24) {
                H.p(textView, modeC);
            } else if (textView instanceof k) {
                ((k) textView).setSupportCompoundDrawablesTintMode(modeC);
            }
        }
        int iR = uVar3.r(15, -1);
        int iR2 = uVar3.r(18, -1);
        if (uVar3.F(19)) {
            TypedValue typedValuePeekValue = ((TypedArray) uVar3.f27279I).peekValue(19);
            if (typedValuePeekValue == null || typedValuePeekValue.type != 5) {
                i11 = -1;
                fR = uVar3.r(19, -1);
            } else {
                int i20 = typedValuePeekValue.data;
                int i21 = i20 & 15;
                fR = TypedValue.complexToFloat(i20);
                i12 = i21;
                i11 = -1;
            }
            uVar3.P();
            if (iR != i11) {
                f.z(textView, iR);
            }
            if (iR2 != i11) {
                f.A(textView, iR2);
            }
            if (fR != -1.0f) {
                if (i12 == i11) {
                    f.B(textView, (int) fR);
                } else if (Build.VERSION.SDK_INT >= 34) {
                    e7.a.n(textView, i12, fR);
                } else {
                    f.B(textView, Math.round(TypedValue.applyDimension(i12, fR, textView.getResources().getDisplayMetrics())));
                }
            }
        }
        i11 = -1;
        fR = -1.0f;
        i12 = -1;
        uVar3.P();
        if (iR != i11) {
            f.z(textView, iR);
        }
        if (iR2 != i11) {
            f.A(textView, iR2);
        }
        if (fR != -1.0f) {
            if (i12 == i11) {
                f.B(textView, (int) fR);
            } else if (Build.VERSION.SDK_INT >= 34) {
                e7.a.n(textView, i12, fR);
            } else {
                f.B(textView, Math.round(TypedValue.applyDimension(i12, fR, textView.getResources().getDisplayMetrics())));
            }
        }
    }

    public final void g(Context context, int i8) {
        String strA;
        ColorStateList colorStateListO;
        ColorStateList colorStateListO2;
        ColorStateList colorStateListO3;
        u uVar = new u(context, context.obtainStyledAttributes(i8, a.f24708w));
        boolean zF = uVar.F(14);
        TextView textView = this.f26234a;
        if (zF) {
            textView.setAllCaps(uVar.n(14, false));
        }
        int i9 = Build.VERSION.SDK_INT;
        if (i9 < 23) {
            if (uVar.F(3) && (colorStateListO3 = uVar.o(3)) != null) {
                textView.setTextColor(colorStateListO3);
            }
            if (uVar.F(5) && (colorStateListO2 = uVar.o(5)) != null) {
                textView.setLinkTextColor(colorStateListO2);
            }
            if (uVar.F(4) && (colorStateListO = uVar.o(4)) != null) {
                textView.setHintTextColor(colorStateListO);
            }
        }
        if (uVar.F(0) && uVar.r(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, uVar);
        if (i9 >= 26 && uVar.F(13) && (strA = uVar.A(13)) != null) {
            AbstractC3019b0.d(textView, strA);
        }
        uVar.P();
        Typeface typeface = this.f26245l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f26243j);
        }
    }

    public final void i(int i8, int i9, int i10, int i11) {
        C3041m0 c3041m0 = this.f26242i;
        if (c3041m0.j()) {
            DisplayMetrics displayMetrics = c3041m0.f26292j.getResources().getDisplayMetrics();
            c3041m0.k(TypedValue.applyDimension(i11, i8, displayMetrics), TypedValue.applyDimension(i11, i9, displayMetrics), TypedValue.applyDimension(i11, i10, displayMetrics));
            if (c3041m0.h()) {
                c3041m0.a();
            }
        }
    }

    public final void j(int[] iArr, int i8) {
        C3041m0 c3041m0 = this.f26242i;
        if (c3041m0.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i8 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = c3041m0.f26292j.getResources().getDisplayMetrics();
                    for (int i9 = 0; i9 < length; i9++) {
                        iArrCopyOf[i9] = Math.round(TypedValue.applyDimension(i8, iArr[i9], displayMetrics));
                    }
                }
                c3041m0.f26288f = C3041m0.b(iArrCopyOf);
                if (!c3041m0.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                c3041m0.f26289g = false;
            }
            if (c3041m0.h()) {
                c3041m0.a();
            }
        }
    }

    public final void k(int i8) {
        C3041m0 c3041m0 = this.f26242i;
        if (c3041m0.j()) {
            if (i8 == 0) {
                c3041m0.f26283a = 0;
                c3041m0.f26286d = -1.0f;
                c3041m0.f26287e = -1.0f;
                c3041m0.f26285c = -1.0f;
                c3041m0.f26288f = new int[0];
                c3041m0.f26284b = false;
                return;
            }
            if (i8 != 1) {
                throw new IllegalArgumentException(r.f("Unknown auto-size text type: ", i8));
            }
            DisplayMetrics displayMetrics = c3041m0.f26292j.getResources().getDisplayMetrics();
            c3041m0.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (c3041m0.h()) {
                c3041m0.a();
            }
        }
    }

    public final void l(ColorStateList colorStateList) {
        if (this.f26241h == null) {
            this.f26241h = new e1(0);
        }
        e1 e1Var = this.f26241h;
        e1Var.f26253d = colorStateList;
        e1Var.f26252c = colorStateList != null;
        this.f26235b = e1Var;
        this.f26236c = e1Var;
        this.f26237d = e1Var;
        this.f26238e = e1Var;
        this.f26239f = e1Var;
        this.f26240g = e1Var;
    }

    public final void m(PorterDuff.Mode mode) {
        if (this.f26241h == null) {
            this.f26241h = new e1(0);
        }
        e1 e1Var = this.f26241h;
        e1Var.f26254e = mode;
        e1Var.f26251b = mode != null;
        this.f26235b = e1Var;
        this.f26236c = e1Var;
        this.f26237d = e1Var;
        this.f26238e = e1Var;
        this.f26239f = e1Var;
        this.f26240g = e1Var;
    }

    public final void n(Context context, u uVar) {
        String strA;
        this.f26243j = uVar.x(2, this.f26243j);
        int i8 = Build.VERSION.SDK_INT;
        if (i8 >= 28) {
            int iX = uVar.x(11, -1);
            this.f26244k = iX;
            if (iX != -1) {
                this.f26243j &= 2;
            }
        }
        if (!uVar.F(10) && !uVar.F(12)) {
            if (uVar.F(1)) {
                this.f26246m = false;
                int iX2 = uVar.x(1, 1);
                if (iX2 == 1) {
                    this.f26245l = Typeface.SANS_SERIF;
                    return;
                } else if (iX2 == 2) {
                    this.f26245l = Typeface.SERIF;
                    return;
                } else {
                    if (iX2 != 3) {
                        return;
                    }
                    this.f26245l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f26245l = null;
        int i9 = uVar.F(12) ? 12 : 10;
        int i10 = this.f26244k;
        int i11 = this.f26243j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceV = uVar.v(i9, this.f26243j, new g(this, i10, i11, new WeakReference(this.f26234a)));
                if (typefaceV != null) {
                    if (i8 < 28 || this.f26244k == -1) {
                        this.f26245l = typefaceV;
                    } else {
                        this.f26245l = AbstractC3021c0.a(Typeface.create(typefaceV, 0), this.f26244k, (this.f26243j & 2) != 0);
                    }
                }
                this.f26246m = this.f26245l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f26245l != null || (strA = uVar.A(i9)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f26244k == -1) {
            this.f26245l = Typeface.create(strA, this.f26243j);
        } else {
            this.f26245l = AbstractC3021c0.a(Typeface.create(strA, 0), this.f26244k, (this.f26243j & 2) != 0);
        }
    }
}
