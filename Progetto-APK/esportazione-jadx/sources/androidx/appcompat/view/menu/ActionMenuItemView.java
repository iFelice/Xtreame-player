package androidx.appcompat.view.menu;

import Z3.H;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import p031e.a;
import p079k.AbstractC3011c;
import p079k.B;
import p079k.C3010b;
import p079k.n;
import p079k.o;
import p079k.q;
import p086l.C3031h0;
import p086l.InterfaceC3044o;

/* JADX INFO: loaded from: classes.dex */
public class ActionMenuItemView extends C3031h0 implements B, View.OnClickListener, InterfaceC3044o {

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public q f8730N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public CharSequence f8731O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Drawable f8732P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public n f8733Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public C3010b f8734R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public AbstractC3011c f8735S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f8736T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f8737U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final int f8738V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f8739W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f8740a0;

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        Resources resources = context.getResources();
        this.f8736T = n();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24688c, 0, 0);
        this.f8738V = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f8740a0 = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f8739W = -1;
        setSaveEnabled(false);
    }

    @Override // p086l.InterfaceC3044o
    public final boolean a() {
        return !TextUtils.isEmpty(getText());
    }

    @Override // p086l.InterfaceC3044o
    public final boolean b() {
        return (TextUtils.isEmpty(getText()) ^ true) && this.f8730N.getIcon() == null;
    }

    @Override // p079k.B
    public final void c(q qVar) {
        this.f8730N = qVar;
        setIcon(qVar.getIcon());
        setTitle(qVar.getTitleCondensed());
        setId(qVar.f25851a);
        setVisibility(qVar.isVisible() ? 0 : 8);
        setEnabled(qVar.isEnabled());
        if (qVar.hasSubMenu() && this.f8734R == null) {
            this.f8734R = new C3010b(this);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // p079k.B
    public q getItemData() {
        return this.f8730N;
    }

    public final boolean n() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i8 = configuration.screenWidthDp;
        return i8 >= 480 || (i8 >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void o() {
        boolean z7 = true;
        boolean z8 = !TextUtils.isEmpty(this.f8731O);
        if (this.f8732P != null && ((this.f8730N.f25875y & 4) != 4 || (!this.f8736T && !this.f8737U))) {
            z7 = false;
        }
        boolean z9 = z8 & z7;
        setText(z9 ? this.f8731O : null);
        CharSequence charSequence = this.f8730N.f25867q;
        if (TextUtils.isEmpty(charSequence)) {
            setContentDescription(z9 ? null : this.f8730N.f25855e);
        } else {
            setContentDescription(charSequence);
        }
        CharSequence charSequence2 = this.f8730N.f25868r;
        if (TextUtils.isEmpty(charSequence2)) {
            H.v(this, z9 ? null : this.f8730N.f25855e);
        } else {
            H.v(this, charSequence2);
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        n nVar = this.f8733Q;
        if (nVar != null) {
            nVar.a(this.f8730N);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8736T = n();
        o();
    }

    @Override // p086l.C3031h0, android.widget.TextView, android.view.View
    public final void onMeasure(int i8, int i9) {
        int i10;
        boolean z7 = !TextUtils.isEmpty(getText());
        if (z7 && (i10 = this.f8739W) >= 0) {
            super.setPadding(i10, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i8, i9);
        int mode = View.MeasureSpec.getMode(i8);
        int size = View.MeasureSpec.getSize(i8);
        int measuredWidth = getMeasuredWidth();
        int i11 = this.f8738V;
        int iMin = mode == Integer.MIN_VALUE ? Math.min(size, i11) : i11;
        if (mode != 1073741824 && i11 > 0 && measuredWidth < iMin) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i9);
        }
        if (z7 || this.f8732P == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f8732P.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        C3010b c3010b;
        if (this.f8730N.hasSubMenu() && (c3010b = this.f8734R) != null && c3010b.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z7) {
    }

    public void setChecked(boolean z7) {
    }

    public void setExpandedFormat(boolean z7) {
        if (this.f8737U != z7) {
            this.f8737U = z7;
            q qVar = this.f8730N;
            if (qVar != null) {
                o oVar = qVar.f25864n;
                oVar.f25831k = true;
                oVar.p(true);
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f8732P = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i8 = this.f8740a0;
            if (intrinsicWidth > i8) {
                intrinsicHeight = (int) (intrinsicHeight * (i8 / intrinsicWidth));
                intrinsicWidth = i8;
            }
            if (intrinsicHeight > i8) {
                intrinsicWidth = (int) (intrinsicWidth * (i8 / intrinsicHeight));
            } else {
                i8 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i8);
        }
        setCompoundDrawables(drawable, null, null, null);
        o();
    }

    public void setItemInvoker(n nVar) {
        this.f8733Q = nVar;
    }

    @Override // android.widget.TextView, android.view.View
    public final void setPadding(int i8, int i9, int i10, int i11) {
        this.f8739W = i8;
        super.setPadding(i8, i9, i10, i11);
    }

    public void setPopupCallback(AbstractC3011c abstractC3011c) {
        this.f8735S = abstractC3011c;
    }

    public void setTitle(CharSequence charSequence) {
        this.f8731O = charSequence;
        o();
    }
}
