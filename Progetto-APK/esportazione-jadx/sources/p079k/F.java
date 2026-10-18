package p079k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import p086l.C3066z0;
import p086l.R0;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class F extends w implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Context f25726H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final o f25727I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final l f25728J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f25729K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f25730L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f25731M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final int f25732N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final R0 f25733O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC3013e f25734P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final ViewOnAttachStateChangeListenerC3014f f25735Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public PopupWindow.OnDismissListener f25736R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public View f25737S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public View f25738T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public z f25739U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public ViewTreeObserver f25740V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f25741W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public boolean f25742X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public int f25743Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public int f25744Z = 0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f25745a0;

    public F(int i8, int i9, Context context, View view, o oVar, boolean z7) {
        int i10 = 1;
        this.f25734P = new ViewTreeObserverOnGlobalLayoutListenerC3013e(this, i10);
        this.f25735Q = new ViewOnAttachStateChangeListenerC3014f(this, i10);
        this.f25726H = context;
        this.f25727I = oVar;
        this.f25729K = z7;
        this.f25728J = new l(oVar, LayoutInflater.from(context), z7, R.layout.abc_popup_menu_item_layout);
        this.f25731M = i8;
        this.f25732N = i9;
        Resources resources = context.getResources();
        this.f25730L = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f25737S = view;
        this.f25733O = new R0(context, null, i8, i9);
        oVar.b(this, context);
    }

    @Override // p079k.E
    public final boolean a() {
        return !this.f25741W && this.f25733O.f26154e0.isShowing();
    }

    @Override // p079k.A
    public final boolean c(G g8) {
        if (g8.hasVisibleItems()) {
            View view = this.f25738T;
            y yVar = new y(this.f25731M, this.f25732N, this.f25726H, view, g8, this.f25729K);
            z zVar = this.f25739U;
            yVar.f25897i = zVar;
            w wVar = yVar.f25898j;
            if (wVar != null) {
                wVar.f(zVar);
            }
            boolean zU = w.u(g8);
            yVar.f25896h = zU;
            w wVar2 = yVar.f25898j;
            if (wVar2 != null) {
                wVar2.o(zU);
            }
            yVar.f25899k = this.f25736R;
            this.f25736R = null;
            this.f25727I.c(false);
            R0 r7 = this.f25733O;
            int width = r7.f26135L;
            int iM = r7.m();
            if ((Gravity.getAbsoluteGravity(this.f25744Z, this.f25737S.getLayoutDirection()) & 7) == 5) {
                width += this.f25737S.getWidth();
            }
            if (!yVar.b()) {
                if (yVar.f25894f != null) {
                    yVar.d(width, iM, true, true);
                }
            }
            z zVar2 = this.f25739U;
            if (zVar2 != null) {
                zVar2.o(g8);
            }
            return true;
        }
        return false;
    }

    @Override // p079k.A
    public final void d(o oVar, boolean z7) {
        if (oVar != this.f25727I) {
            return;
        }
        dismiss();
        z zVar = this.f25739U;
        if (zVar != null) {
            zVar.d(oVar, z7);
        }
    }

    @Override // p079k.E
    public final void dismiss() {
        if (a()) {
            this.f25733O.dismiss();
        }
    }

    @Override // p079k.A
    public final void f(z zVar) {
        this.f25739U = zVar;
    }

    @Override // p079k.A
    public final boolean g() {
        return false;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p079k.E
    public final void h() {
        View view;
        if (a()) {
            return;
        }
        if (this.f25741W || (view = this.f25737S) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f25738T = view;
        R0 r7 = this.f25733O;
        r7.f26154e0.setOnDismissListener(this);
        r7.f26145V = this;
        r7.f26153d0 = true;
        r7.f26154e0.setFocusable(true);
        View view2 = this.f25738T;
        boolean z7 = this.f25740V == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f25740V = viewTreeObserver;
        if (z7) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f25734P);
        }
        view2.addOnAttachStateChangeListener(this.f25735Q);
        r7.f26144U = view2;
        r7.f26141R = this.f25744Z;
        boolean z8 = this.f25742X;
        Context context = this.f25726H;
        l lVar = this.f25728J;
        if (!z8) {
            this.f25743Y = w.m(lVar, context, this.f25730L);
            this.f25742X = true;
        }
        r7.p(this.f25743Y);
        r7.f26154e0.setInputMethodMode(2);
        Rect rect = this.f25887G;
        r7.f26152c0 = rect != null ? new Rect(rect) : null;
        r7.h();
        C3066z0 c3066z0 = r7.f26132I;
        c3066z0.setOnKeyListener(this);
        if (this.f25745a0) {
            o oVar = this.f25727I;
            if (oVar.f25833m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) c3066z0, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(oVar.f25833m);
                }
                frameLayout.setEnabled(false);
                c3066z0.addHeaderView(frameLayout, null, false);
            }
        }
        r7.n(lVar);
        r7.h();
    }

    @Override // p079k.A
    public final void i() {
        this.f25742X = false;
        l lVar = this.f25728J;
        if (lVar != null) {
            lVar.notifyDataSetChanged();
        }
    }

    @Override // p079k.E
    public final C3066z0 j() {
        return this.f25733O.f26132I;
    }

    @Override // p079k.w
    public final void n(View view) {
        this.f25737S = view;
    }

    @Override // p079k.w
    public final void o(boolean z7) {
        this.f25728J.f25816c = z7;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f25741W = true;
        this.f25727I.c(true);
        ViewTreeObserver viewTreeObserver = this.f25740V;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f25740V = this.f25738T.getViewTreeObserver();
            }
            this.f25740V.removeGlobalOnLayoutListener(this.f25734P);
            this.f25740V = null;
        }
        this.f25738T.removeOnAttachStateChangeListener(this.f25735Q);
        PopupWindow.OnDismissListener onDismissListener = this.f25736R;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i8, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i8 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // p079k.w
    public final void p(int i8) {
        this.f25744Z = i8;
    }

    @Override // p079k.w
    public final void q(int i8) {
        this.f25733O.f26135L = i8;
    }

    @Override // p079k.w
    public final void r(PopupWindow.OnDismissListener onDismissListener) {
        this.f25736R = onDismissListener;
    }

    @Override // p079k.w
    public final void s(boolean z7) {
        this.f25745a0 = z7;
    }

    @Override // p079k.w
    public final void t(int i8) {
        this.f25733O.i(i8);
    }

    @Override // p079k.w
    public final void l(o oVar) {
    }
}
