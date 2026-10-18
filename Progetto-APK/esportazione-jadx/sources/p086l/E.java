package p086l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes.dex */
public class E extends ImageView {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26086G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final D f26087H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f26088I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        d1.a(context);
        this.f26088I = false;
        c1.a(getContext(), this);
        C3051s c3051s = new C3051s(this);
        this.f26086G = c3051s;
        c3051s.f(attributeSet, i8);
        D d6 = new D(this);
        this.f26087H = d6;
        d6.b(attributeSet, i8);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            c3051s.b();
        }
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        e1 e1Var;
        D d6 = this.f26087H;
        if (d6 == null || (e1Var = (e1) d6.f26084e) == null) {
            return null;
        }
        return (ColorStateList) e1Var.f26253d;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        e1 e1Var;
        D d6 = this.f26087H;
        if (d6 == null || (e1Var = (e1) d6.f26084e) == null) {
            return null;
        }
        return (PorterDuff.Mode) e1Var.f26254e;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return ((((ImageView) this.f26087H.f26082c).getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            c3051s.h(i8);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        D d6 = this.f26087H;
        if (d6 != null && drawable != null && !this.f26088I) {
            d6.f26081b = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (d6 != null) {
            d6.a();
            if (this.f26088I || ((ImageView) d6.f26082c).getDrawable() == null) {
                return;
            }
            ((ImageView) d6.f26082c).getDrawable().setLevel(d6.f26081b);
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i8) {
        super.setImageLevel(i8);
        this.f26088I = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i8) {
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.c(i8);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26086G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.e(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        D d6 = this.f26087H;
        if (d6 != null) {
            d6.f(mode);
        }
    }
}
