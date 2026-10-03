package androidx.appcompat.widget;

import J6.r;
import N.InterfaceC0265n;
import N.N;
import Z3.H;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import p000a.f;
import p031e.a;
import p039f.AbstractC2986a;
import p039f.ViewOnClickListenerC2988c;
import p071j.i;
import p079k.o;
import p079k.q;
import p086l.C;
import p086l.C3031h0;
import p086l.C3042n;
import p086l.E;
import p086l.InterfaceC3049q0;
import p086l.ViewOnClickListenerC3020c;
import p086l.X0;
import p086l.g1;
import p086l.h1;
import p086l.i1;
import p086l.j1;
import p086l.k1;
import p086l.l1;
import p086l.n1;
import p086l.o1;
import p086l.w1;
import p096m2.u;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public class Toolbar extends ViewGroup implements InterfaceC0265n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public ActionMenuView f8893G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public C3031h0 f8894H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public C3031h0 f8895I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public C f8896J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public E f8897K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final Drawable f8898L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final CharSequence f8899M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C f8900N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public View f8901O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Context f8902P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public int f8903Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public int f8904R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f8905S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final int f8906T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final int f8907U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f8908V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f8909W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public int f8910a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public int f8911b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public X0 f8912c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f8913d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public int f8914e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final int f8915f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public CharSequence f8916g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public CharSequence f8917h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public ColorStateList f8918i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public ColorStateList f8919j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f8920k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public boolean f8921l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public final ArrayList f8922m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final ArrayList f8923n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final int[] f8924o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final u f8925p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public ArrayList f8926q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final h1 f8927r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public o1 f8928s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public C3042n f8929t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public j1 f8930u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public boolean f8931v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public OnBackInvokedCallback f8932w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public OnBackInvokedDispatcher f8933x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public boolean f8934y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final f f8935z0;

    public Toolbar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f8915f0 = 8388627;
        this.f8922m0 = new ArrayList();
        this.f8923n0 = new ArrayList();
        this.f8924o0 = new int[2];
        this.f8925p0 = new u(new g1(this, 1));
        this.f8926q0 = new ArrayList();
        this.f8927r0 = new h1(this);
        this.f8935z0 = new f(this, 4);
        Context context2 = getContext();
        int[] iArr = a.f24709x;
        u uVarJ = u.J(context2, attributeSet, iArr, R.attr.toolbarStyle, 0);
        N.l(this, context, iArr, attributeSet, (TypedArray) uVarJ.f27279I, R.attr.toolbarStyle);
        this.f8904R = uVarJ.z(28, 0);
        this.f8905S = uVarJ.z(19, 0);
        this.f8915f0 = ((TypedArray) uVarJ.f27279I).getInteger(0, 8388627);
        this.f8906T = ((TypedArray) uVarJ.f27279I).getInteger(2, 48);
        int iQ = uVarJ.q(22, 0);
        iQ = uVarJ.F(27) ? uVarJ.q(27, iQ) : iQ;
        this.f8911b0 = iQ;
        this.f8910a0 = iQ;
        this.f8909W = iQ;
        this.f8908V = iQ;
        int iQ2 = uVarJ.q(25, -1);
        if (iQ2 >= 0) {
            this.f8908V = iQ2;
        }
        int iQ3 = uVarJ.q(24, -1);
        if (iQ3 >= 0) {
            this.f8909W = iQ3;
        }
        int iQ4 = uVarJ.q(26, -1);
        if (iQ4 >= 0) {
            this.f8910a0 = iQ4;
        }
        int iQ5 = uVarJ.q(23, -1);
        if (iQ5 >= 0) {
            this.f8911b0 = iQ5;
        }
        this.f8907U = uVarJ.r(13, -1);
        int iQ6 = uVarJ.q(9, Integer.MIN_VALUE);
        int iQ7 = uVarJ.q(5, Integer.MIN_VALUE);
        int iR = uVarJ.r(7, 0);
        int iR2 = uVarJ.r(8, 0);
        d();
        X0 x7 = this.f8912c0;
        x7.f26208h = false;
        if (iR != Integer.MIN_VALUE) {
            x7.f26205e = iR;
            x7.f26201a = iR;
        }
        if (iR2 != Integer.MIN_VALUE) {
            x7.f26206f = iR2;
            x7.f26202b = iR2;
        }
        if (iQ6 != Integer.MIN_VALUE || iQ7 != Integer.MIN_VALUE) {
            x7.a(iQ6, iQ7);
        }
        this.f8913d0 = uVarJ.q(10, Integer.MIN_VALUE);
        this.f8914e0 = uVarJ.q(6, Integer.MIN_VALUE);
        this.f8898L = uVarJ.s(4);
        this.f8899M = uVarJ.C(3);
        CharSequence charSequenceC = uVarJ.C(21);
        if (!TextUtils.isEmpty(charSequenceC)) {
            setTitle(charSequenceC);
        }
        CharSequence charSequenceC2 = uVarJ.C(18);
        if (!TextUtils.isEmpty(charSequenceC2)) {
            setSubtitle(charSequenceC2);
        }
        this.f8902P = getContext();
        setPopupTheme(uVarJ.z(17, 0));
        Drawable drawableS = uVarJ.s(16);
        if (drawableS != null) {
            setNavigationIcon(drawableS);
        }
        CharSequence charSequenceC3 = uVarJ.C(15);
        if (!TextUtils.isEmpty(charSequenceC3)) {
            setNavigationContentDescription(charSequenceC3);
        }
        Drawable drawableS2 = uVarJ.s(11);
        if (drawableS2 != null) {
            setLogo(drawableS2);
        }
        CharSequence charSequenceC4 = uVarJ.C(12);
        if (!TextUtils.isEmpty(charSequenceC4)) {
            setLogoDescription(charSequenceC4);
        }
        if (uVarJ.F(29)) {
            setTitleTextColor(uVarJ.o(29));
        }
        if (uVarJ.F(20)) {
            setSubtitleTextColor(uVarJ.o(20));
        }
        if (uVarJ.F(14)) {
            getMenuInflater().inflate(uVarJ.z(14, 0), getMenu());
        }
        uVarJ.P();
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i8 = 0; i8 < menu.size(); i8++) {
            arrayList.add(menu.getItem(i8));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new i(getContext());
    }

    public static k1 h() {
        k1 k1Var = new k1(-2, -2);
        k1Var.f26276b = 0;
        k1Var.f25028a = 8388627;
        return k1Var;
    }

    public static k1 i(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof k1) {
            k1 k1Var = (k1) layoutParams;
            k1 k1Var2 = new k1(k1Var);
            k1Var2.f26276b = 0;
            k1Var2.f26276b = k1Var.f26276b;
            return k1Var2;
        }
        if (layoutParams instanceof AbstractC2986a) {
            k1 k1Var3 = new k1((AbstractC2986a) layoutParams);
            k1Var3.f26276b = 0;
            return k1Var3;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            k1 k1Var4 = new k1(layoutParams);
            k1Var4.f26276b = 0;
            return k1Var4;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        k1 k1Var5 = new k1(marginLayoutParams);
        k1Var5.f26276b = 0;
        ((ViewGroup.MarginLayoutParams) k1Var5).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) k1Var5).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) k1Var5).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) k1Var5).bottomMargin = marginLayoutParams.bottomMargin;
        return k1Var5;
    }

    public static int k(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(int i8, ArrayList arrayList) {
        boolean z7 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i8, getLayoutDirection());
        arrayList.clear();
        if (!z7) {
            for (int i9 = 0; i9 < childCount; i9++) {
                View childAt = getChildAt(i9);
                k1 k1Var = (k1) childAt.getLayoutParams();
                if (k1Var.f26276b == 0 && s(childAt)) {
                    int i10 = k1Var.f25028a;
                    int layoutDirection = getLayoutDirection();
                    int absoluteGravity2 = Gravity.getAbsoluteGravity(i10, layoutDirection) & 7;
                    if (absoluteGravity2 != 1 && absoluteGravity2 != 3 && absoluteGravity2 != 5) {
                        absoluteGravity2 = layoutDirection == 1 ? 5 : 3;
                    }
                    if (absoluteGravity2 == absoluteGravity) {
                        arrayList.add(childAt);
                    }
                }
            }
            return;
        }
        for (int i11 = childCount - 1; i11 >= 0; i11--) {
            View childAt2 = getChildAt(i11);
            k1 k1Var2 = (k1) childAt2.getLayoutParams();
            if (k1Var2.f26276b == 0 && s(childAt2)) {
                int i12 = k1Var2.f25028a;
                int layoutDirection2 = getLayoutDirection();
                int absoluteGravity3 = Gravity.getAbsoluteGravity(i12, layoutDirection2) & 7;
                if (absoluteGravity3 != 1 && absoluteGravity3 != 3 && absoluteGravity3 != 5) {
                    absoluteGravity3 = layoutDirection2 == 1 ? 5 : 3;
                }
                if (absoluteGravity3 == absoluteGravity) {
                    arrayList.add(childAt2);
                }
            }
        }
    }

    public final void b(View view, boolean z7) {
        k1 k1VarI;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            k1VarI = h();
        } else {
            k1VarI = !checkLayoutParams(layoutParams) ? i(layoutParams) : (k1) layoutParams;
        }
        k1VarI.f26276b = 1;
        if (!z7 || this.f8901O == null) {
            addView(view, k1VarI);
        } else {
            view.setLayoutParams(k1VarI);
            this.f8923n0.add(view);
        }
    }

    public final void c() {
        if (this.f8900N == null) {
            C c8 = new C(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f8900N = c8;
            c8.setImageDrawable(this.f8898L);
            this.f8900N.setContentDescription(this.f8899M);
            k1 k1VarH = h();
            k1VarH.f25028a = (this.f8906T & 112) | 8388611;
            k1VarH.f26276b = 2;
            this.f8900N.setLayoutParams(k1VarH);
            this.f8900N.setOnClickListener(new ViewOnClickListenerC2988c(this, 1));
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof k1);
    }

    public final void d() {
        if (this.f8912c0 == null) {
            X0 x7 = new X0();
            x7.f26201a = 0;
            x7.f26202b = 0;
            x7.f26203c = Integer.MIN_VALUE;
            x7.f26204d = Integer.MIN_VALUE;
            x7.f26205e = 0;
            x7.f26206f = 0;
            x7.f26207g = false;
            x7.f26208h = false;
            this.f8912c0 = x7;
        }
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f8893G;
        if (actionMenuView.f8820V == null) {
            o oVar = (o) actionMenuView.getMenu();
            if (this.f8930u0 == null) {
                this.f8930u0 = new j1(this);
            }
            this.f8893G.setExpandedActionViewsExclusive(true);
            oVar.b(this.f8930u0, this.f8902P);
            t();
        }
    }

    public final void f() {
        if (this.f8893G == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f8893G = actionMenuView;
            actionMenuView.setPopupTheme(this.f8903Q);
            this.f8893G.setOnMenuItemClickListener(this.f8927r0);
            ActionMenuView actionMenuView2 = this.f8893G;
            h1 h1Var = new h1(this);
            actionMenuView2.f8825d0 = null;
            actionMenuView2.f8826e0 = h1Var;
            k1 k1VarH = h();
            k1VarH.f25028a = (this.f8906T & 112) | 8388613;
            this.f8893G.setLayoutParams(k1VarH);
            b(this.f8893G, false);
        }
    }

    public final void g() {
        if (this.f8896J == null) {
            this.f8896J = new C(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            k1 k1VarH = h();
            k1VarH.f25028a = (this.f8906T & 112) | 8388611;
            this.f8896J.setLayoutParams(k1VarH);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        C c8 = this.f8900N;
        if (c8 != null) {
            return c8.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        C c8 = this.f8900N;
        if (c8 != null) {
            return c8.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        X0 x7 = this.f8912c0;
        if (x7 != null) {
            return x7.f26207g ? x7.f26201a : x7.f26202b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i8 = this.f8914e0;
        return i8 != Integer.MIN_VALUE ? i8 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        X0 x7 = this.f8912c0;
        if (x7 != null) {
            return x7.f26201a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        X0 x7 = this.f8912c0;
        if (x7 != null) {
            return x7.f26202b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        X0 x7 = this.f8912c0;
        if (x7 != null) {
            return x7.f26207g ? x7.f26202b : x7.f26201a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i8 = this.f8913d0;
        return i8 != Integer.MIN_VALUE ? i8 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        o oVar;
        ActionMenuView actionMenuView = this.f8893G;
        return (actionMenuView == null || (oVar = actionMenuView.f8820V) == null || !oVar.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f8914e0, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f8913d0, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        E e8 = this.f8897K;
        if (e8 != null) {
            return e8.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        E e8 = this.f8897K;
        if (e8 != null) {
            return e8.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f8893G.getMenu();
    }

    public View getNavButtonView() {
        return this.f8896J;
    }

    public CharSequence getNavigationContentDescription() {
        C c8 = this.f8896J;
        if (c8 != null) {
            return c8.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C c8 = this.f8896J;
        if (c8 != null) {
            return c8.getDrawable();
        }
        return null;
    }

    public C3042n getOuterActionMenuPresenter() {
        return this.f8929t0;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f8893G.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f8902P;
    }

    public int getPopupTheme() {
        return this.f8903Q;
    }

    public CharSequence getSubtitle() {
        return this.f8917h0;
    }

    public final TextView getSubtitleTextView() {
        return this.f8895I;
    }

    public CharSequence getTitle() {
        return this.f8916g0;
    }

    public int getTitleMarginBottom() {
        return this.f8911b0;
    }

    public int getTitleMarginEnd() {
        return this.f8909W;
    }

    public int getTitleMarginStart() {
        return this.f8908V;
    }

    public int getTitleMarginTop() {
        return this.f8910a0;
    }

    public final TextView getTitleTextView() {
        return this.f8894H;
    }

    public InterfaceC3049q0 getWrapper() {
        Drawable drawable;
        if (this.f8928s0 == null) {
            o1 o1Var = new o1();
            o1Var.f26336n = 0;
            o1Var.f26323a = this;
            o1Var.f26330h = getTitle();
            o1Var.f26331i = getSubtitle();
            o1Var.f26329g = o1Var.f26330h != null;
            o1Var.f26328f = getNavigationIcon();
            u uVarJ = u.J(getContext(), null, a.f24686a, R.attr.actionBarStyle, 0);
            o1Var.f26337o = uVarJ.s(15);
            CharSequence charSequenceC = uVarJ.C(27);
            if (!TextUtils.isEmpty(charSequenceC)) {
                o1Var.f26329g = true;
                o1Var.f26330h = charSequenceC;
                if ((o1Var.f26324b & 8) != 0) {
                    Toolbar toolbar = o1Var.f26323a;
                    toolbar.setTitle(charSequenceC);
                    if (o1Var.f26329g) {
                        N.n(toolbar.getRootView(), charSequenceC);
                    }
                }
            }
            CharSequence charSequenceC2 = uVarJ.C(25);
            if (!TextUtils.isEmpty(charSequenceC2)) {
                o1Var.f26331i = charSequenceC2;
                if ((o1Var.f26324b & 8) != 0) {
                    setSubtitle(charSequenceC2);
                }
            }
            Drawable drawableS = uVarJ.s(20);
            if (drawableS != null) {
                o1Var.f26327e = drawableS;
                o1Var.c();
            }
            Drawable drawableS2 = uVarJ.s(17);
            if (drawableS2 != null) {
                o1Var.f26326d = drawableS2;
                o1Var.c();
            }
            if (o1Var.f26328f == null && (drawable = o1Var.f26337o) != null) {
                o1Var.f26328f = drawable;
                int i8 = o1Var.f26324b & 4;
                Toolbar toolbar2 = o1Var.f26323a;
                if (i8 != 0) {
                    toolbar2.setNavigationIcon(drawable);
                } else {
                    toolbar2.setNavigationIcon((Drawable) null);
                }
            }
            o1Var.a(uVarJ.x(10, 0));
            int iZ = uVarJ.z(9, 0);
            if (iZ != 0) {
                View viewInflate = LayoutInflater.from(getContext()).inflate(iZ, (ViewGroup) this, false);
                View view = o1Var.f26325c;
                if (view != null && (o1Var.f26324b & 16) != 0) {
                    removeView(view);
                }
                o1Var.f26325c = viewInflate;
                if (viewInflate != null && (o1Var.f26324b & 16) != 0) {
                    addView(viewInflate);
                }
                o1Var.a(o1Var.f26324b | 16);
            }
            int layoutDimension = ((TypedArray) uVarJ.f27279I).getLayoutDimension(13, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = getLayoutParams();
                layoutParams.height = layoutDimension;
                setLayoutParams(layoutParams);
            }
            int iQ = uVarJ.q(7, -1);
            int iQ2 = uVarJ.q(3, -1);
            if (iQ >= 0 || iQ2 >= 0) {
                int iMax = Math.max(iQ, 0);
                int iMax2 = Math.max(iQ2, 0);
                d();
                this.f8912c0.a(iMax, iMax2);
            }
            int iZ2 = uVarJ.z(28, 0);
            if (iZ2 != 0) {
                Context context = getContext();
                this.f8904R = iZ2;
                C3031h0 c3031h0 = this.f8894H;
                if (c3031h0 != null) {
                    c3031h0.setTextAppearance(context, iZ2);
                }
            }
            int iZ3 = uVarJ.z(26, 0);
            if (iZ3 != 0) {
                Context context2 = getContext();
                this.f8905S = iZ3;
                C3031h0 c3031h1 = this.f8895I;
                if (c3031h1 != null) {
                    c3031h1.setTextAppearance(context2, iZ3);
                }
            }
            int iZ4 = uVarJ.z(22, 0);
            if (iZ4 != 0) {
                setPopupTheme(iZ4);
            }
            uVarJ.P();
            if (R.string.abc_action_bar_up_description != o1Var.f26336n) {
                o1Var.f26336n = R.string.abc_action_bar_up_description;
                if (TextUtils.isEmpty(getNavigationContentDescription())) {
                    int i9 = o1Var.f26336n;
                    o1Var.f26332j = i9 != 0 ? getContext().getString(i9) : null;
                    o1Var.b();
                }
            }
            o1Var.f26332j = getNavigationContentDescription();
            setNavigationOnClickListener(new ViewOnClickListenerC3020c(o1Var));
            this.f8928s0 = o1Var;
        }
        return this.f8928s0;
    }

    public final int j(View view, int i8) {
        k1 k1Var = (k1) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i9 = i8 > 0 ? (measuredHeight - i8) / 2 : 0;
        int i10 = k1Var.f25028a & 112;
        if (i10 != 16 && i10 != 48 && i10 != 80) {
            i10 = this.f8915f0 & 112;
        }
        if (i10 == 48) {
            return getPaddingTop() - i9;
        }
        if (i10 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) k1Var).bottomMargin) - i9;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i11 = ((ViewGroup.MarginLayoutParams) k1Var).topMargin;
        if (iMax < i11) {
            iMax = i11;
        } else {
            int i12 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i13 = ((ViewGroup.MarginLayoutParams) k1Var).bottomMargin;
            if (i12 < i13) {
                iMax = Math.max(0, iMax - (i13 - i12));
            }
        }
        return paddingTop + iMax;
    }

    public final void m() {
        Iterator it = this.f8926q0.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        getMenuInflater();
        Iterator it2 = ((CopyOnWriteArrayList) this.f8925p0.f27279I).iterator();
        while (it2.hasNext()) {
            ((Y.E) it2.next()).f7699a.j();
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f8926q0 = currentMenuItems2;
    }

    public final boolean n(View view) {
        return view.getParent() == this || this.f8923n0.contains(view);
    }

    public final int o(View view, int i8, int i9, int[] iArr) {
        k1 k1Var = (k1) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) k1Var).leftMargin - iArr[0];
        int iMax = Math.max(0, i10) + i8;
        iArr[0] = Math.max(0, -i10);
        int iJ = j(view, i9);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iJ, iMax + measuredWidth, view.getMeasuredHeight() + iJ);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) k1Var).rightMargin + iMax;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        t();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f8935z0);
        t();
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f8921l0 = false;
        }
        if (!this.f8921l0) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f8921l0 = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f8921l0 = false;
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x027e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0281  */
    /* JADX WARN: Code duplicated, block: B:105:0x0293 A[LOOP:0: B:104:0x0291->B:105:0x0293, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x02af A[LOOP:1: B:107:0x02ad->B:108:0x02af, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:111:0x02cf A[LOOP:2: B:110:0x02cd->B:111:0x02cf, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:115:0x0310 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:116:0x0312  */
    /* JADX WARN: Code duplicated, block: B:117:0x0316  */
    /* JADX WARN: Code duplicated, block: B:120:0x031d A[LOOP:3: B:119:0x031b->B:120:0x031d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0062 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:20:0x0064  */
    /* JADX WARN: Code duplicated, block: B:21:0x006b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    /* JADX WARN: Code duplicated, block: B:26:0x0082  */
    /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:34:0x00cd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:35:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:39:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:40:0x0101  */
    /* JADX WARN: Code duplicated, block: B:42:0x0106  */
    /* JADX WARN: Code duplicated, block: B:43:0x011e  */
    /* JADX WARN: Code duplicated, block: B:48:0x012b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:49:0x012d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0130  */
    /* JADX WARN: Code duplicated, block: B:52:0x0134  */
    /* JADX WARN: Code duplicated, block: B:53:0x0137  */
    /* JADX WARN: Code duplicated, block: B:56:0x0147  */
    /* JADX WARN: Code duplicated, block: B:58:0x014f A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:65:0x0168  */
    /* JADX WARN: Code duplicated, block: B:67:0x016c  */
    /* JADX WARN: Code duplicated, block: B:69:0x017b  */
    /* JADX WARN: Code duplicated, block: B:70:0x017d  */
    /* JADX WARN: Code duplicated, block: B:72:0x0188  */
    /* JADX WARN: Code duplicated, block: B:74:0x0194  */
    /* JADX WARN: Code duplicated, block: B:75:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:77:0x01af A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:78:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:80:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:83:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:87:0x0214  */
    /* JADX WARN: Code duplicated, block: B:89:0x0217  */
    /* JADX WARN: Code duplicated, block: B:90:0x021d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x021f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0223  */
    /* JADX WARN: Code duplicated, block: B:96:0x0236  */
    /* JADX WARN: Code duplicated, block: B:97:0x0259  */
    /* JADX WARN: Code duplicated, block: B:99:0x025c  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        int iO;
        int iP;
        int iMax;
        int iMin;
        boolean zS;
        boolean zS2;
        int measuredHeight;
        C3031h0 c3031h0;
        C3031h0 c3031h1;
        k1 k1Var;
        k1 k1Var2;
        boolean z8;
        int i12;
        int i13;
        int paddingTop;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int iMax2;
        int i20;
        int i21;
        int i22;
        int i23;
        ArrayList arrayList;
        int size;
        int iO2;
        int i24;
        int i25;
        int size2;
        int i26;
        int size3;
        int i27;
        int i28;
        int i29;
        int measuredWidth;
        int i30;
        int i31;
        int i32;
        int size4;
        boolean z9 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i33 = width - paddingRight;
        int[] iArr = this.f8924o0;
        iArr[1] = 0;
        iArr[0] = 0;
        WeakHashMap weakHashMap = N.f4843a;
        int minimumHeight = getMinimumHeight();
        int iMin2 = minimumHeight >= 0 ? Math.min(minimumHeight, i11 - i9) : 0;
        if (s(this.f8896J)) {
            if (z9) {
                iP = p(this.f8896J, i33, iMin2, iArr);
                iO = paddingLeft;
            } else {
                iO = o(this.f8896J, paddingLeft, iMin2, iArr);
            }
            if (s(this.f8900N)) {
                if (z9) {
                    iP = p(this.f8900N, iP, iMin2, iArr);
                } else {
                    iO = o(this.f8900N, iO, iMin2, iArr);
                }
            }
            if (s(this.f8893G)) {
                if (z9) {
                    iO = o(this.f8893G, iO, iMin2, iArr);
                } else {
                    iP = p(this.f8893G, iP, iMin2, iArr);
                }
            }
            int currentContentInsetLeft = getCurrentContentInsetLeft();
            int currentContentInsetRight = getCurrentContentInsetRight();
            iArr[0] = Math.max(0, currentContentInsetLeft - iO);
            iArr[1] = Math.max(0, currentContentInsetRight - (i33 - iP));
            iMax = Math.max(iO, currentContentInsetLeft);
            iMin = Math.min(iP, i33 - currentContentInsetRight);
            if (s(this.f8901O)) {
                if (z9) {
                    iMin = p(this.f8901O, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f8901O, iMax, iMin2, iArr);
                }
            }
            if (s(this.f8897K)) {
                if (z9) {
                    iMin = p(this.f8897K, iMin, iMin2, iArr);
                } else {
                    iMax = o(this.f8897K, iMax, iMin2, iArr);
                }
            }
            zS = s(this.f8894H);
            zS2 = s(this.f8895I);
            if (zS) {
                k1 k1Var3 = (k1) this.f8894H.getLayoutParams();
                measuredHeight = ((ViewGroup.MarginLayoutParams) k1Var3).bottomMargin + this.f8894H.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) k1Var3).topMargin;
            } else {
                measuredHeight = 0;
            }
            if (zS2) {
                k1 k1Var4 = (k1) this.f8895I.getLayoutParams();
                measuredHeight += this.f8895I.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) k1Var4).topMargin + ((ViewGroup.MarginLayoutParams) k1Var4).bottomMargin;
            }
            if (!zS || zS2) {
                if (zS) {
                    c3031h0 = this.f8894H;
                } else {
                    c3031h0 = this.f8895I;
                }
                if (zS2) {
                    c3031h1 = this.f8895I;
                } else {
                    c3031h1 = this.f8894H;
                }
                k1Var = (k1) c3031h0.getLayoutParams();
                k1Var2 = (k1) c3031h1.getLayoutParams();
                z8 = (!zS && this.f8894H.getMeasuredWidth() > 0) || (zS2 && this.f8895I.getMeasuredWidth() > 0);
                i12 = this.f8915f0 & 112;
                i13 = paddingLeft;
                if (i12 == 48) {
                    paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
                } else if (i12 != 80) {
                    iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                    i20 = ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
                    if (iMax2 < i20) {
                        iMax2 = i20;
                    } else {
                        i21 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                        i22 = ((ViewGroup.MarginLayoutParams) k1Var).bottomMargin;
                        i23 = this.f8911b0;
                        if (i21 < i22 + i23) {
                            iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin + i23) - i21));
                        }
                    }
                    paddingTop = paddingTop2 + iMax2;
                } else {
                    paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin) - this.f8911b0) - measuredHeight;
                }
                if (z9) {
                    if (z8) {
                        i17 = this.f8908V;
                    } else {
                        i17 = 0;
                    }
                    int i34 = i17 - iArr[1];
                    iMin -= Math.max(0, i34);
                    iArr[1] = Math.max(0, -i34);
                    if (zS) {
                        k1 k1Var5 = (k1) this.f8894H.getLayoutParams();
                        int measuredWidth2 = iMin - this.f8894H.getMeasuredWidth();
                        int measuredHeight2 = this.f8894H.getMeasuredHeight() + paddingTop;
                        this.f8894H.layout(measuredWidth2, paddingTop, iMin, measuredHeight2);
                        i18 = measuredWidth2 - this.f8909W;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) k1Var5).bottomMargin;
                    } else {
                        i18 = iMin;
                    }
                    if (zS2) {
                        int i35 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                        this.f8895I.layout(iMin - this.f8895I.getMeasuredWidth(), i35, iMin, this.f8895I.getMeasuredHeight() + i35);
                        i19 = iMin - this.f8909W;
                    } else {
                        i19 = iMin;
                    }
                    if (z8) {
                        iMin = Math.min(i18, i19);
                    }
                } else {
                    if (z8) {
                        i14 = this.f8908V;
                    } else {
                        i14 = 0;
                    }
                    int i36 = i14 - iArr[0];
                    iMax += Math.max(0, i36);
                    iArr[0] = Math.max(0, -i36);
                    if (zS) {
                        k1 k1Var6 = (k1) this.f8894H.getLayoutParams();
                        int measuredWidth3 = this.f8894H.getMeasuredWidth() + iMax;
                        int measuredHeight3 = this.f8894H.getMeasuredHeight() + paddingTop;
                        this.f8894H.layout(iMax, paddingTop, measuredWidth3, measuredHeight3);
                        i15 = measuredWidth3 + this.f8909W;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) k1Var6).bottomMargin;
                    } else {
                        i15 = iMax;
                    }
                    if (zS2) {
                        int i37 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                        int measuredWidth4 = this.f8895I.getMeasuredWidth() + iMax;
                        this.f8895I.layout(iMax, i37, measuredWidth4, this.f8895I.getMeasuredHeight() + i37);
                        i16 = measuredWidth4 + this.f8909W;
                    } else {
                        i16 = iMax;
                    }
                    if (z8) {
                        iMax = Math.max(i15, i16);
                    }
                }
            } else {
                i13 = paddingLeft;
                iMin2 = iMin2;
            }
            arrayList = this.f8922m0;
            a(3, arrayList);
            size = arrayList.size();
            iO2 = iMax;
            for (i24 = 0; i24 < size; i24++) {
                iO2 = o((View) arrayList.get(i24), iO2, iMin2, iArr);
            }
            i25 = iMin2;
            a(5, arrayList);
            size2 = arrayList.size();
            for (i26 = 0; i26 < size2; i26++) {
                iMin = p((View) arrayList.get(i26), iMin, i25, iArr);
            }
            a(1, arrayList);
            int i38 = iArr[0];
            int i39 = iArr[1];
            size3 = arrayList.size();
            i27 = i39;
            i28 = i38;
            i29 = 0;
            measuredWidth = 0;
            while (i29 < size3) {
                View view = (View) arrayList.get(i29);
                k1 k1Var7 = (k1) view.getLayoutParams();
                int i40 = ((ViewGroup.MarginLayoutParams) k1Var7).leftMargin - i28;
                int i41 = ((ViewGroup.MarginLayoutParams) k1Var7).rightMargin - i27;
                int iMax3 = Math.max(0, i40);
                int iMax4 = Math.max(0, i41);
                int iMax5 = Math.max(0, -i40);
                int iMax6 = Math.max(0, -i41);
                measuredWidth += view.getMeasuredWidth() + iMax3 + iMax4;
                i29++;
                i27 = iMax6;
                i28 = iMax5;
            }
            i31 = ((((width - i13) - paddingRight) / 2) + i13) - (measuredWidth / 2);
            i32 = measuredWidth + i31;
            if (i31 >= iO2) {
                if (i32 > iMin) {
                    iO2 = i31 - (i32 - iMin);
                } else {
                    iO2 = i31;
                }
            }
            size4 = arrayList.size();
            for (i30 = 0; i30 < size4; i30++) {
                iO2 = o((View) arrayList.get(i30), iO2, i25, iArr);
            }
            arrayList.clear();
        }
        iO = paddingLeft;
        iP = i33;
        if (s(this.f8900N)) {
            if (z9) {
                iP = p(this.f8900N, iP, iMin2, iArr);
            } else {
                iO = o(this.f8900N, iO, iMin2, iArr);
            }
        }
        if (s(this.f8893G)) {
            if (z9) {
                iO = o(this.f8893G, iO, iMin2, iArr);
            } else {
                iP = p(this.f8893G, iP, iMin2, iArr);
            }
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iO);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i33 - iP));
        iMax = Math.max(iO, currentContentInsetLeft2);
        iMin = Math.min(iP, i33 - currentContentInsetRight2);
        if (s(this.f8901O)) {
            if (z9) {
                iMin = p(this.f8901O, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f8901O, iMax, iMin2, iArr);
            }
        }
        if (s(this.f8897K)) {
            if (z9) {
                iMin = p(this.f8897K, iMin, iMin2, iArr);
            } else {
                iMax = o(this.f8897K, iMax, iMin2, iArr);
            }
        }
        zS = s(this.f8894H);
        zS2 = s(this.f8895I);
        if (zS) {
            k1 k1Var8 = (k1) this.f8894H.getLayoutParams();
            measuredHeight = ((ViewGroup.MarginLayoutParams) k1Var8).bottomMargin + this.f8894H.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) k1Var8).topMargin;
        } else {
            measuredHeight = 0;
        }
        if (zS2) {
            k1 k1Var9 = (k1) this.f8895I.getLayoutParams();
            measuredHeight += this.f8895I.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) k1Var9).topMargin + ((ViewGroup.MarginLayoutParams) k1Var9).bottomMargin;
        }
        if (zS) {
            if (zS) {
                c3031h0 = this.f8894H;
            } else {
                c3031h0 = this.f8895I;
            }
            if (zS2) {
                c3031h1 = this.f8895I;
            } else {
                c3031h1 = this.f8894H;
            }
            k1Var = (k1) c3031h0.getLayoutParams();
            k1Var2 = (k1) c3031h1.getLayoutParams();
            if (zS) {
            }
            i12 = this.f8915f0 & 112;
            i13 = paddingLeft;
            if (i12 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
            } else if (i12 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i20 = ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
                if (iMax2 < i20) {
                    iMax2 = i20;
                } else {
                    i21 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i22 = ((ViewGroup.MarginLayoutParams) k1Var).bottomMargin;
                    i23 = this.f8911b0;
                    if (i21 < i22 + i23) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin + i23) - i21));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin) - this.f8911b0) - measuredHeight;
            }
            if (z9) {
                if (z8) {
                    i17 = this.f8908V;
                } else {
                    i17 = 0;
                }
                int i310 = i17 - iArr[1];
                iMin -= Math.max(0, i310);
                iArr[1] = Math.max(0, -i310);
                if (zS) {
                    k1 k1Var10 = (k1) this.f8894H.getLayoutParams();
                    int measuredWidth5 = iMin - this.f8894H.getMeasuredWidth();
                    int measuredHeight4 = this.f8894H.getMeasuredHeight() + paddingTop;
                    this.f8894H.layout(measuredWidth5, paddingTop, iMin, measuredHeight4);
                    i18 = measuredWidth5 - this.f8909W;
                    paddingTop = measuredHeight4 + ((ViewGroup.MarginLayoutParams) k1Var10).bottomMargin;
                } else {
                    i18 = iMin;
                }
                if (zS2) {
                    int i311 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                    this.f8895I.layout(iMin - this.f8895I.getMeasuredWidth(), i311, iMin, this.f8895I.getMeasuredHeight() + i311);
                    i19 = iMin - this.f8909W;
                } else {
                    i19 = iMin;
                }
                if (z8) {
                    iMin = Math.min(i18, i19);
                }
            } else {
                if (z8) {
                    i14 = this.f8908V;
                } else {
                    i14 = 0;
                }
                int i312 = i14 - iArr[0];
                iMax += Math.max(0, i312);
                iArr[0] = Math.max(0, -i312);
                if (zS) {
                    k1 k1Var11 = (k1) this.f8894H.getLayoutParams();
                    int measuredWidth6 = this.f8894H.getMeasuredWidth() + iMax;
                    int measuredHeight5 = this.f8894H.getMeasuredHeight() + paddingTop;
                    this.f8894H.layout(iMax, paddingTop, measuredWidth6, measuredHeight5);
                    i15 = measuredWidth6 + this.f8909W;
                    paddingTop = measuredHeight5 + ((ViewGroup.MarginLayoutParams) k1Var11).bottomMargin;
                } else {
                    i15 = iMax;
                }
                if (zS2) {
                    int i313 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                    int measuredWidth7 = this.f8895I.getMeasuredWidth() + iMax;
                    this.f8895I.layout(iMax, i313, measuredWidth7, this.f8895I.getMeasuredHeight() + i313);
                    i16 = measuredWidth7 + this.f8909W;
                } else {
                    i16 = iMax;
                }
                if (z8) {
                    iMax = Math.max(i15, i16);
                }
            }
        } else {
            if (zS) {
                c3031h0 = this.f8894H;
            } else {
                c3031h0 = this.f8895I;
            }
            if (zS2) {
                c3031h1 = this.f8895I;
            } else {
                c3031h1 = this.f8894H;
            }
            k1Var = (k1) c3031h0.getLayoutParams();
            k1Var2 = (k1) c3031h1.getLayoutParams();
            if (zS) {
            }
            i12 = this.f8915f0 & 112;
            i13 = paddingLeft;
            if (i12 == 48) {
                paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
            } else if (i12 != 80) {
                iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                i20 = ((ViewGroup.MarginLayoutParams) k1Var).topMargin + this.f8910a0;
                if (iMax2 < i20) {
                    iMax2 = i20;
                } else {
                    i21 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                    i22 = ((ViewGroup.MarginLayoutParams) k1Var).bottomMargin;
                    i23 = this.f8911b0;
                    if (i21 < i22 + i23) {
                        iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin + i23) - i21));
                    }
                }
                paddingTop = paddingTop2 + iMax2;
            } else {
                paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) k1Var2).bottomMargin) - this.f8911b0) - measuredHeight;
            }
            if (z9) {
                if (z8) {
                    i17 = this.f8908V;
                } else {
                    i17 = 0;
                }
                int i314 = i17 - iArr[1];
                iMin -= Math.max(0, i314);
                iArr[1] = Math.max(0, -i314);
                if (zS) {
                    k1 k1Var12 = (k1) this.f8894H.getLayoutParams();
                    int measuredWidth8 = iMin - this.f8894H.getMeasuredWidth();
                    int measuredHeight6 = this.f8894H.getMeasuredHeight() + paddingTop;
                    this.f8894H.layout(measuredWidth8, paddingTop, iMin, measuredHeight6);
                    i18 = measuredWidth8 - this.f8909W;
                    paddingTop = measuredHeight6 + ((ViewGroup.MarginLayoutParams) k1Var12).bottomMargin;
                } else {
                    i18 = iMin;
                }
                if (zS2) {
                    int i315 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                    this.f8895I.layout(iMin - this.f8895I.getMeasuredWidth(), i315, iMin, this.f8895I.getMeasuredHeight() + i315);
                    i19 = iMin - this.f8909W;
                } else {
                    i19 = iMin;
                }
                if (z8) {
                    iMin = Math.min(i18, i19);
                }
            } else {
                if (z8) {
                    i14 = this.f8908V;
                } else {
                    i14 = 0;
                }
                int i316 = i14 - iArr[0];
                iMax += Math.max(0, i316);
                iArr[0] = Math.max(0, -i316);
                if (zS) {
                    k1 k1Var13 = (k1) this.f8894H.getLayoutParams();
                    int measuredWidth9 = this.f8894H.getMeasuredWidth() + iMax;
                    int measuredHeight7 = this.f8894H.getMeasuredHeight() + paddingTop;
                    this.f8894H.layout(iMax, paddingTop, measuredWidth9, measuredHeight7);
                    i15 = measuredWidth9 + this.f8909W;
                    paddingTop = measuredHeight7 + ((ViewGroup.MarginLayoutParams) k1Var13).bottomMargin;
                } else {
                    i15 = iMax;
                }
                if (zS2) {
                    int i317 = paddingTop + ((ViewGroup.MarginLayoutParams) ((k1) this.f8895I.getLayoutParams())).topMargin;
                    int measuredWidth10 = this.f8895I.getMeasuredWidth() + iMax;
                    this.f8895I.layout(iMax, i317, measuredWidth10, this.f8895I.getMeasuredHeight() + i317);
                    i16 = measuredWidth10 + this.f8909W;
                } else {
                    i16 = iMax;
                }
                if (z8) {
                    iMax = Math.max(i15, i16);
                }
            }
        }
        arrayList = this.f8922m0;
        a(3, arrayList);
        size = arrayList.size();
        iO2 = iMax;
        while (i24 < size) {
            iO2 = o((View) arrayList.get(i24), iO2, iMin2, iArr);
        }
        i25 = iMin2;
        a(5, arrayList);
        size2 = arrayList.size();
        while (i26 < size2) {
            iMin = p((View) arrayList.get(i26), iMin, i25, iArr);
        }
        a(1, arrayList);
        int i318 = iArr[0];
        int i319 = iArr[1];
        size3 = arrayList.size();
        i27 = i319;
        i28 = i318;
        i29 = 0;
        measuredWidth = 0;
        while (i29 < size3) {
            View view2 = (View) arrayList.get(i29);
            k1 k1Var14 = (k1) view2.getLayoutParams();
            int i42 = ((ViewGroup.MarginLayoutParams) k1Var14).leftMargin - i28;
            int i43 = ((ViewGroup.MarginLayoutParams) k1Var14).rightMargin - i27;
            int iMax7 = Math.max(0, i42);
            int iMax8 = Math.max(0, i43);
            int iMax9 = Math.max(0, -i42);
            int iMax10 = Math.max(0, -i43);
            measuredWidth += view2.getMeasuredWidth() + iMax7 + iMax8;
            i29++;
            i27 = iMax10;
            i28 = iMax9;
        }
        i31 = ((((width - i13) - paddingRight) / 2) + i13) - (measuredWidth / 2);
        i32 = measuredWidth + i31;
        if (i31 >= iO2) {
            if (i32 > iMin) {
                iO2 = i31 - (i32 - iMin);
            } else {
                iO2 = i31;
            }
        }
        size4 = arrayList.size();
        while (i30 < size4) {
            iO2 = o((View) arrayList.get(i30), iO2, i25, iArr);
        }
        arrayList.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        char c8;
        char c9;
        int iK;
        int iMax;
        int iCombineMeasuredStates;
        int iK2;
        int iCombineMeasuredStates2;
        int iMax2;
        int iL;
        boolean z7 = w1.f26407a;
        int i10 = 0;
        if (getLayoutDirection() == 1) {
            c8 = 1;
            c9 = 0;
        } else {
            c8 = 0;
            c9 = 1;
        }
        if (s(this.f8896J)) {
            r(this.f8896J, i8, 0, i9, this.f8907U);
            iK = k(this.f8896J) + this.f8896J.getMeasuredWidth();
            iMax = Math.max(0, l(this.f8896J) + this.f8896J.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.f8896J.getMeasuredState());
        } else {
            iK = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (s(this.f8900N)) {
            r(this.f8900N, i8, 0, i9, this.f8907U);
            iK = k(this.f8900N) + this.f8900N.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f8900N) + this.f8900N.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f8900N.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = Math.max(currentContentInsetStart, iK);
        int iMax4 = Math.max(0, currentContentInsetStart - iK);
        int[] iArr = this.f8924o0;
        iArr[c8] = iMax4;
        if (s(this.f8893G)) {
            r(this.f8893G, i8, iMax3, i9, this.f8907U);
            iK2 = k(this.f8893G) + this.f8893G.getMeasuredWidth();
            iMax = Math.max(iMax, l(this.f8893G) + this.f8893G.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f8893G.getMeasuredState());
        } else {
            iK2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax5 = iMax3 + Math.max(currentContentInsetEnd, iK2);
        iArr[c9] = Math.max(0, currentContentInsetEnd - iK2);
        if (s(this.f8901O)) {
            iMax5 += q(this.f8901O, i8, iMax5, i9, 0, iArr);
            iMax = Math.max(iMax, l(this.f8901O) + this.f8901O.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f8901O.getMeasuredState());
        }
        if (s(this.f8897K)) {
            iMax5 += q(this.f8897K, i8, iMax5, i9, 0, iArr);
            iMax = Math.max(iMax, l(this.f8897K) + this.f8897K.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f8897K.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (((k1) childAt.getLayoutParams()).f26276b == 0 && s(childAt)) {
                iMax5 += q(childAt, i8, iMax5, i9, 0, iArr);
                iMax = Math.max(iMax, l(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i12 = this.f8910a0 + this.f8911b0;
        int i13 = this.f8908V + this.f8909W;
        if (s(this.f8894H)) {
            q(this.f8894H, i8, iMax5 + i13, i9, i12, iArr);
            int iK3 = k(this.f8894H) + this.f8894H.getMeasuredWidth();
            iL = l(this.f8894H) + this.f8894H.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f8894H.getMeasuredState());
            iMax2 = iK3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            iL = 0;
        }
        if (s(this.f8895I)) {
            iMax2 = Math.max(iMax2, q(this.f8895I, i8, iMax5 + i13, i9, iL + i12, iArr));
            iL += l(this.f8895I) + this.f8895I.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f8895I.getMeasuredState());
        }
        int iMax6 = Math.max(iMax, iL);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax6;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax5 + iMax2, getSuggestedMinimumWidth()), i8, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i9, iCombineMeasuredStates2 << 16);
        if (!this.f8931v0) {
            i10 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i14 = 0; i14 < childCount2; i14++) {
            View childAt2 = getChildAt(i14);
            if (s(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i10 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i10);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof n1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        n1 n1Var = (n1) parcelable;
        super.onRestoreInstanceState(n1Var.f6316G);
        ActionMenuView actionMenuView = this.f8893G;
        o oVar = actionMenuView != null ? actionMenuView.f8820V : null;
        int i8 = n1Var.f26321I;
        if (i8 != 0 && this.f8930u0 != null && oVar != null && (menuItemFindItem = oVar.findItem(i8)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (n1Var.f26322J) {
            f fVar = this.f8935z0;
            removeCallbacks(fVar);
            post(fVar);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i8) {
        super.onRtlPropertiesChanged(i8);
        d();
        X0 x7 = this.f8912c0;
        boolean z7 = i8 == 1;
        if (z7 == x7.f26207g) {
            return;
        }
        x7.f26207g = z7;
        if (!x7.f26208h) {
            x7.f26201a = x7.f26205e;
            x7.f26202b = x7.f26206f;
            return;
        }
        if (z7) {
            int i9 = x7.f26204d;
            if (i9 == Integer.MIN_VALUE) {
                i9 = x7.f26205e;
            }
            x7.f26201a = i9;
            int i10 = x7.f26203c;
            if (i10 == Integer.MIN_VALUE) {
                i10 = x7.f26206f;
            }
            x7.f26202b = i10;
            return;
        }
        int i11 = x7.f26203c;
        if (i11 == Integer.MIN_VALUE) {
            i11 = x7.f26205e;
        }
        x7.f26201a = i11;
        int i12 = x7.f26204d;
        if (i12 == Integer.MIN_VALUE) {
            i12 = x7.f26206f;
        }
        x7.f26202b = i12;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C3042n c3042n;
        q qVar;
        n1 n1Var = new n1(super.onSaveInstanceState());
        j1 j1Var = this.f8930u0;
        if (j1Var != null && (qVar = j1Var.f26271H) != null) {
            n1Var.f26321I = qVar.f25851a;
        }
        ActionMenuView actionMenuView = this.f8893G;
        n1Var.f26322J = (actionMenuView == null || (c3042n = actionMenuView.f8824c0) == null || !c3042n.j()) ? false : true;
        return n1Var;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f8920k0 = false;
        }
        if (!this.f8920k0) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f8920k0 = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f8920k0 = false;
        }
        return true;
    }

    public final int p(View view, int i8, int i9, int[] iArr) {
        k1 k1Var = (k1) view.getLayoutParams();
        int i10 = ((ViewGroup.MarginLayoutParams) k1Var).rightMargin - iArr[1];
        int iMax = i8 - Math.max(0, i10);
        iArr[1] = Math.max(0, -i10);
        int iJ = j(view, i9);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iJ, iMax, view.getMeasuredHeight() + iJ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) k1Var).leftMargin);
    }

    public final int q(View view, int i8, int i9, int i10, int i11, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i12 = marginLayoutParams.leftMargin - iArr[0];
        int i13 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i13) + Math.max(0, i12);
        iArr[0] = Math.max(0, -i12);
        iArr[1] = Math.max(0, -i13);
        view.measure(ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft() + iMax + i9, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i11, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void r(View view, int i8, int i9, int i10, int i11) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i8, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i9, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i10, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i11 >= 0) {
            if (mode != 0) {
                i11 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i11);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i11, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean s(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public void setBackInvokedCallbackEnabled(boolean z7) {
        if (this.f8934y0 != z7) {
            this.f8934y0 = z7;
            t();
        }
    }

    public void setCollapseContentDescription(int i8) {
        setCollapseContentDescription(i8 != 0 ? getContext().getText(i8) : null);
    }

    public void setCollapseIcon(int i8) {
        setCollapseIcon(r.h(getContext(), i8));
    }

    public void setCollapsible(boolean z7) {
        this.f8931v0 = z7;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i8) {
        if (i8 < 0) {
            i8 = Integer.MIN_VALUE;
        }
        if (i8 != this.f8914e0) {
            this.f8914e0 = i8;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i8) {
        if (i8 < 0) {
            i8 = Integer.MIN_VALUE;
        }
        if (i8 != this.f8913d0) {
            this.f8913d0 = i8;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i8) {
        setLogo(r.h(getContext(), i8));
    }

    public void setLogoDescription(int i8) {
        setLogoDescription(getContext().getText(i8));
    }

    public void setNavigationContentDescription(int i8) {
        setNavigationContentDescription(i8 != 0 ? getContext().getText(i8) : null);
    }

    public void setNavigationIcon(int i8) {
        setNavigationIcon(r.h(getContext(), i8));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f8896J.setOnClickListener(onClickListener);
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f8893G.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i8) {
        if (this.f8903Q != i8) {
            this.f8903Q = i8;
            if (i8 == 0) {
                this.f8902P = getContext();
            } else {
                this.f8902P = new ContextThemeWrapper(getContext(), i8);
            }
        }
    }

    public void setSubtitle(int i8) {
        setSubtitle(getContext().getText(i8));
    }

    public void setSubtitleTextColor(int i8) {
        setSubtitleTextColor(ColorStateList.valueOf(i8));
    }

    public void setTitle(int i8) {
        setTitle(getContext().getText(i8));
    }

    public void setTitleMarginBottom(int i8) {
        this.f8911b0 = i8;
        requestLayout();
    }

    public void setTitleMarginEnd(int i8) {
        this.f8909W = i8;
        requestLayout();
    }

    public void setTitleMarginStart(int i8) {
        this.f8908V = i8;
        requestLayout();
    }

    public void setTitleMarginTop(int i8) {
        this.f8910a0 = i8;
        requestLayout();
    }

    public void setTitleTextColor(int i8) {
        setTitleTextColor(ColorStateList.valueOf(i8));
    }

    public final void t() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcherA = i1.a(this);
            j1 j1Var = this.f8930u0;
            int i8 = 0;
            boolean z7 = (j1Var != null && j1Var.f26271H != null) && onBackInvokedDispatcherA != null && isAttachedToWindow() && this.f8934y0;
            if (z7 && this.f8933x0 == null) {
                if (this.f8932w0 == null) {
                    this.f8932w0 = i1.b(new g1(this, i8));
                }
                i1.c(onBackInvokedDispatcherA, this.f8932w0);
                this.f8933x0 = onBackInvokedDispatcherA;
                return;
            }
            if (z7 || (onBackInvokedDispatcher = this.f8933x0) == null) {
                return;
            }
            i1.d(onBackInvokedDispatcher, this.f8932w0);
            this.f8933x0 = null;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        k1 k1Var = new k1(context, attributeSet);
        k1Var.f25028a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, a.f24687b);
        k1Var.f25028a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        k1Var.f26276b = 0;
        return k1Var;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        C c8 = this.f8900N;
        if (c8 != null) {
            c8.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f8900N.setImageDrawable(drawable);
        } else {
            C c8 = this.f8900N;
            if (c8 != null) {
                c8.setImageDrawable(this.f8898L);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f8897K == null) {
                this.f8897K = new E(getContext(), null, 0);
            }
            if (!n(this.f8897K)) {
                b(this.f8897K, true);
            }
        } else {
            E e8 = this.f8897K;
            if (e8 != null && n(e8)) {
                removeView(this.f8897K);
                this.f8923n0.remove(this.f8897K);
            }
        }
        E e9 = this.f8897K;
        if (e9 != null) {
            e9.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f8897K == null) {
            this.f8897K = new E(getContext(), null, 0);
        }
        E e8 = this.f8897K;
        if (e8 != null) {
            e8.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        C c8 = this.f8896J;
        if (c8 != null) {
            c8.setContentDescription(charSequence);
            H.v(this.f8896J, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.f8896J)) {
                b(this.f8896J, true);
            }
        } else {
            C c8 = this.f8896J;
            if (c8 != null && n(c8)) {
                removeView(this.f8896J);
                this.f8923n0.remove(this.f8896J);
            }
        }
        C c9 = this.f8896J;
        if (c9 != null) {
            c9.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C3031h0 c3031h0 = this.f8895I;
            if (c3031h0 != null && n(c3031h0)) {
                removeView(this.f8895I);
                this.f8923n0.remove(this.f8895I);
            }
        } else {
            if (this.f8895I == null) {
                Context context = getContext();
                C3031h0 c3031h1 = new C3031h0(context, null);
                this.f8895I = c3031h1;
                c3031h1.setSingleLine();
                this.f8895I.setEllipsize(TextUtils.TruncateAt.END);
                int i8 = this.f8905S;
                if (i8 != 0) {
                    this.f8895I.setTextAppearance(context, i8);
                }
                ColorStateList colorStateList = this.f8919j0;
                if (colorStateList != null) {
                    this.f8895I.setTextColor(colorStateList);
                }
            }
            if (!n(this.f8895I)) {
                b(this.f8895I, true);
            }
        }
        C3031h0 c3031h2 = this.f8895I;
        if (c3031h2 != null) {
            c3031h2.setText(charSequence);
        }
        this.f8917h0 = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f8919j0 = colorStateList;
        C3031h0 c3031h0 = this.f8895I;
        if (c3031h0 != null) {
            c3031h0.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            C3031h0 c3031h0 = this.f8894H;
            if (c3031h0 != null && n(c3031h0)) {
                removeView(this.f8894H);
                this.f8923n0.remove(this.f8894H);
            }
        } else {
            if (this.f8894H == null) {
                Context context = getContext();
                C3031h0 c3031h1 = new C3031h0(context, null);
                this.f8894H = c3031h1;
                c3031h1.setSingleLine();
                this.f8894H.setEllipsize(TextUtils.TruncateAt.END);
                int i8 = this.f8904R;
                if (i8 != 0) {
                    this.f8894H.setTextAppearance(context, i8);
                }
                ColorStateList colorStateList = this.f8918i0;
                if (colorStateList != null) {
                    this.f8894H.setTextColor(colorStateList);
                }
            }
            if (!n(this.f8894H)) {
                b(this.f8894H, true);
            }
        }
        C3031h0 c3031h2 = this.f8894H;
        if (c3031h2 != null) {
            c3031h2.setText(charSequence);
        }
        this.f8916g0 = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f8918i0 = colorStateList;
        C3031h0 c3031h0 = this.f8894H;
        if (c3031h0 != null) {
            c3031h0.setTextColor(colorStateList);
        }
    }

    public void setOnMenuItemClickListener(l1 l1Var) {
    }
}
