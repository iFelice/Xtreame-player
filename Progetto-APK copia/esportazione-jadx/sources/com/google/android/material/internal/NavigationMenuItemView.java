package com.google.android.material.internal;

import F.n;
import N.N;
import Z3.H;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import java.util.WeakHashMap;
import p003a2.e;
import p079k.B;
import p079k.q;
import p086l.D0;
import p102n0.c;
import p121p4.a;

/* JADX INFO: loaded from: classes.dex */
public class NavigationMenuItemView extends a implements B {

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final int[] f24140o0 = {R.attr.state_checked};

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final int f24141e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f24142f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f24143g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final CheckedTextView f24144h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public FrameLayout f24145i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public q f24146j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public ColorStateList f24147k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f24148l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public Drawable f24149m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final e f24150n0;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        e eVar = new e(this, 2);
        this.f24150n0 = eVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(pe.hf.black20.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        this.f24141e0 = context.getResources().getDimensionPixelSize(pe.hf.black20.R.dimen.design_navigation_icon_size);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(pe.hf.black20.R.id.design_menu_item_text);
        this.f24144h0 = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        N.m(checkedTextView, eVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f24145i0 == null) {
                this.f24145i0 = (FrameLayout) ((ViewStub) findViewById(pe.hf.black20.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f24145i0.removeAllViews();
            this.f24145i0.addView(view);
        }
    }

    @Override // p079k.B
    public final void c(q qVar) {
        StateListDrawable stateListDrawable;
        this.f24146j0 = qVar;
        setVisibility(qVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(pe.hf.black20.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f24140o0, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = N.f4843a;
            setBackground(stateListDrawable);
        }
        setCheckable(qVar.isCheckable());
        setChecked(qVar.isChecked());
        setEnabled(qVar.isEnabled());
        setTitle(qVar.f25855e);
        setIcon(qVar.getIcon());
        setActionView(qVar.getActionView());
        setContentDescription(qVar.f25867q);
        H.v(this, qVar.f25868r);
        q qVar2 = this.f24146j0;
        CharSequence charSequence = qVar2.f25855e;
        CheckedTextView checkedTextView = this.f24144h0;
        if (charSequence == null && qVar2.getIcon() == null && this.f24146j0.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f24145i0;
            if (frameLayout != null) {
                D0 d6 = (D0) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) d6).width = -1;
                this.f24145i0.setLayoutParams(d6);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f24145i0;
        if (frameLayout2 != null) {
            D0 d8 = (D0) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) d8).width = -2;
            this.f24145i0.setLayoutParams(d8);
        }
    }

    @Override // p079k.B
    public q getItemData() {
        return this.f24146j0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i8) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i8 + 1);
        q qVar = this.f24146j0;
        if (qVar != null && qVar.isCheckable() && this.f24146j0.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f24140o0);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z7) {
        refreshDrawableState();
        if (this.f24143g0 != z7) {
            this.f24143g0 = z7;
            this.f24150n0.h(this.f24144h0, 2048);
        }
    }

    public void setChecked(boolean z7) {
        refreshDrawableState();
        this.f24144h0.setChecked(z7);
    }

    public void setHorizontalPadding(int i8) {
        setPadding(i8, 0, i8, 0);
    }

    public void setIcon(Drawable drawable) {
        int i8 = this.f24141e0;
        if (drawable != null) {
            if (this.f24148l0) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = c.q(drawable).mutate();
                drawable.setTintList(this.f24147k0);
            }
            drawable.setBounds(0, 0, i8, i8);
        } else if (this.f24142f0) {
            if (this.f24149m0 == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = n.f2990a;
                Drawable drawable2 = resources.getDrawable(pe.hf.black20.R.drawable.navigation_empty_icon, theme);
                this.f24149m0 = drawable2;
                if (drawable2 != null) {
                    drawable2.setBounds(0, 0, i8, i8);
                }
            }
            drawable = this.f24149m0;
        }
        this.f24144h0.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i8) {
        this.f24144h0.setCompoundDrawablePadding(i8);
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.f24147k0 = colorStateList;
        this.f24148l0 = colorStateList != null;
        q qVar = this.f24146j0;
        if (qVar != null) {
            setIcon(qVar.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z7) {
        this.f24142f0 = z7;
    }

    public void setTextAppearance(int i8) {
        int i9 = Build.VERSION.SDK_INT;
        CheckedTextView checkedTextView = this.f24144h0;
        if (i9 >= 23) {
            checkedTextView.setTextAppearance(i8);
        } else {
            checkedTextView.setTextAppearance(checkedTextView.getContext(), i8);
        }
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f24144h0.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f24144h0.setText(charSequence);
    }
}
