package p086l;

import E3.f;
import Q.k;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;

/* JADX INFO: renamed from: l.t, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C3053t extends Button implements k {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3051s f26381G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C3023d0 f26382H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public B f26383I;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3053t(Context context, AttributeSet attributeSet, int i8) {
        super(context, attributeSet, i8);
        d1.a(context);
        c1.a(getContext(), this);
        C3051s c3051s = new C3051s(this);
        this.f26381G = c3051s;
        c3051s.f(attributeSet, i8);
        C3023d0 c3023d0 = new C3023d0(this);
        this.f26382H = c3023d0;
        c3023d0.f(attributeSet, i8);
        c3023d0.b();
        getEmojiTextViewHelper().b(attributeSet, i8);
    }

    private B getEmojiTextViewHelper() {
        if (this.f26383I == null) {
            this.f26383I = new B(this);
        }
        return this.f26383I;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            c3051s.b();
        }
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 != null) {
            c3023d0.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (w1.f26409c) {
            return super.getAutoSizeMaxTextSize();
        }
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
        return c3023d0 != null ? c3023d0.f26242i.f26288f : new int[0];
    }

    @Override // android.widget.TextView
    public int getAutoSizeTextType() {
        if (w1.f26409c) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 != null) {
            return c3023d0.f26242i.f26283a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return f.D(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            return c3051s.d();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            return c3051s.e();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f26382H.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f26382H.e();
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        super.onLayout(z7, i8, i9, i10, i11);
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 == null || w1.f26409c) {
            return;
        }
        c3023d0.f26242i.a();
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i8, int i9, int i10) {
        super.onTextChanged(charSequence, i8, i9, i10);
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
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
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 != null) {
            c3023d0.k(i8);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            c3051s.g();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i8) {
        super.setBackgroundResource(i8);
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            c3051s.h(i8);
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

    public void setSupportAllCaps(boolean z7) {
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 != null) {
            c3023d0.f26234a.setAllCaps(z7);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            c3051s.k(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C3051s c3051s = this.f26381G;
        if (c3051s != null) {
            c3051s.l(mode);
        }
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        C3023d0 c3023d0 = this.f26382H;
        c3023d0.l(colorStateList);
        c3023d0.b();
    }

    @Override // Q.k
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        C3023d0 c3023d0 = this.f26382H;
        c3023d0.m(mode);
        c3023d0.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i8) {
        super.setTextAppearance(context, i8);
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 != null) {
            c3023d0.g(context, i8);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i8, float f8) {
        boolean z7 = w1.f26409c;
        if (z7) {
            super.setTextSize(i8, f8);
            return;
        }
        C3023d0 c3023d0 = this.f26382H;
        if (c3023d0 == null || z7) {
            return;
        }
        C3041m0 c3041m0 = c3023d0.f26242i;
        if (c3041m0.f()) {
            return;
        }
        c3041m0.g(i8, f8);
    }
}
