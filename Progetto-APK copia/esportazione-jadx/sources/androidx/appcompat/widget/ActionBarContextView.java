package androidx.appcompat.widget;

import J6.r;
import N.N;
import N.U;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import p031e.a;
import p071j.b;
import p079k.C;
import p079k.o;
import p086l.C3016a;
import p086l.C3032i;
import p086l.C3042n;
import p086l.ViewOnClickListenerC3020c;
import p086l.w1;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C3016a f8769G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f8770H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public ActionMenuView f8771I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C3042n f8772J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public int f8773K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public U f8774L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public boolean f8775M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f8776N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public CharSequence f8777O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public CharSequence f8778P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public View f8779Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public View f8780R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public View f8781S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public LinearLayout f8782T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public TextView f8783U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public TextView f8784V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final int f8785W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final int f8786a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f8787b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final int f8788c0;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        C3016a c3016a = new C3016a();
        c3016a.f26219c = this;
        c3016a.f26217a = false;
        this.f8769G = c3016a;
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f8770H = context;
        } else {
            this.f8770H = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24689d, R.attr.actionModeStyle, 0);
        setBackground((!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : r.h(context, resourceId));
        this.f8785W = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f8786a0 = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f8773K = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f8788c0 = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i8, int i9) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i8, Integer.MIN_VALUE), i9);
        return Math.max(0, i8 - view.getMeasuredWidth());
    }

    public static int j(int i8, int i9, int i10, View view, boolean z7) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i11 = ((i10 - measuredHeight) / 2) + i9;
        if (z7) {
            view.layout(i8 - measuredWidth, i11, i8, measuredHeight + i11);
        } else {
            view.layout(i8, i11, i8 + measuredWidth, measuredHeight + i11);
        }
        return z7 ? -measuredWidth : measuredWidth;
    }

    public final void c(b bVar) {
        View view = this.f8779Q;
        int i8 = 0;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f8788c0, (ViewGroup) this, false);
            this.f8779Q = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f8779Q);
        }
        View viewFindViewById = this.f8779Q.findViewById(R.id.action_mode_close_button);
        this.f8780R = viewFindViewById;
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC3020c(i8, this, bVar));
        o oVarC = bVar.c();
        C3042n c3042n = this.f8772J;
        if (c3042n != null) {
            c3042n.h();
            C3032i c3032i = c3042n.f26314Z;
            if (c3032i != null && c3032i.b()) {
                c3032i.f25898j.dismiss();
            }
        }
        C3042n c3042n2 = new C3042n(getContext());
        this.f8772J = c3042n2;
        c3042n2.f26306R = true;
        c3042n2.f26307S = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        oVarC.b(this.f8772J, this.f8770H);
        C3042n c3042n3 = this.f8772J;
        C c8 = c3042n3.f26302N;
        if (c8 == null) {
            C c9 = (C) c3042n3.f26298J.inflate(c3042n3.f26300L, (ViewGroup) this, false);
            c3042n3.f26302N = c9;
            c9.b(c3042n3.f26297I);
            c3042n3.i();
        }
        C c10 = c3042n3.f26302N;
        if (c8 != c10) {
            ((ActionMenuView) c10).setPresenter(c3042n3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) c10;
        this.f8771I = actionMenuView;
        actionMenuView.setBackground(null);
        addView(this.f8771I, layoutParams);
    }

    public final void d() {
        if (this.f8782T == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.abc_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f8782T = linearLayout;
            this.f8783U = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f8784V = (TextView) this.f8782T.findViewById(R.id.action_bar_subtitle);
            int i8 = this.f8785W;
            if (i8 != 0) {
                this.f8783U.setTextAppearance(getContext(), i8);
            }
            int i9 = this.f8786a0;
            if (i9 != 0) {
                this.f8784V.setTextAppearance(getContext(), i9);
            }
        }
        this.f8783U.setText(this.f8777O);
        this.f8784V.setText(this.f8778P);
        boolean z7 = !TextUtils.isEmpty(this.f8777O);
        boolean z8 = !TextUtils.isEmpty(this.f8778P);
        this.f8784V.setVisibility(z8 ? 0 : 8);
        this.f8782T.setVisibility((z7 || z8) ? 0 : 8);
        if (this.f8782T.getParent() == null) {
            addView(this.f8782T);
        }
    }

    public final void e() {
        removeAllViews();
        this.f8781S = null;
        this.f8771I = null;
        this.f8772J = null;
        View view = this.f8780R;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final void onConfigurationChanged(Configuration configuration) {
        int i8;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, a.f24686a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        C3042n c3042n = this.f8772J;
        if (c3042n != null) {
            Configuration configuration2 = c3042n.f26296H.getResources().getConfiguration();
            int i9 = configuration2.screenWidthDp;
            int i10 = configuration2.screenHeightDp;
            if (configuration2.smallestScreenWidthDp > 600 || i9 > 600 || ((i9 > 960 && i10 > 720) || (i9 > 720 && i10 > 960))) {
                i8 = 5;
            } else if (i9 >= 500 || ((i9 > 640 && i10 > 480) || (i9 > 480 && i10 > 640))) {
                i8 = 4;
            } else {
                i8 = i9 >= 360 ? 3 : 2;
            }
            c3042n.f26310V = i8;
            o oVar = c3042n.f26297I;
            if (oVar != null) {
                oVar.p(true);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f8774L != null ? this.f8769G.f26218b : getVisibility();
    }

    public int getContentHeight() {
        return this.f8773K;
    }

    public CharSequence getSubtitle() {
        return this.f8778P;
    }

    public CharSequence getTitle() {
        return this.f8777O;
    }

    public final boolean h(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f8776N = false;
        }
        if (!this.f8776N) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f8776N = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f8776N = false;
        }
        return true;
    }

    public final boolean i(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8775M = false;
        }
        if (!this.f8775M) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f8775M = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f8775M = false;
        }
        return true;
    }

    @Override // android.view.View
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i8) {
        if (i8 != getVisibility()) {
            U u7 = this.f8774L;
            if (u7 != null) {
                u7.b();
            }
            super.setVisibility(i8);
        }
    }

    public final U l(int i8, long j8) {
        U u7 = this.f8774L;
        if (u7 != null) {
            u7.b();
        }
        C3016a c3016a = this.f8769G;
        if (i8 != 0) {
            U uA = N.a(this);
            uA.a(0.0f);
            uA.c(j8);
            ((ActionBarContextView) c3016a.f26219c).f8774L = uA;
            c3016a.f26218b = i8;
            uA.d(c3016a);
            return uA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        U uA2 = N.a(this);
        uA2.a(1.0f);
        uA2.c(j8);
        ((ActionBarContextView) c3016a.f26219c).f8774L = uA2;
        c3016a.f26218b = i8;
        uA2.d(c3016a);
        return uA2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C3042n c3042n = this.f8772J;
        if (c3042n != null) {
            c3042n.h();
            C3032i c3032i = this.f8772J.f26314Z;
            if (c3032i == null || !c3032i.b()) {
                return;
            }
            c3032i.f25898j.dismiss();
        }
    }

    @Override // android.view.View
    public final /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        h(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        boolean z8 = w1.f26407a;
        boolean z9 = getLayoutDirection() == 1;
        int paddingRight = z9 ? (i10 - i8) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i11 - i9) - getPaddingTop()) - getPaddingBottom();
        View view = this.f8779Q;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f8779Q.getLayoutParams();
            int i12 = z9 ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i13 = z9 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i14 = z9 ? paddingRight - i12 : paddingRight + i12;
            int iJ = j(i14, paddingTop, paddingTop2, this.f8779Q, z9) + i14;
            paddingRight = z9 ? iJ - i13 : iJ + i13;
        }
        LinearLayout linearLayout = this.f8782T;
        if (linearLayout != null && this.f8781S == null && linearLayout.getVisibility() != 8) {
            paddingRight += j(paddingRight, paddingTop, paddingTop2, this.f8782T, z9);
        }
        View view2 = this.f8781S;
        if (view2 != null) {
            j(paddingRight, paddingTop, paddingTop2, view2, z9);
        }
        int paddingLeft = z9 ? getPaddingLeft() : (i10 - i8) - getPaddingRight();
        ActionMenuView actionMenuView = this.f8771I;
        if (actionMenuView != null) {
            j(paddingLeft, paddingTop, paddingTop2, actionMenuView, !z9);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        if (View.MeasureSpec.getMode(i8) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i9) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i8);
        int size2 = this.f8773K;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i9);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f8779Q;
        if (view != null) {
            int iF = f(view, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f8779Q.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f8771I;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f8771I, paddingLeft, iMakeMeasureSpec);
        }
        LinearLayout linearLayout = this.f8782T;
        if (linearLayout != null && this.f8781S == null) {
            if (this.f8787b0) {
                this.f8782T.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f8782T.getMeasuredWidth();
                boolean z7 = measuredWidth <= paddingLeft;
                if (z7) {
                    paddingLeft -= measuredWidth;
                }
                this.f8782T.setVisibility(z7 ? 0 : 8);
            } else {
                paddingLeft = f(linearLayout, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view2 = this.f8781S;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i10 = layoutParams.width;
            int i11 = i10 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i10 >= 0) {
                paddingLeft = Math.min(i10, paddingLeft);
            }
            int i12 = layoutParams.height;
            int i13 = i12 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i12 >= 0) {
                iMin = Math.min(i12, iMin);
            }
            this.f8781S.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i11), View.MeasureSpec.makeMeasureSpec(iMin, i13));
        }
        if (this.f8773K > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i14 = 0;
        for (int i15 = 0; i15 < childCount; i15++) {
            int measuredHeight = getChildAt(i15).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i14) {
                i14 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i14);
    }

    @Override // android.view.View
    public final /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        i(motionEvent);
        return true;
    }

    public void setContentHeight(int i8) {
        this.f8773K = i8;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f8781S;
        if (view2 != null) {
            removeView(view2);
        }
        this.f8781S = view;
        if (view != null && (linearLayout = this.f8782T) != null) {
            removeView(linearLayout);
            this.f8782T = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f8778P = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f8777O = charSequence;
        d();
        N.n(this, charSequence);
    }

    public void setTitleOptional(boolean z7) {
        if (z7 != this.f8787b0) {
            requestLayout();
        }
        this.f8787b0 = z7;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
