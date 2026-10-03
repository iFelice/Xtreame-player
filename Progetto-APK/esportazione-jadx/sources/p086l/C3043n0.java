package p086l;

import Q.k;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* JADX INFO: renamed from: l.n0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3043n0 extends ToggleButton implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26318G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3023d0 f26319H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public B f26320I;

    public C3043n0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.buttonStyleToggle);
        c1.a(getContext(), this);
        C3051s c3051s = new C3051s(this);
        this.f26318G = c3051s;
        c3051s.f(attributeSet, R.attr.buttonStyleToggle);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26319H = c3023d0;
        c3023d0.f(attributeSet, R.attr.buttonStyleToggle);
        getEmojiTextViewHelper().b(attributeSet, R.attr.buttonStyleToggle);
    }

    private B getEmojiTextViewHelper() {
        if (this.f26320I == null) {
            this.f26320I = new B(this);
        }
        return this.f26320I;
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26319H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26319H.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26319H.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26319H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        C3023d0 c3023d0 = this.f26319H;
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
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26318G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26319H;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26319H;
        c3023d0.m(mode);
        c3023d0.b();
    }
}
