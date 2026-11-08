package p039f;

import N.C;
import N.E;
import N.N;
import N.U;
import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.WeakHashMap;
import p071j.a;
import p071j.j;
import p071j.k;
import p086l.InterfaceC3026f;
import p086l.InterfaceC3049q0;
import p086l.o1;

/* JADX INFO: loaded from: classes.dex */
public final class X extends AbstractC2987b implements InterfaceC3026f {

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final AccelerateInterpolator f25002k0 = new AccelerateInterpolator();

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final DecelerateInterpolator f25003l0 = new DecelerateInterpolator();

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Context f25004M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public Context f25005N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public ActionBarOverlayLayout f25006O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public ActionBarContainer f25007P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public InterfaceC3049q0 f25008Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public ActionBarContextView f25009R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final View f25010S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f25011T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public W f25012U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public W f25013V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public a f25014W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f25015X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public final ArrayList f25016Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f25017Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f25018a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f25019b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f25020c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f25021d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public k f25022e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f25023f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f25024g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final V f25025h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final V f25026i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public final S f25027j0;

    public X(Activity activity, boolean z7) {
        new ArrayList();
        this.f25016Y = new ArrayList();
        this.f25017Z = 0;
        int i8 = 1;
        this.f25018a0 = true;
        this.f25021d0 = true;
        this.f25025h0 = new V(this, 0);
        this.f25026i0 = new V(this, i8);
        this.f25027j0 = new S(this, i8);
        View decorView = activity.getWindow().getDecorView();
        I0(decorView);
        if (z7) {
            return;
        }
        this.f25010S = decorView.findViewById(R.id.content);
    }

    public final void G0(boolean z7) {
        U uL;
        U uL2;
        if (z7) {
            if (!this.f25020c0) {
                this.f25020c0 = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f25006O;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                M0(false);
            }
        } else if (this.f25020c0) {
            this.f25020c0 = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f25006O;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            M0(false);
        }
        if (!this.f25007P.isLaidOut()) {
            if (z7) {
                ((o1) this.f25008Q).f26323a.setVisibility(4);
                this.f25009R.setVisibility(0);
                return;
            } else {
                ((o1) this.f25008Q).f26323a.setVisibility(0);
                this.f25009R.setVisibility(8);
                return;
            }
        }
        if (z7) {
            o1 o1Var = (o1) this.f25008Q;
            uL = N.a(o1Var.f26323a);
            uL.a(0.0f);
            uL.c(100L);
            uL.d(new j(o1Var, 4));
            uL2 = this.f25009R.l(0, 200L);
        } else {
            o1 o1Var2 = (o1) this.f25008Q;
            U uA = N.a(o1Var2.f26323a);
            uA.a(1.0f);
            uA.c(200L);
            uA.d(new j(o1Var2, 0));
            uL = this.f25009R.l(8, 100L);
            uL2 = uA;
        }
        k kVar = new k();
        ArrayList arrayList = kVar.f25654a;
        arrayList.add(uL);
        View view = (View) uL.f4863a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) uL2.f4863a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(uL2);
        kVar.b();
    }

    public final Context H0() {
        if (this.f25005N == null) {
            TypedValue typedValue = new TypedValue();
            this.f25004M.getTheme().resolveAttribute(pe.hf.black20.R.attr.actionBarWidgetTheme, typedValue, true);
            int i8 = typedValue.resourceId;
            if (i8 != 0) {
                this.f25005N = new ContextThemeWrapper(this.f25004M, i8);
            } else {
                this.f25005N = this.f25004M;
            }
        }
        return this.f25005N;
    }

    public final void I0(View view) {
        InterfaceC3049q0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(pe.hf.black20.R.id.decor_content_parent);
        this.f25006O = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(pe.hf.black20.R.id.action_bar);
        if (callbackFindViewById instanceof InterfaceC3049q0) {
            wrapper = (InterfaceC3049q0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f25008Q = wrapper;
        this.f25009R = (ActionBarContextView) view.findViewById(pe.hf.black20.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(pe.hf.black20.R.id.action_bar_container);
        this.f25007P = actionBarContainer;
        InterfaceC3049q0 interfaceC3049q0 = this.f25008Q;
        if (interfaceC3049q0 == null || this.f25009R == null || actionBarContainer == null) {
            throw new IllegalStateException(X.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((o1) interfaceC3049q0).f26323a.getContext();
        this.f25004M = context;
        if ((((o1) this.f25008Q).f26324b & 4) != 0) {
            this.f25011T = true;
        }
        int i8 = context.getApplicationInfo().targetSdkVersion;
        this.f25008Q.getClass();
        K0(context.getResources().getBoolean(pe.hf.black20.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f25004M.obtainStyledAttributes(null, p031e.a.f24686a, pe.hf.black20.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f25006O;
            if (!actionBarOverlayLayout2.f8798M) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.f25024g0 = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f25007P;
            WeakHashMap weakHashMap = N.f4843a;
            E.k(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void J0(boolean z7) {
        if (this.f25011T) {
            return;
        }
        int i8 = z7 ? 4 : 0;
        o1 o1Var = (o1) this.f25008Q;
        int i9 = o1Var.f26324b;
        this.f25011T = true;
        o1Var.a((i8 & 4) | (i9 & (-5)));
    }

    public final void K0(boolean z7) {
        if (z7) {
            this.f25007P.setTabContainer(null);
            ((o1) this.f25008Q).getClass();
        } else {
            ((o1) this.f25008Q).getClass();
            this.f25007P.setTabContainer(null);
        }
        this.f25008Q.getClass();
        ((o1) this.f25008Q).f26323a.setCollapsible(false);
        this.f25006O.setHasNonEmbeddedTabs(false);
    }

    public final void L0(CharSequence charSequence) {
        o1 o1Var = (o1) this.f25008Q;
        if (o1Var.f26329g) {
            return;
        }
        o1Var.f26330h = charSequence;
        if ((o1Var.f26324b & 8) != 0) {
            Toolbar toolbar = o1Var.f26323a;
            toolbar.setTitle(charSequence);
            if (o1Var.f26329g) {
                N.n(toolbar.getRootView(), charSequence);
            }
        }
    }

    public final void M0(boolean z7) {
        boolean z8 = this.f25020c0 || !this.f25019b0;
        final S s7 = this.f25027j0;
        View view = this.f25010S;
        if (!z8) {
            if (this.f25021d0) {
                this.f25021d0 = false;
                k kVar = this.f25022e0;
                if (kVar != null) {
                    kVar.a();
                }
                int i8 = this.f25017Z;
                V v5 = this.f25025h0;
                if (i8 != 0 || (!this.f25023f0 && !z7)) {
                    v5.c();
                    return;
                }
                this.f25007P.setAlpha(1.0f);
                this.f25007P.setTransitioning(true);
                k kVar2 = new k();
                float f8 = -this.f25007P.getHeight();
                if (z7) {
                    int[] iArr = {0, 0};
                    this.f25007P.getLocationInWindow(iArr);
                    f8 -= iArr[1];
                }
                U uA = N.a(this.f25007P);
                uA.e(f8);
                final View view2 = (View) uA.f4863a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(s7 != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: N.S
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((p039f.X) s7.f24988H).f25007P.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z9 = kVar2.f25658e;
                ArrayList arrayList = kVar2.f25654a;
                if (!z9) {
                    arrayList.add(uA);
                }
                if (this.f25018a0 && view != null) {
                    U uA2 = N.a(view);
                    uA2.e(f8);
                    if (!kVar2.f25658e) {
                        arrayList.add(uA2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = f25002k0;
                boolean z10 = kVar2.f25658e;
                if (!z10) {
                    kVar2.f25656c = accelerateInterpolator;
                }
                if (!z10) {
                    kVar2.f25655b = 250L;
                }
                if (!z10) {
                    kVar2.f25657d = v5;
                }
                this.f25022e0 = kVar2;
                kVar2.b();
                return;
            }
            return;
        }
        if (this.f25021d0) {
            return;
        }
        this.f25021d0 = true;
        k kVar3 = this.f25022e0;
        if (kVar3 != null) {
            kVar3.a();
        }
        this.f25007P.setVisibility(0);
        int i9 = this.f25017Z;
        V v7 = this.f25026i0;
        if (i9 == 0 && (this.f25023f0 || z7)) {
            this.f25007P.setTranslationY(0.0f);
            float f9 = -this.f25007P.getHeight();
            if (z7) {
                int[] iArr2 = {0, 0};
                this.f25007P.getLocationInWindow(iArr2);
                f9 -= iArr2[1];
            }
            this.f25007P.setTranslationY(f9);
            k kVar4 = new k();
            U uA3 = N.a(this.f25007P);
            uA3.e(0.0f);
            final View view3 = (View) uA3.f4863a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(s7 != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: N.S
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((p039f.X) s7.f24988H).f25007P.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z11 = kVar4.f25658e;
            ArrayList arrayList2 = kVar4.f25654a;
            if (!z11) {
                arrayList2.add(uA3);
            }
            if (this.f25018a0 && view != null) {
                view.setTranslationY(f9);
                U uA4 = N.a(view);
                uA4.e(0.0f);
                if (!kVar4.f25658e) {
                    arrayList2.add(uA4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = f25003l0;
            boolean z12 = kVar4.f25658e;
            if (!z12) {
                kVar4.f25656c = decelerateInterpolator;
            }
            if (!z12) {
                kVar4.f25655b = 250L;
            }
            if (!z12) {
                kVar4.f25657d = v7;
            }
            this.f25022e0 = kVar4;
            kVar4.b();
        } else {
            this.f25007P.setAlpha(1.0f);
            this.f25007P.setTranslationY(0.0f);
            if (this.f25018a0 && view != null) {
                view.setTranslationY(0.0f);
            }
            v7.c();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f25006O;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = N.f4843a;
            C.c(actionBarOverlayLayout);
        }
    }

    public X(Dialog dialog) {
        new ArrayList();
        this.f25016Y = new ArrayList();
        this.f25017Z = 0;
        int i8 = 1;
        this.f25018a0 = true;
        this.f25021d0 = true;
        this.f25025h0 = new V(this, 0);
        this.f25026i0 = new V(this, i8);
        this.f25027j0 = new S(this, i8);
        I0(dialog.getWindow().getDecorView());
    }
}
