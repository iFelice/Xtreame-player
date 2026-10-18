package p086l;

import E3.f;
import J6.r;
import Q.k;
import Q3.b;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import pe.hf.black20.R;

/* JADX INFO: renamed from: l.v, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3057v extends CheckedTextView implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3059w f26392G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3051s f26393H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3023d0 f26394I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public B f26395J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3057v(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.checkedTextViewStyle);
        d1.a(context);
        c1.a(getContext(), this);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26394I = c3023d0;
        c3023d0.f(attributeSet, R.attr.checkedTextViewStyle);
        c3023d0.b();
        C3051s c3051s = new C3051s(this);
        this.f26393H = c3051s;
        c3051s.f(attributeSet, R.attr.checkedTextViewStyle);
        C3059w c3059w = new C3059w(this, 0);
        this.f26392G = c3059w;
        c3059w.c(attributeSet, R.attr.checkedTextViewStyle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.checkedTextViewStyle);
    }

    private B getEmojiTextViewHelper() {
        if (this.f26395J == null) {
            this.f26395J = new B(this);
        }
        return this.f26395J;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3023d0 c3023d0 = this.f26394I;
        if (c3023d0 != null) {
            c3023d0.b();
        }
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            c3051s.b();
        }
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            c3059w.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            return (ColorStateList) c3059w.f26401b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            return (PorterDuff.Mode) c3059w.f26402c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26394I.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26394I.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        b.q(this, editorInfo, inputConnectionOnCreateInputConnection);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            if (c3059w.f26405f) {
                c3059w.f26405f = false;
            } else {
                c3059w.f26405f = true;
                c3059w.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26394I;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26394I;
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

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26393H;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            c3059w.f26401b = colorStateList;
            c3059w.f26403d = true;
            c3059w.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        C3059w c3059w = this.f26392G;
        if (c3059w != null) {
            c3059w.f26402c = mode;
            c3059w.f26404e = true;
            c3059w.b();
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26394I;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26394I;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i8) {
        super.setTextAppearance(context, i8);
        C3023d0 c3023d0 = this.f26394I;
        if (c3023d0 != null) {
            c3023d0.g(context, i8);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i8) {
        setCheckMarkDrawable(r.h(getContext(), i8));
    }
}
