package p086l;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import p039f.S;
import p079k.A;
import p079k.B;
import p079k.C;
import p079k.G;
import p079k.o;
import p079k.q;
import p079k.r;
import p079k.w;
import p079k.z;
import pe.hf.black20.R;

/* JADX INFO: renamed from: l.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3042n implements A {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Context f26295G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Context f26296H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public o f26297I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final LayoutInflater f26298J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public z f26299K;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public C f26302N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public C3040m f26303O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public Drawable f26304P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f26305Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f26306R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f26307S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public int f26308T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public int f26309U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f26310V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f26311W;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public C3032i f26313Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public C3032i f26314Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public RunnableC3036k f26315a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public C3034j f26316b0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final int f26300L = R.layout.abc_action_menu_layout;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final int f26301M = R.layout.abc_action_menu_item_layout;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final SparseBooleanArray f26312X = new SparseBooleanArray();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final S f26317c0 = new S(this, 4);

    public C3042n(Context context) {
        this.f26295G = context;
        this.f26298J = LayoutInflater.from(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View a(q qVar, View view, ViewGroup viewGroup) {
        View actionView = qVar.getActionView();
        if (actionView == null || qVar.e()) {
            B b8 = view instanceof B ? (B) view : (B) this.f26298J.inflate(this.f26301M, viewGroup, false);
            b8.c(qVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) b8;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.f26302N);
            if (this.f26316b0 == null) {
                this.f26316b0 = new C3034j(this);
            }
            actionMenuItemView.setPopupCallback(this.f26316b0);
            actionView = (View) b8;
        }
        actionView.setVisibility(qVar.f25850C ? 8 : 0);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof C3046p)) {
            actionView.setLayoutParams(ActionMenuView.k(layoutParams));
        }
        return actionView;
    }

    @Override // p079k.A
    public final /* bridge */ /* synthetic */ boolean b(q qVar) {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p079k.A
    public final boolean c(G g8) {
        boolean z7;
        if (!g8.hasVisibleItems()) {
            return false;
        }
        G g9 = g8;
        while (true) {
            o oVar = g9.f25747z;
            if (oVar == this.f26297I) {
                break;
            }
            g9 = (G) oVar;
        }
        ViewGroup viewGroup = (ViewGroup) this.f26302N;
        View view = null;
        view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                View childAt = viewGroup.getChildAt(i8);
                if ((childAt instanceof B) && ((B) childAt).getItemData() == g9.f25746A) {
                    view = childAt;
                    break;
                }
            }
        }
        if (view == null) {
            return false;
        }
        g8.f25746A.getClass();
        int size = g8.f25826f.size();
        int i9 = 0;
        while (true) {
            if (i9 >= size) {
                z7 = false;
                break;
            }
            MenuItem item = g8.getItem(i9);
            if (item.isVisible() && item.getIcon() != null) {
                z7 = true;
                break;
            }
            i9++;
        }
        C3032i c3032i = new C3032i(this, this.f26296H, g8, view);
        this.f26314Z = c3032i;
        c3032i.f25896h = z7;
        w wVar = c3032i.f25898j;
        if (wVar != null) {
            wVar.o(z7);
        }
        C3032i c3032i2 = this.f26314Z;
        if (!c3032i2.b()) {
            if (c3032i2.f25894f == null) {
                throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
            }
            c3032i2.d(0, 0, false, false);
        }
        z zVar = this.f26299K;
        if (zVar != null) {
            zVar.o(g8);
        }
        return true;
    }

    @Override // p079k.A
    public final void d(o oVar, boolean z7) {
        h();
        C3032i c3032i = this.f26314Z;
        if (c3032i != null && c3032i.b()) {
            c3032i.f25898j.dismiss();
        }
        z zVar = this.f26299K;
        if (zVar != null) {
            zVar.d(oVar, z7);
        }
    }

    @Override // p079k.A
    public final /* bridge */ /* synthetic */ boolean e(q qVar) {
        return false;
    }

    @Override // p079k.A
    public final void f(z zVar) {
        this.f26299K = zVar;
    }

    @Override // p079k.A
    public final boolean g() {
        ArrayList arrayListL;
        int size;
        int i8;
        boolean z7;
        o oVar = this.f26297I;
        if (oVar != null) {
            arrayListL = oVar.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i9 = this.f26310V;
        int i10 = this.f26309U;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f26302N;
        int i11 = 0;
        boolean z8 = false;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            i8 = 2;
            z7 = true;
            if (i11 >= size) {
                break;
            }
            q qVar = (q) arrayListL.get(i11);
            int i14 = qVar.f25875y;
            if ((i14 & 2) == 2) {
                i12++;
            } else if ((i14 & 1) == 1) {
                i13++;
            } else {
                z8 = true;
            }
            if (this.f26311W && qVar.f25850C) {
                i9 = 0;
            }
            i11++;
        }
        if (this.f26306R && (z8 || i13 + i12 > i9)) {
            i9--;
        }
        int i15 = i9 - i12;
        SparseBooleanArray sparseBooleanArray = this.f26312X;
        sparseBooleanArray.clear();
        int i16 = 0;
        int i17 = 0;
        while (i16 < size) {
            q qVar2 = (q) arrayListL.get(i16);
            int i18 = qVar2.f25875y;
            boolean z9 = (i18 & 2) == i8;
            int i19 = qVar2.f25852b;
            if (z9) {
                View viewA = a(qVar2, null, viewGroup);
                viewA.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewA.getMeasuredWidth();
                i10 -= measuredWidth;
                if (i17 == 0) {
                    i17 = measuredWidth;
                }
                if (i19 != 0) {
                    sparseBooleanArray.put(i19, z7);
                }
                qVar2.g(z7);
            } else {
                if ((i18 & 1) == z7) {
                    boolean z10 = sparseBooleanArray.get(i19);
                    boolean z11 = (i15 > 0 || z10) && i10 > 0;
                    if (z11) {
                        View viewA2 = a(qVar2, null, viewGroup);
                        viewA2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        int measuredWidth2 = viewA2.getMeasuredWidth();
                        i10 -= measuredWidth2;
                        if (i17 == 0) {
                            i17 = measuredWidth2;
                        }
                        z11 &= i10 + i17 > 0;
                    }
                    if (z11 && i19 != 0) {
                        sparseBooleanArray.put(i19, true);
                    } else if (z10) {
                        sparseBooleanArray.put(i19, false);
                        for (int i20 = 0; i20 < i16; i20++) {
                            q qVar3 = (q) arrayListL.get(i20);
                            if (qVar3.f25852b == i19) {
                                if (qVar3.f()) {
                                    i15++;
                                }
                                qVar3.g(false);
                            }
                        }
                    }
                    if (z11) {
                        i15--;
                    }
                    qVar2.g(z11);
                } else {
                    qVar2.g(false);
                }
                i16++;
                i8 = 2;
                z7 = true;
            }
            i16++;
            i8 = 2;
            z7 = true;
        }
        return true;
    }

    public final boolean h() {
        Object obj;
        RunnableC3036k runnableC3036k = this.f26315a0;
        if (runnableC3036k != null && (obj = this.f26302N) != null) {
            ((View) obj).removeCallbacks(runnableC3036k);
            this.f26315a0 = null;
            return true;
        }
        C3032i c3032i = this.f26313Y;
        if (c3032i == null) {
            return false;
        }
        if (c3032i.b()) {
            c3032i.f25898j.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p079k.A
    public final void i() {
        int size;
        int i8;
        ViewGroup viewGroup = (ViewGroup) this.f26302N;
        ArrayList arrayList = null;
        if (viewGroup != null) {
            o oVar = this.f26297I;
            if (oVar != null) {
                oVar.i();
                ArrayList arrayListL = this.f26297I.l();
                int size2 = arrayListL.size();
                i8 = 0;
                for (int i9 = 0; i9 < size2; i9++) {
                    q qVar = (q) arrayListL.get(i9);
                    if (qVar.f()) {
                        View childAt = viewGroup.getChildAt(i8);
                        q itemData = childAt instanceof B ? ((B) childAt).getItemData() : null;
                        View viewA = a(qVar, childAt, viewGroup);
                        if (qVar != itemData) {
                            viewA.setPressed(false);
                            viewA.jumpDrawablesToCurrentState();
                        }
                        if (viewA != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) viewA.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(viewA);
                            }
                            ((ViewGroup) this.f26302N).addView(viewA, i8);
                        }
                        i8++;
                    }
                }
            } else {
                i8 = 0;
            }
            while (i8 < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i8) == this.f26303O) {
                    i8++;
                } else {
                    viewGroup.removeViewAt(i8);
                }
            }
        }
        ((View) this.f26302N).requestLayout();
        o oVar2 = this.f26297I;
        if (oVar2 != null) {
            oVar2.i();
            ArrayList arrayList2 = oVar2.f25829i;
            int size3 = arrayList2.size();
            for (int i10 = 0; i10 < size3; i10++) {
                r rVar = ((q) arrayList2.get(i10)).f25848A;
            }
        }
        o oVar3 = this.f26297I;
        if (oVar3 != null) {
            oVar3.i();
            arrayList = oVar3.f25830j;
        }
        if (!this.f26306R || arrayList == null || ((size = arrayList.size()) != 1 ? size <= 0 : !(!((q) arrayList.get(0)).f25850C))) {
            C3040m c3040m = this.f26303O;
            if (c3040m != null) {
                Object parent = c3040m.getParent();
                Object obj = this.f26302N;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f26303O);
                }
            }
        } else {
            if (this.f26303O == null) {
                this.f26303O = new C3040m(this, this.f26295G);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.f26303O.getParent();
            if (viewGroup3 != this.f26302N) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.f26303O);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f26302N;
                C3040m c3040m2 = this.f26303O;
                actionMenuView.getClass();
                C3046p c3046pJ = ActionMenuView.j();
                c3046pJ.f26338a = true;
                actionMenuView.addView(c3040m2, c3046pJ);
            }
        }
        ((ActionMenuView) this.f26302N).setOverflowReserved(this.f26306R);
    }

    public final boolean j() {
        C3032i c3032i = this.f26313Y;
        return c3032i != null && c3032i.b();
    }

    @Override // p079k.A
    public final void k(Context context, o oVar) {
        this.f26296H = context;
        LayoutInflater.from(context);
        this.f26297I = oVar;
        Resources resources = context.getResources();
        if (!this.f26307S) {
            this.f26306R = true;
        }
        int i8 = 2;
        this.f26308T = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i9 = configuration.screenWidthDp;
        int i10 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i9 > 600 || ((i9 > 960 && i10 > 720) || (i9 > 720 && i10 > 960))) {
            i8 = 5;
        } else if (i9 >= 500 || ((i9 > 640 && i10 > 480) || (i9 > 480 && i10 > 640))) {
            i8 = 4;
        } else if (i9 >= 360) {
            i8 = 3;
        }
        this.f26310V = i8;
        int measuredWidth = this.f26308T;
        if (this.f26306R) {
            if (this.f26303O == null) {
                C3040m c3040m = new C3040m(this, this.f26295G);
                this.f26303O = c3040m;
                if (this.f26305Q) {
                    c3040m.setImageDrawable(this.f26304P);
                    this.f26304P = null;
                    this.f26305Q = false;
                }
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f26303O.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.f26303O.getMeasuredWidth();
        } else {
            this.f26303O = null;
        }
        this.f26309U = measuredWidth;
        float f8 = resources.getDisplayMetrics().density;
    }

    public final boolean l() {
        o oVar;
        int i8 = 0;
        if (this.f26306R && !j() && (oVar = this.f26297I) != null && this.f26302N != null && this.f26315a0 == null) {
            oVar.i();
            if (!oVar.f25830j.isEmpty()) {
                RunnableC3036k runnableC3036k = new RunnableC3036k(i8, this, new C3032i(this, this.f26296H, this.f26297I, this.f26303O));
                this.f26315a0 = runnableC3036k;
                ((View) this.f26302N).post(runnableC3036k);
                return true;
            }
        }
        return false;
    }
}
