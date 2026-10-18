package p086l;

import E3.f;
import Q.k;
import Q3.b;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AutoCompleteTextView;
import p096m2.c;
import p096m2.u;

/* JADX INFO: loaded from: classes.dex */
public class r extends AutoCompleteTextView implements k {

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public static final int[] f26346J = {R.attr.popupBackground};

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26347G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3023d0 f26348H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final c f26349I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, pe.hf.black20.R.attr.autoCompleteTextViewStyle);
        d1.a(context);
        c1.a(getContext(), this);
        u uVarJ = u.J(getContext(), attributeSet, f26346J, pe.hf.black20.R.attr.autoCompleteTextViewStyle, 0);
        if (uVarJ.F(0)) {
            setDropDownBackgroundDrawable(uVarJ.s(0));
        }
        uVarJ.P();
        C3051s c3051s = new C3051s(this);
        this.f26347G = c3051s;
        c3051s.f(attributeSet, pe.hf.black20.R.attr.autoCompleteTextViewStyle);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26348H = c3023d0;
        c3023d0.f(attributeSet, pe.hf.black20.R.attr.autoCompleteTextViewStyle);
        c3023d0.b();
        c cVar = new c(this);
        this.f26349I = cVar;
        cVar.m(attributeSet, pe.hf.black20.R.attr.autoCompleteTextViewStyle);
        KeyListener keyListener = getKeyListener();
        if (!(keyListener instanceof NumberKeyListener)) {
            boolean zIsFocusable = super.isFocusable();
            boolean zIsClickable = super.isClickable();
            boolean zIsLongClickable = super.isLongClickable();
            int inputType = super.getInputType();
            KeyListener keyListenerI = cVar.i(keyListener);
            if (keyListenerI == keyListener) {
                return;
            }
            super.setKeyListener(keyListenerI);
            super.setRawInputType(inputType);
            super.setFocusable(zIsFocusable);
            super.setClickable(zIsClickable);
            super.setLongClickable(zIsLongClickable);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26348H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26348H.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26348H.e();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        b.q(this, editorInfo, inputConnectionOnCreateInputConnection);
        return this.f26349I.u(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26348H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26348H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(f.E(callback, this));
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i8) {
        setDropDownBackgroundDrawable(J6.r.h(getContext(), i8));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        ((U4.b) ((V.b) this.f26349I.f27211I).f6995d).g0(z7);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f26349I.i(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26347G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26348H;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26348H;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i8) {
        super.setTextAppearance(context, i8);
        C3023d0 c3023d0 = this.f26348H;
        if (c3023d0 != null) {
            c3023d0.g(context, i8);
        }
    }
}
