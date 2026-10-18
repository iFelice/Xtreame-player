package p086l;

import J6.r;
import Q.k;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.RadioButton;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class J extends RadioButton implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3059w f26115G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3051s f26116H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final C3023d0 f26117I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public B f26118J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.radioButtonStyle);
        d1.a(context);
        c1.a(getContext(), this);
        C3059w c3059w = new C3059w(this, 1);
        this.f26115G = c3059w;
        c3059w.c(attributeSet, R.attr.radioButtonStyle);
        C3051s c3051s = new C3051s(this);
        this.f26116H = c3051s;
        c3051s.f(attributeSet, R.attr.radioButtonStyle);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26117I = c3023d0;
        c3023d0.f(attributeSet, R.attr.radioButtonStyle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.radioButtonStyle);
    }

    private B getEmojiTextViewHelper() {
        if (this.f26118J == null) {
            this.f26118J = new B(this);
        }
        return this.f26118J;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26117I;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        C3059w c3059w = this.f26115G;
        if (c3059w != null) {
            return (ColorStateList) c3059w.f26401b;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C3059w c3059w = this.f26115G;
        if (c3059w != null) {
            return (PorterDuff.Mode) c3059w.f26402c;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26117I.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26117I.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C3059w c3059w = this.f26115G;
        if (c3059w != null) {
            if (c3059w.f26405f) {
                c3059w.f26405f = false;
            } else {
                c3059w.f26405f = true;
                c3059w.a();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26117I;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26117I;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26116H;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C3059w c3059w = this.f26115G;
        if (c3059w != null) {
            c3059w.f26401b = colorStateList;
            c3059w.f26403d = true;
            c3059w.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C3059w c3059w = this.f26115G;
        if (c3059w != null) {
            c3059w.f26402c = mode;
            c3059w.f26404e = true;
            c3059w.a();
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26117I;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26117I;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i8) {
        setButtonDrawable(r.h(getContext(), i8));
    }
}
