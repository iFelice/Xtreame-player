package androidx.recyclerview.widget;

import E3.f;
import N.C0261j;
import N.C0266o;
import N.E;
import O1.A;
import O1.B;
import O1.C;
import O1.C0302a;
import O1.C0303b;
import O1.C0304c;
import O1.C0311j;
import O1.C0317p;
import O1.C0323w;
import O1.C0324x;
import O1.F;
import O1.G;
import O1.H;
import O1.I;
import O1.L;
import O1.M;
import O1.N;
import O1.O;
import O1.P;
import O1.Q;
import O1.S;
import O1.T;
import O1.U;
import O1.V;
import O1.X;
import O1.Y;
import O1.Z;
import O1.a0;
import O1.b0;
import O1.c0;
import O1.e0;
import O1.g0;
import O1.n0;
import O1.o0;
import O1.r;
import T.a;
import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import com.google.android.gms.common.api.d;
import com.google.protobuf.U2;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import okhttp3.HttpUrl;
import p027d2.v;
import p072j0.c;
import p132r.h;
import p132r.j;
import p132r.m;
import p142s1.g;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup {

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static boolean f9605i1 = false;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public static boolean f9606j1 = false;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final int[] f9607k1 = {R.attr.nestedScrollingEnabled};

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final float f9608l1 = (float) (Math.log(0.78d) / Math.log(0.9d));

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public static final boolean f9609m1;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static final boolean f9610n1;

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static final Class[] f9611o1;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final a f9612p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final Z f9613q1;

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public int f9614A0;

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public int f9615B0;

    /* JADX INFO: renamed from: C0, reason: collision with root package name */
    public int f9616C0;

    /* JADX INFO: renamed from: D0, reason: collision with root package name */
    public int f9617D0;

    /* JADX INFO: renamed from: E0, reason: collision with root package name */
    public N f9618E0;

    /* JADX INFO: renamed from: F0, reason: collision with root package name */
    public final int f9619F0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final float f9620G;

    /* JADX INFO: renamed from: G0, reason: collision with root package name */
    public final int f9621G0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final U f9622H;

    /* JADX INFO: renamed from: H0, reason: collision with root package name */
    public final float f9623H0;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final g f9624I;

    /* JADX INFO: renamed from: I0, reason: collision with root package name */
    public final float f9625I0;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public V f9626J;

    /* JADX INFO: renamed from: J0, reason: collision with root package name */
    public boolean f9627J0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final C0303b f9628K;

    /* JADX INFO: renamed from: K0, reason: collision with root package name */
    public final b0 f9629K0;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final C0304c f9630L;

    /* JADX INFO: renamed from: L0, reason: collision with root package name */
    public r f9631L0;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final o0 f9632M;

    /* JADX INFO: renamed from: M0, reason: collision with root package name */
    public final h f9633M0;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public boolean f9634N;

    /* JADX INFO: renamed from: N0, reason: collision with root package name */
    public final Y f9635N0;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final A f9636O;

    /* JADX INFO: renamed from: O0, reason: collision with root package name */
    public P f9637O0;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final Rect f9638P;

    /* JADX INFO: renamed from: P0, reason: collision with root package name */
    public ArrayList f9639P0;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final Rect f9640Q;

    /* JADX INFO: renamed from: Q0, reason: collision with root package name */
    public boolean f9641Q0;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final RectF f9642R;

    /* JADX INFO: renamed from: R0, reason: collision with root package name */
    public boolean f9643R0;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public C f9644S;

    /* JADX INFO: renamed from: S0, reason: collision with root package name */
    public final B f9645S0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public L f9646T;

    /* JADX INFO: renamed from: T0, reason: collision with root package name */
    public boolean f9647T0;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public T f9648U;

    /* JADX INFO: renamed from: U0, reason: collision with root package name */
    public e0 f9649U0;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final ArrayList f9650V;

    /* JADX INFO: renamed from: V0, reason: collision with root package name */
    public final int[] f9651V0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final ArrayList f9652W;

    /* JADX INFO: renamed from: W0, reason: collision with root package name */
    public C0266o f9653W0;

    /* JADX INFO: renamed from: X0, reason: collision with root package name */
    public final int[] f9654X0;

    /* JADX INFO: renamed from: Y0, reason: collision with root package name */
    public final int[] f9655Y0;

    /* JADX INFO: renamed from: Z0, reason: collision with root package name */
    public final int[] f9656Z0;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final ArrayList f9657a0;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public final ArrayList f9658a1;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public O f9659b0;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public final A f9660b1;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f9661c0;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public boolean f9662c1;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public boolean f9663d0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int f9664d1;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public boolean f9665e0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public int f9666e1;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public int f9667f0;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public final boolean f9668f1;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f9669g0;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public final B f9670g1;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f9671h0;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public final C0261j f9672h1;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f9673i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public int f9674j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f9675k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final AccessibilityManager f9676l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public boolean f9677m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f9678n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public int f9679o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public int f9680p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public G f9681q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public EdgeEffect f9682r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public EdgeEffect f9683s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public EdgeEffect f9684t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public EdgeEffect f9685u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public H f9686v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public int f9687w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public int f9688x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public VelocityTracker f9689y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public int f9690z0;

    static {
        f9609m1 = Build.VERSION.SDK_INT >= 23;
        f9610n1 = true;
        Class cls = Integer.TYPE;
        f9611o1 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        f9612p1 = new a(1);
        f9613q1 = new Z();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, pe.hf.black20.R.attr.recyclerViewStyle);
    }

    public static RecyclerView G(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            RecyclerView recyclerViewG = G(viewGroup.getChildAt(i8));
            if (recyclerViewG != null) {
                return recyclerViewG;
            }
        }
        return null;
    }

    public static c0 L(View view) {
        if (view == null) {
            return null;
        }
        return ((M) view.getLayoutParams()).f5294a;
    }

    public static void M(Rect rect, View view) {
        M m7 = (M) view.getLayoutParams();
        Rect rect2 = m7.f5295b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) m7).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) m7).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) m7).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) m7).bottomMargin);
    }

    private C0266o getScrollingChildHelper() {
        if (this.f9653W0 == null) {
            this.f9653W0 = new C0266o(this);
        }
        return this.f9653W0;
    }

    public static void l(c0 c0Var) {
        WeakReference weakReference = c0Var.f5354H;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view == c0Var.f5353G) {
                    return;
                }
                Object parent = view.getParent();
                view = parent instanceof View ? (View) parent : null;
            }
            c0Var.f5354H = null;
        }
    }

    public static int o(int i8, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i9) {
        if (i8 > 0 && edgeEffect != null && f.m(edgeEffect) != 0.0f) {
            int iRound = Math.round(f.u(edgeEffect, ((-i8) * 4.0f) / i9, 0.5f) * ((-i9) / 4.0f));
            if (iRound != i8) {
                edgeEffect.finish();
            }
            return i8 - iRound;
        }
        if (i8 >= 0 || edgeEffect2 == null || f.m(edgeEffect2) == 0.0f) {
            return i8;
        }
        float f8 = i9;
        int iRound2 = Math.round(f.u(edgeEffect2, (i8 * 4.0f) / f8, 0.5f) * (f8 / 4.0f));
        if (iRound2 != i8) {
            edgeEffect2.finish();
        }
        return i8 - iRound2;
    }

    public static void setDebugAssertionsEnabled(boolean z7) {
        f9605i1 = z7;
    }

    public static void setVerboseLoggingEnabled(boolean z7) {
        f9606j1 = z7;
    }

    public final void A() {
        if (this.f9683s0 != null) {
            return;
        }
        ((Z) this.f9681q0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f9683s0 = edgeEffect;
        if (this.f9634N) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String B() {
        return " " + super.toString() + ", adapter:" + this.f9644S + ", layout:" + this.f9646T + ", context:" + getContext();
    }

    public final void C(Y y7) {
        if (getScrollState() != 2) {
            y7.f5328o = 0;
            y7.f5329p = 0;
        } else {
            OverScroller overScroller = this.f9629K0.f5342I;
            y7.f5328o = overScroller.getFinalX() - overScroller.getCurrX();
            y7.f5329p = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public final View D(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0060  */
    public final boolean E(MotionEvent motionEvent) {
        boolean z7;
        int action = motionEvent.getAction();
        ArrayList arrayList = this.f9657a0;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            O o4 = (O) arrayList.get(i8);
            C0317p c0317p = (C0317p) o4;
            int i9 = c0317p.f5495v;
            if (i9 == 1) {
                boolean zE = c0317p.e(motionEvent.getX(), motionEvent.getY());
                boolean zD = c0317p.d(motionEvent.getX(), motionEvent.getY());
                if (motionEvent.getAction() == 0 && (zE || zD)) {
                    if (zD) {
                        c0317p.f5496w = 1;
                        c0317p.f5489p = (int) motionEvent.getX();
                    } else if (zE) {
                        c0317p.f5496w = 2;
                        c0317p.f5486m = (int) motionEvent.getY();
                    }
                    c0317p.g(2);
                    z7 = true;
                } else {
                    z7 = false;
                }
            } else if (i9 == 2) {
                z7 = true;
            } else {
                z7 = false;
            }
            if (z7 && action != 3) {
                this.f9659b0 = o4;
                return true;
            }
        }
        return false;
    }

    public final void F(int[] iArr) {
        int iE = this.f9630L.e();
        if (iE == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i8 = d.API_PRIORITY_OTHER;
        int i9 = Integer.MIN_VALUE;
        for (int i10 = 0; i10 < iE; i10++) {
            c0 c0VarL = L(this.f9630L.d(i10));
            if (!c0VarL.q()) {
                int iD = c0VarL.d();
                if (iD < i8) {
                    i8 = iD;
                }
                if (iD > i9) {
                    i9 = iD;
                }
            }
        }
        iArr[0] = i8;
        iArr[1] = i9;
    }

    public final c0 H(int i8) {
        c0 c0Var = null;
        if (this.f9677m0) {
            return null;
        }
        int iH = this.f9630L.h();
        for (int i9 = 0; i9 < iH; i9++) {
            c0 c0VarL = L(this.f9630L.g(i9));
            if (c0VarL != null && !c0VarL.j() && J(c0VarL) == i8) {
                if (!this.f9630L.k(c0VarL.f5353G)) {
                    return c0VarL;
                }
                c0Var = c0VarL;
            }
        }
        return c0Var;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x014c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0084  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c6  */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean I(int i8, int i9, int i10, int i11) {
        int iMax;
        int i12;
        int minFlingVelocity;
        boolean z7;
        int iH;
        int iM;
        int i13;
        PointF pointFA;
        int iB;
        int i14;
        int i15;
        L l4 = this.f9646T;
        int i16 = 0;
        if (l4 == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.f9671h0) {
            return false;
        }
        boolean zE = l4.e();
        boolean zF = this.f9646T.f();
        int i17 = (!zE || Math.abs(i8) < i10) ? 0 : i8;
        int iMax2 = (!zF || Math.abs(i9) < i10) ? 0 : i9;
        if (i17 == 0 && iMax2 == 0) {
            return false;
        }
        if (i17 == 0) {
            iMax = 0;
        } else {
            EdgeEffect edgeEffect = this.f9682r0;
            if (edgeEffect == null || f.m(edgeEffect) == 0.0f) {
                EdgeEffect edgeEffect2 = this.f9684t0;
                if (edgeEffect2 == null || f.m(edgeEffect2) == 0.0f) {
                    iMax = 0;
                } else if (h0(this.f9684t0, i17, getWidth())) {
                    this.f9684t0.onAbsorb(i17);
                    i17 = 0;
                }
            } else {
                int i18 = -i17;
                if (h0(this.f9682r0, i18, getWidth())) {
                    this.f9682r0.onAbsorb(i18);
                    i17 = 0;
                }
            }
            iMax = i17;
            i17 = 0;
        }
        if (iMax2 == 0) {
            i12 = iMax2;
            iMax2 = 0;
        } else {
            EdgeEffect edgeEffect3 = this.f9683s0;
            if (edgeEffect3 == null || f.m(edgeEffect3) == 0.0f) {
                EdgeEffect edgeEffect4 = this.f9685u0;
                if (edgeEffect4 == null || f.m(edgeEffect4) == 0.0f) {
                    i12 = iMax2;
                    iMax2 = 0;
                } else if (h0(this.f9685u0, iMax2, getHeight())) {
                    this.f9685u0.onAbsorb(iMax2);
                    iMax2 = 0;
                }
            } else {
                int i19 = -iMax2;
                if (h0(this.f9683s0, i19, getHeight())) {
                    this.f9683s0.onAbsorb(i19);
                    iMax2 = 0;
                }
            }
            i12 = 0;
        }
        b0 b0Var = this.f9629K0;
        if (iMax != 0 || iMax2 != 0) {
            int i20 = -i11;
            iMax = Math.max(i20, Math.min(iMax, i11));
            iMax2 = Math.max(i20, Math.min(iMax2, i11));
            m0(1);
            b0Var.a(iMax, iMax2);
        }
        if (i17 == 0 && i12 == 0) {
            return (iMax == 0 && iMax2 == 0) ? false : true;
        }
        float f8 = i17;
        float f9 = i12;
        if (dispatchNestedPreFling(f8, f9)) {
            return false;
        }
        boolean z8 = zE || zF;
        dispatchNestedFling(f8, f9, z8);
        N n7 = this.f9618E0;
        if (n7 != null) {
            C0324x c0324x = (C0324x) n7;
            L layoutManager = c0324x.f5553a.getLayoutManager();
            if (layoutManager != 0 && c0324x.f5553a.getAdapter() != null && ((Math.abs(i12) > (minFlingVelocity = c0324x.f5553a.getMinFlingVelocity()) || Math.abs(i17) > minFlingVelocity) && ((z7 = layoutManager instanceof X)))) {
                View viewC = null;
                g0 g0Var = !z7 ? null : new g0(c0324x, c0324x.f5553a.getContext(), i16);
                if (g0Var != null) {
                    if (z7 && (iH = layoutManager.H()) != 0) {
                        if (layoutManager.f()) {
                            viewC = C0324x.c(layoutManager, c0324x.e(layoutManager));
                        } else if (layoutManager.e()) {
                            viewC = C0324x.c(layoutManager, c0324x.d(layoutManager));
                        }
                        if (viewC == null || (iM = L.M(viewC)) == -1 || (pointFA = ((X) layoutManager).a((i13 = iH - 1))) == null) {
                            i15 = -1;
                            i13 = -1;
                        } else {
                            if (layoutManager.e()) {
                                iB = c0324x.b(layoutManager, c0324x.d(layoutManager), i17, 0);
                                if (pointFA.x < 0.0f) {
                                    iB = -iB;
                                }
                            } else {
                                iB = 0;
                            }
                            if (layoutManager.f()) {
                                int iB2 = c0324x.b(layoutManager, c0324x.e(layoutManager), 0, i12);
                                i14 = pointFA.y < 0.0f ? -iB2 : iB2;
                            } else {
                                i14 = 0;
                            }
                            if (layoutManager.f()) {
                                iB = i14;
                            }
                            if (iB == 0) {
                                i15 = -1;
                                i13 = -1;
                            } else {
                                int i21 = iM + iB;
                                if (i21 < 0) {
                                    i21 = 0;
                                }
                                if (i21 < iH) {
                                    i13 = i21;
                                }
                                i15 = -1;
                            }
                        }
                    } else {
                        i15 = -1;
                        i13 = -1;
                    }
                    if (i13 != i15) {
                        g0Var.f5537a = i13;
                        layoutManager.R0(g0Var);
                        return true;
                    }
                }
            }
        }
        if (!z8) {
            return false;
        }
        m0(1);
        int i22 = -i11;
        b0Var.a(Math.max(i22, Math.min(i17, i11)), Math.max(i22, Math.min(i12, i11)));
        return true;
    }

    public final int J(c0 c0Var) {
        if (c0Var.f(524) || !c0Var.g()) {
            return -1;
        }
        C0303b c0303b = this.f9628K;
        int i8 = c0Var.f5355I;
        ArrayList arrayList = c0303b.f5335b;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            C0302a c0302a = (C0302a) arrayList.get(i9);
            int i10 = c0302a.f5330a;
            if (i10 != 1) {
                if (i10 == 2) {
                    int i11 = c0302a.f5331b;
                    if (i11 <= i8) {
                        int i12 = c0302a.f5333d;
                        if (i11 + i12 > i8) {
                            return -1;
                        }
                        i8 -= i12;
                    } else {
                        continue;
                    }
                } else if (i10 == 8) {
                    int i13 = c0302a.f5331b;
                    if (i13 == i8) {
                        i8 = c0302a.f5333d;
                    } else {
                        if (i13 < i8) {
                            i8--;
                        }
                        if (c0302a.f5333d <= i8) {
                            i8++;
                        }
                    }
                }
            } else if (c0302a.f5331b <= i8) {
                i8 += c0302a.f5333d;
            }
        }
        return i8;
    }

    public final c0 K(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return L(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    public final Rect N(View view) {
        M m7 = (M) view.getLayoutParams();
        boolean z7 = m7.f5296c;
        Rect rect = m7.f5295b;
        if (!z7) {
            return rect;
        }
        if (this.f9635N0.f5320g && (m7.f5294a.m() || m7.f5294a.h())) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.f9652W;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            Rect rect2 = this.f9638P;
            rect2.set(0, 0, 0, 0);
            ((I) arrayList.get(i8)).a(rect2, view);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        m7.f5296c = false;
        return rect;
    }

    public final boolean O() {
        return !this.f9665e0 || this.f9677m0 || this.f9628K.g();
    }

    public boolean P() {
        return isChildrenDrawingOrderEnabled();
    }

    public final boolean Q() {
        return this.f9679o0 > 0;
    }

    public final void R(int i8) {
        if (this.f9646T == null) {
            return;
        }
        setScrollState(2);
        this.f9646T.G0(i8);
        awakenScrollBars();
    }

    public final void S() {
        int iH = this.f9630L.h();
        for (int i8 = 0; i8 < iH; i8++) {
            ((M) this.f9630L.g(i8).getLayoutParams()).f5296c = true;
        }
        ArrayList arrayList = (ArrayList) this.f9624I.f30047e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            M m7 = (M) ((c0) arrayList.get(i9)).f5353G.getLayoutParams();
            if (m7 != null) {
                m7.f5296c = true;
            }
        }
    }

    public final void T(boolean z7, int i8, int i9) {
        int i10 = i8 + i9;
        int iH = this.f9630L.h();
        for (int i11 = 0; i11 < iH; i11++) {
            c0 c0VarL = L(this.f9630L.g(i11));
            if (c0VarL != null && !c0VarL.q()) {
                int i12 = c0VarL.f5355I;
                Y y7 = this.f9635N0;
                if (i12 >= i10) {
                    if (f9606j1) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i11 + " holder " + c0VarL + " now at position " + (c0VarL.f5355I - i9));
                    }
                    c0VarL.n(-i9, z7);
                    y7.f5319f = true;
                } else if (i12 >= i8) {
                    if (f9606j1) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove attached child " + i11 + " holder " + c0VarL + " now REMOVED");
                    }
                    c0VarL.b(8);
                    c0VarL.n(-i9, z7);
                    c0VarL.f5355I = i8 - 1;
                    y7.f5319f = true;
                }
            }
        }
        g gVar = this.f9624I;
        ArrayList arrayList = (ArrayList) gVar.f30047e;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            c0 c0Var = (c0) arrayList.get(size);
            if (c0Var != null) {
                int i13 = c0Var.f5355I;
                if (i13 >= i10) {
                    if (f9606j1) {
                        Log.d("RecyclerView", "offsetPositionRecordsForRemove cached " + size + " holder " + c0Var + " now at position " + (c0Var.f5355I - i9));
                    }
                    c0Var.n(-i9, z7);
                } else if (i13 >= i8) {
                    c0Var.b(8);
                    gVar.h(size);
                }
            }
        }
        requestLayout();
    }

    public final void U() {
        this.f9679o0++;
    }

    public final void V(boolean z7) {
        int i8;
        AccessibilityManager accessibilityManager;
        int i9 = this.f9679o0 - 1;
        this.f9679o0 = i9;
        if (i9 < 1) {
            if (f9605i1 && i9 < 0) {
                throw new IllegalStateException(U2.i(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
            }
            this.f9679o0 = 0;
            if (z7) {
                int i10 = this.f9674j0;
                this.f9674j0 = 0;
                if (i10 != 0 && (accessibilityManager = this.f9676l0) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    accessibilityEventObtain.setContentChangeTypes(i10);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                ArrayList arrayList = this.f9658a1;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    c0 c0Var = (c0) arrayList.get(size);
                    if (c0Var.f5353G.getParent() == this && !c0Var.q() && (i8 = c0Var.f5369W) != -1) {
                        c0Var.f5353G.setImportantForAccessibility(i8);
                        c0Var.f5369W = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void W(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f9688x0) {
            int i8 = actionIndex == 0 ? 1 : 0;
            this.f9688x0 = motionEvent.getPointerId(i8);
            int x7 = (int) (motionEvent.getX(i8) + 0.5f);
            this.f9615B0 = x7;
            this.f9690z0 = x7;
            int y7 = (int) (motionEvent.getY(i8) + 0.5f);
            this.f9616C0 = y7;
            this.f9614A0 = y7;
        }
    }

    public final void X() {
        if (this.f9647T0 || !this.f9661c0) {
            return;
        }
        WeakHashMap weakHashMap = N.N.f4843a;
        postOnAnimation(this.f9660b1);
        this.f9647T0 = true;
    }

    public final void Y() {
        boolean z7;
        boolean z8;
        boolean z9 = false;
        if (this.f9677m0) {
            C0303b c0303b = this.f9628K;
            c0303b.l(c0303b.f5335b);
            c0303b.l(c0303b.f5336c);
            c0303b.f5339f = 0;
            if (this.f9678n0) {
                this.f9646T.i0();
            }
        }
        if (this.f9686v0 == null || !this.f9646T.S0()) {
            this.f9628K.c();
        } else {
            this.f9628K.j();
        }
        boolean z10 = this.f9641Q0 || this.f9643R0;
        if (!this.f9665e0 || this.f9686v0 == null || (!(z8 = this.f9677m0) && !z10 && !this.f9646T.f5284f)) {
            z7 = false;
        } else if (z8) {
            this.f9644S.getClass();
            z7 = false;
        } else {
            z7 = true;
        }
        Y y7 = this.f9635N0;
        y7.f5323j = z7;
        if (z7 && z10 && !this.f9677m0 && this.f9686v0 != null && this.f9646T.S0()) {
            z9 = true;
        }
        y7.f5324k = z9;
    }

    public final void Z(boolean z7) {
        this.f9678n0 = z7 | this.f9678n0;
        this.f9677m0 = true;
        int iH = this.f9630L.h();
        for (int i8 = 0; i8 < iH; i8++) {
            c0 c0VarL = L(this.f9630L.g(i8));
            if (c0VarL != null && !c0VarL.q()) {
                c0VarL.b(6);
            }
        }
        S();
        g gVar = this.f9624I;
        ArrayList arrayList = (ArrayList) gVar.f30047e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            c0 c0Var = (c0) arrayList.get(i9);
            if (c0Var != null) {
                c0Var.b(6);
                c0Var.a(null);
            }
        }
        C c8 = ((RecyclerView) gVar.f30051i).f9644S;
        gVar.g();
    }

    public final void a0(c0 c0Var, c cVar) {
        c0Var.f5362P &= -8193;
        boolean z7 = this.f9635N0.f5321h;
        o0 o0Var = this.f9632M;
        if (z7 && c0Var.m() && !c0Var.j() && !c0Var.q()) {
            this.f9644S.getClass();
            ((j) o0Var.f5469c).g(c0Var, c0Var.f5355I);
        }
        o0Var.c(c0Var, cVar);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i8, int i9) {
        L l4 = this.f9646T;
        if (l4 == null || !l4.Z(this, arrayList, i8, i9)) {
            super.addFocusables(arrayList, i8, i9);
        }
    }

    public final void b0() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f9682r0;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f9682r0.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.f9683s0;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.f9683s0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f9684t0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f9684t0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f9685u0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f9685u0.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public final int c0(int i8, float f8) {
        float height = f8 / getHeight();
        float width = i8 / getWidth();
        EdgeEffect edgeEffect = this.f9682r0;
        float f9 = 0.0f;
        if (edgeEffect == null || f.m(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f9684t0;
            if (edgeEffect2 != null && f.m(edgeEffect2) != 0.0f) {
                if (canScrollHorizontally(1)) {
                    this.f9684t0.onRelease();
                } else {
                    float fU = f.u(this.f9684t0, width, height);
                    if (f.m(this.f9684t0) == 0.0f) {
                        this.f9684t0.onRelease();
                    }
                    f9 = fU;
                }
                invalidate();
            }
        } else {
            if (canScrollHorizontally(-1)) {
                this.f9682r0.onRelease();
            } else {
                float f10 = -f.u(this.f9682r0, -width, 1.0f - height);
                if (f.m(this.f9682r0) == 0.0f) {
                    this.f9682r0.onRelease();
                }
                f9 = f10;
            }
            invalidate();
        }
        return Math.round(f9 * getWidth());
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof M) && this.f9646T.g((M) layoutParams);
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        L l4 = this.f9646T;
        if (l4 != null && l4.e()) {
            return this.f9646T.k(this.f9635N0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        L l4 = this.f9646T;
        if (l4 != null && l4.e()) {
            return this.f9646T.l(this.f9635N0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        L l4 = this.f9646T;
        if (l4 != null && l4.e()) {
            return this.f9646T.m(this.f9635N0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        L l4 = this.f9646T;
        if (l4 != null && l4.f()) {
            return this.f9646T.n(this.f9635N0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        L l4 = this.f9646T;
        if (l4 != null && l4.f()) {
            return this.f9646T.o(this.f9635N0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        L l4 = this.f9646T;
        if (l4 != null && l4.f()) {
            return this.f9646T.p(this.f9635N0);
        }
        return 0;
    }

    public final int d0(int i8, float f8) {
        float width = f8 / getWidth();
        float height = i8 / getHeight();
        EdgeEffect edgeEffect = this.f9683s0;
        float f9 = 0.0f;
        if (edgeEffect == null || f.m(edgeEffect) == 0.0f) {
            EdgeEffect edgeEffect2 = this.f9685u0;
            if (edgeEffect2 != null && f.m(edgeEffect2) != 0.0f) {
                if (canScrollVertically(1)) {
                    this.f9685u0.onRelease();
                } else {
                    float fU = f.u(this.f9685u0, height, 1.0f - width);
                    if (f.m(this.f9685u0) == 0.0f) {
                        this.f9685u0.onRelease();
                    }
                    f9 = fU;
                }
                invalidate();
            }
        } else {
            if (canScrollVertically(-1)) {
                this.f9683s0.onRelease();
            } else {
                float f10 = -f.u(this.f9683s0, -height, width);
                if (f.m(this.f9683s0) == 0.0f) {
                    this.f9683s0.onRelease();
                }
                f9 = f10;
            }
            invalidate();
        }
        return Math.round(f9 * getHeight());
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        L layoutManager = getLayoutManager();
        int iA = 0;
        if (layoutManager == null) {
            return false;
        }
        if (layoutManager.f()) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 92 || keyCode == 93) {
                int measuredHeight = getMeasuredHeight();
                if (keyCode == 93) {
                    j0(0, measuredHeight, false);
                } else {
                    j0(0, -measuredHeight, false);
                }
                return true;
            }
            if (keyCode == 122 || keyCode == 123) {
                boolean zS = layoutManager.S();
                if (keyCode == 122) {
                    if (zS) {
                        iA = getAdapter().a();
                    }
                } else if (!zS) {
                    iA = getAdapter().a();
                }
                k0(iA);
                return true;
            }
        } else if (layoutManager.e()) {
            int keyCode2 = keyEvent.getKeyCode();
            if (keyCode2 == 92 || keyCode2 == 93) {
                int measuredWidth = getMeasuredWidth();
                if (keyCode2 == 93) {
                    j0(measuredWidth, 0, false);
                } else {
                    j0(-measuredWidth, 0, false);
                }
                return true;
            }
            if (keyCode2 == 122 || keyCode2 == 123) {
                boolean zS2 = layoutManager.S();
                if (keyCode2 == 122) {
                    if (zS2) {
                        iA = getAdapter().a();
                    }
                } else if (!zS2) {
                    iA = getAdapter().a();
                }
                k0(iA);
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f8, float f9, boolean z7) {
        return getScrollingChildHelper().a(f8, f9, z7);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f8, float f9) {
        return getScrollingChildHelper().b(f8, f9);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i8, int i9, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i8, i9, 0, iArr, iArr2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i8, int i9, int i10, int i11, int[] iArr) {
        return getScrollingChildHelper().e(i8, i9, i10, i11, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z7;
        super.draw(canvas);
        ArrayList arrayList = this.f9652W;
        int size = arrayList.size();
        boolean z8 = false;
        for (int i8 = 0; i8 < size; i8++) {
            ((I) arrayList.get(i8)).c(canvas);
        }
        EdgeEffect edgeEffect = this.f9682r0;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z7 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f9634N ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f9682r0;
            z7 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.f9683s0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f9634N) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f9683s0;
            z7 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f9684t0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f9634N ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f9684t0;
            z7 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f9685u0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f9634N) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f9685u0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z8 = true;
            }
            z7 |= z8;
            canvas.restoreToCount(iSave4);
        }
        if ((z7 || this.f9686v0 == null || arrayList.size() <= 0 || !this.f9686v0.f()) && !z7) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j8) {
        return super.drawChild(canvas, view, j8);
    }

    public final void e0(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.f9638P;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof M) {
            M m7 = (M) layoutParams;
            if (!m7.f5296c) {
                int i8 = rect.left;
                Rect rect2 = m7.f5295b;
                rect.left = i8 - rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        this.f9646T.C0(this, view, this.f9638P, !this.f9665e0, view2 == null);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:31:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:33:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:34:0x0106  */
    /* JADX WARN: Code duplicated, block: B:41:0x0117  */
    public final boolean f0(int i8, int i9, MotionEvent motionEvent, int i10) {
        int i11;
        int i12;
        int i13;
        int i14;
        boolean z7;
        p();
        C c8 = this.f9644S;
        int[] iArr = this.f9656Z0;
        if (c8 != null) {
            iArr[0] = 0;
            iArr[1] = 0;
            g0(i8, i9, iArr);
            int i15 = iArr[0];
            int i16 = iArr[1];
            i12 = i15;
            i11 = i16;
            i13 = i8 - i15;
            i14 = i9 - i16;
        } else {
            i11 = 0;
            i12 = 0;
            i13 = 0;
            i14 = 0;
        }
        if (!this.f9652W.isEmpty()) {
            invalidate();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        int i17 = i11;
        v(i12, i11, i13, i14, this.f9654X0, i10, iArr);
        int i18 = iArr[0];
        int i19 = i13 - i18;
        int i20 = iArr[1];
        int i21 = i14 - i20;
        boolean z8 = (i18 == 0 && i20 == 0) ? false : true;
        int i22 = this.f9615B0;
        int[] iArr2 = this.f9654X0;
        int i23 = iArr2[0];
        this.f9615B0 = i22 - i23;
        int i24 = this.f9616C0;
        int i25 = iArr2[1];
        this.f9616C0 = i24 - i25;
        int[] iArr3 = this.f9655Y0;
        iArr3[0] = iArr3[0] + i23;
        iArr3[1] = iArr3[1] + i25;
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !Z3.H.m(motionEvent, 8194)) {
                float x7 = motionEvent.getX();
                float f8 = i19;
                float y7 = motionEvent.getY();
                float f9 = i21;
                if (f8 < 0.0f) {
                    y();
                    f.u(this.f9682r0, (-f8) / getWidth(), 1.0f - (y7 / getHeight()));
                } else {
                    if (f8 > 0.0f) {
                        z();
                        f.u(this.f9684t0, f8 / getWidth(), y7 / getHeight());
                    } else {
                        z7 = false;
                    }
                    if (f9 < 0.0f) {
                        A();
                        f.u(this.f9683s0, (-f9) / getHeight(), x7 / getWidth());
                    } else if (f9 > 0.0f) {
                        x();
                        f.u(this.f9685u0, f9 / getHeight(), 1.0f - (x7 / getWidth()));
                    } else {
                        if (!z7 || f8 != 0.0f || f9 != 0.0f) {
                        }
                        if (Build.VERSION.SDK_INT >= 31 && Z3.H.m(motionEvent, 4194304)) {
                            b0();
                        }
                    }
                    postInvalidateOnAnimation();
                    if (Build.VERSION.SDK_INT >= 31) {
                        b0();
                    }
                }
                z7 = true;
                if (f9 < 0.0f) {
                    A();
                    f.u(this.f9683s0, (-f9) / getHeight(), x7 / getWidth());
                } else if (f9 > 0.0f) {
                    x();
                    f.u(this.f9685u0, f9 / getHeight(), 1.0f - (x7 / getWidth()));
                } else {
                    if (!z7) {
                    }
                    if (Build.VERSION.SDK_INT >= 31) {
                        b0();
                    }
                }
                postInvalidateOnAnimation();
                if (Build.VERSION.SDK_INT >= 31) {
                    b0();
                }
            }
            n(i8, i9);
        }
        if (i12 != 0 || i17 != 0) {
            w(i12, i17);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z8 && i12 == 0 && i17 == 0) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0051  */
    /* JADX WARN: Code duplicated, block: B:46:0x007f  */
    /* JADX WARN: Code duplicated, block: B:48:0x0088 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0089  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i8) {
        View viewB0;
        int i9;
        byte b8;
        boolean z7;
        View viewG0 = this.f9646T.g0(view, i8);
        if (viewG0 != null) {
            return viewG0;
        }
        boolean z8 = (this.f9644S == null || this.f9646T == null || Q() || this.f9671h0) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        Y y7 = this.f9635N0;
        g gVar = this.f9624I;
        if (z8 && (i8 == 2 || i8 == 1)) {
            if (this.f9646T.f()) {
                if (focusFinder.findNextFocus(this, view, i8 == 2 ? 130 : 33) == null) {
                    z7 = true;
                } else {
                    z7 = false;
                }
            } else {
                z7 = false;
            }
            if (!z7 && this.f9646T.e()) {
                if (focusFinder.findNextFocus(this, view, (this.f9646T.f5280b.getLayoutDirection() == 1) ^ (i8 == 2) ? 66 : 17) == null) {
                    p();
                    if (D(view) == null) {
                        return null;
                    }
                    l0();
                    this.f9646T.b0(view, i8, gVar, y7);
                    n0(false);
                }
            } else if (z7) {
                p();
                if (D(view) == null) {
                    return null;
                }
                l0();
                this.f9646T.b0(view, i8, gVar, y7);
                n0(false);
            }
            viewB0 = focusFinder.findNextFocus(this, view, i8);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i8);
            if (viewFindNextFocus == null && z8) {
                p();
                if (D(view) == null) {
                    return null;
                }
                l0();
                viewB0 = this.f9646T.b0(view, i8, gVar, y7);
                n0(false);
            } else {
                viewB0 = viewFindNextFocus;
            }
        }
        if (viewB0 != null && !viewB0.hasFocusable()) {
            if (getFocusedChild() == null) {
                return super.focusSearch(view, i8);
            }
            e0(viewB0, null);
            return view;
        }
        if (viewB0 != null && viewB0 != this && viewB0 != view && D(viewB0) != null) {
            if (view == null || D(view) == null) {
                return viewB0;
            }
            int width = view.getWidth();
            int height = view.getHeight();
            Rect rect = this.f9638P;
            rect.set(0, 0, width, height);
            int width2 = viewB0.getWidth();
            int height2 = viewB0.getHeight();
            Rect rect2 = this.f9640Q;
            rect2.set(0, 0, width2, height2);
            offsetDescendantRectToMyCoords(view, rect);
            offsetDescendantRectToMyCoords(viewB0, rect2);
            int i10 = this.f9646T.f5280b.getLayoutDirection() == 1 ? -1 : 1;
            int i11 = rect.left;
            int i12 = rect2.left;
            if ((i11 < i12 || rect.right <= i12) && rect.right < rect2.right) {
                i9 = 1;
            } else {
                int i13 = rect.right;
                int i14 = rect2.right;
                i9 = ((i13 > i14 || i11 >= i14) && i11 > i12) ? -1 : 0;
            }
            int i15 = rect.top;
            int i16 = rect2.top;
            if ((i15 < i16 || rect.bottom <= i16) && rect.bottom < rect2.bottom) {
                b8 = 1;
            } else {
                int i17 = rect.bottom;
                int i18 = rect2.bottom;
                b8 = ((i17 > i18 || i15 >= i18) && i15 > i16) ? (byte) -1 : (byte) 0;
            }
            if (i8 != 1) {
                if (i8 != 2) {
                    if (i8 != 17) {
                        if (i8 != 33) {
                            if (i8 != 66) {
                                if (i8 != 130) {
                                    StringBuilder sb = new StringBuilder("Invalid direction: ");
                                    sb.append(i8);
                                    throw new IllegalArgumentException(U2.i(this, sb));
                                }
                                if (b8 > 0) {
                                    return viewB0;
                                }
                            } else if (i9 > 0) {
                                return viewB0;
                            }
                        } else if (b8 < 0) {
                            return viewB0;
                        }
                    } else if (i9 < 0) {
                        return viewB0;
                    }
                } else {
                    if (b8 > 0) {
                        return viewB0;
                    }
                    if (b8 == 0 && i9 * i10 > 0) {
                        return viewB0;
                    }
                }
            } else {
                if (b8 < 0) {
                    return viewB0;
                }
                if (b8 == 0 && i9 * i10 < 0) {
                    return viewB0;
                }
            }
        }
        return super.focusSearch(view, i8);
    }

    public final void g0(int i8, int i9, int[] iArr) {
        c0 c0Var;
        l0();
        U();
        Trace.beginSection("RV Scroll");
        Y y7 = this.f9635N0;
        C(y7);
        g gVar = this.f9624I;
        int iF0 = i8 != 0 ? this.f9646T.F0(i8, gVar, y7) : 0;
        int iH0 = i9 != 0 ? this.f9646T.H0(i9, gVar, y7) : 0;
        Trace.endSection();
        int iE = this.f9630L.e();
        for (int i10 = 0; i10 < iE; i10++) {
            View viewD = this.f9630L.d(i10);
            c0 c0VarK = K(viewD);
            if (c0VarK != null && (c0Var = c0VarK.f5361O) != null) {
                int left = viewD.getLeft();
                int top = viewD.getTop();
                View view = c0Var.f5353G;
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        V(true);
        n0(false);
        if (iArr != null) {
            iArr[0] = iF0;
            iArr[1] = iH0;
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        L l4 = this.f9646T;
        if (l4 != null) {
            return l4.t();
        }
        throw new IllegalStateException(U2.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        L l4 = this.f9646T;
        if (l4 != null) {
            return l4.u(getContext(), attributeSet);
        }
        throw new IllegalStateException(U2.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public C getAdapter() {
        return this.f9644S;
    }

    @Override // android.view.View
    public int getBaseline() {
        L l4 = this.f9646T;
        if (l4 == null) {
            return super.getBaseline();
        }
        l4.getClass();
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i8, int i9) {
        return super.getChildDrawingOrder(i8, i9);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f9634N;
    }

    public e0 getCompatAccessibilityDelegate() {
        return this.f9649U0;
    }

    public G getEdgeEffectFactory() {
        return this.f9681q0;
    }

    public H getItemAnimator() {
        return this.f9686v0;
    }

    public int getItemDecorationCount() {
        return this.f9652W.size();
    }

    public L getLayoutManager() {
        return this.f9646T;
    }

    public int getMaxFlingVelocity() {
        return this.f9621G0;
    }

    public int getMinFlingVelocity() {
        return this.f9619F0;
    }

    public long getNanoTime() {
        if (f9610n1) {
            return System.nanoTime();
        }
        return 0L;
    }

    public N getOnFlingListener() {
        return this.f9618E0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f9627J0;
    }

    public S getRecycledViewPool() {
        return this.f9624I.c();
    }

    public int getScrollState() {
        return this.f9687w0;
    }

    public final void h(c0 c0Var) {
        View view = c0Var.f5353G;
        boolean z7 = view.getParent() == this;
        this.f9624I.m(K(view));
        if (c0Var.l()) {
            this.f9630L.b(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z7) {
            this.f9630L.a(-1, view, true);
            return;
        }
        C0304c c0304c = this.f9630L;
        int iIndexOfChild = c0304c.f5347a.f5264G.indexOfChild(view);
        if (iIndexOfChild >= 0) {
            c0304c.f5348b.j(iIndexOfChild);
            c0304c.i(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    public final boolean h0(EdgeEffect edgeEffect, int i8, int i9) {
        if (i8 > 0) {
            return true;
        }
        float fM = f.m(edgeEffect) * i9;
        float fAbs = Math.abs(-i8) * 0.35f;
        float f8 = this.f9620G * 0.015f;
        double dLog = Math.log(fAbs / f8);
        double d6 = f9608l1;
        return ((float) (Math.exp((d6 / (d6 - 1.0d)) * dLog) * ((double) f8))) < fM;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().g(0);
    }

    public final void i(I i8) {
        L l4 = this.f9646T;
        if (l4 != null) {
            l4.c("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.f9652W;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(i8);
        S();
        requestLayout();
    }

    public final void i0(int i8, int i9) {
        j0(i8, i9, false);
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.f9661c0;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.f9671h0;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().f4916d;
    }

    public final void j(P p7) {
        if (this.f9639P0 == null) {
            this.f9639P0 = new ArrayList();
        }
        this.f9639P0.add(p7);
    }

    public final void j0(int i8, int i9, boolean z7) {
        L l4 = this.f9646T;
        if (l4 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f9671h0) {
            return;
        }
        if (!l4.e()) {
            i8 = 0;
        }
        if (!this.f9646T.f()) {
            i9 = 0;
        }
        if (i8 == 0 && i9 == 0) {
            return;
        }
        if (z7) {
            int i10 = i8 != 0 ? 1 : 0;
            if (i9 != 0) {
                i10 |= 2;
            }
            getScrollingChildHelper().h(i10, 1);
        }
        this.f9629K0.c(i8, i9, Integer.MIN_VALUE, null);
    }

    public final void k(String str) {
        if (Q()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException(U2.i(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        }
        if (this.f9680p0 > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(U2.i(this, new StringBuilder(HttpUrl.FRAGMENT_ENCODE_SET))));
        }
    }

    public void k0(int i8) {
        if (this.f9671h0) {
            return;
        }
        L l4 = this.f9646T;
        if (l4 == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            l4.Q0(this, i8);
        }
    }

    public final void l0() {
        int i8 = this.f9667f0 + 1;
        this.f9667f0 = i8;
        if (i8 != 1 || this.f9671h0) {
            return;
        }
        this.f9669g0 = false;
    }

    public final void m() {
        int iH = this.f9630L.h();
        for (int i8 = 0; i8 < iH; i8++) {
            c0 c0VarL = L(this.f9630L.g(i8));
            if (!c0VarL.q()) {
                c0VarL.f5356J = -1;
                c0VarL.f5359M = -1;
            }
        }
        g gVar = this.f9624I;
        ArrayList arrayList = (ArrayList) gVar.f30047e;
        int size = arrayList.size();
        for (int i9 = 0; i9 < size; i9++) {
            c0 c0Var = (c0) arrayList.get(i9);
            c0Var.f5356J = -1;
            c0Var.f5359M = -1;
        }
        ArrayList arrayList2 = (ArrayList) gVar.f30045c;
        int size2 = arrayList2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            c0 c0Var2 = (c0) arrayList2.get(i10);
            c0Var2.f5356J = -1;
            c0Var2.f5359M = -1;
        }
        ArrayList arrayList3 = (ArrayList) gVar.f30046d;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i11 = 0; i11 < size3; i11++) {
                c0 c0Var3 = (c0) ((ArrayList) gVar.f30046d).get(i11);
                c0Var3.f5356J = -1;
                c0Var3.f5359M = -1;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m0(int i8) {
        boolean zE = this.f9646T.e();
        int i9 = zE;
        if (this.f9646T.f()) {
            i9 = (zE ? 1 : 0) | 2;
        }
        getScrollingChildHelper().h(i9, i8);
    }

    public final void n(int i8, int i9) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f9682r0;
        if (edgeEffect == null || edgeEffect.isFinished() || i8 <= 0) {
            zIsFinished = false;
        } else {
            this.f9682r0.onRelease();
            zIsFinished = this.f9682r0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f9684t0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i8 < 0) {
            this.f9684t0.onRelease();
            zIsFinished |= this.f9684t0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f9683s0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i9 > 0) {
            this.f9683s0.onRelease();
            zIsFinished |= this.f9683s0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f9685u0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i9 < 0) {
            this.f9685u0.onRelease();
            zIsFinished |= this.f9685u0.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public final void n0(boolean z7) {
        if (this.f9667f0 < 1) {
            if (f9605i1) {
                throw new IllegalStateException(U2.i(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
            }
            this.f9667f0 = 1;
        }
        if (!z7 && !this.f9671h0) {
            this.f9669g0 = false;
        }
        if (this.f9667f0 == 1) {
            if (z7 && this.f9669g0 && !this.f9671h0 && this.f9646T != null && this.f9644S != null) {
                r();
            }
            if (!this.f9671h0) {
                this.f9669g0 = false;
            }
        }
        this.f9667f0--;
    }

    public final void o0(int i8) {
        getScrollingChildHelper().i(i8);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0055  */
    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.f9679o0 = 0;
        this.f9661c0 = true;
        this.f9665e0 = this.f9665e0 && !isLayoutRequested();
        this.f9624I.e();
        L l4 = this.f9646T;
        if (l4 != null) {
            l4.f5285g = true;
        }
        this.f9647T0 = false;
        if (f9610n1) {
            ThreadLocal threadLocal = r.f5505K;
            r rVar = (r) threadLocal.get();
            this.f9631L0 = rVar;
            if (rVar == null) {
                this.f9631L0 = new r();
                WeakHashMap weakHashMap = N.N.f4843a;
                Display display = getDisplay();
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                r rVar2 = this.f9631L0;
                rVar2.f5509I = (long) (1.0E9f / refreshRate);
                threadLocal.set(rVar2);
            }
            r rVar3 = this.f9631L0;
            rVar3.getClass();
            boolean z7 = f9605i1;
            ArrayList arrayList = rVar3.f5507G;
            if (z7 && arrayList.contains(this)) {
                throw new IllegalStateException("RecyclerView already present in worker list!");
            }
            arrayList.add(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        g gVar;
        r rVar;
        super.onDetachedFromWindow();
        H h8 = this.f9686v0;
        if (h8 != null) {
            h8.e();
        }
        p0();
        int i8 = 0;
        this.f9661c0 = false;
        L l4 = this.f9646T;
        if (l4 != null) {
            l4.f5285g = false;
            l4.a0(this);
        }
        this.f9658a1.clear();
        removeCallbacks(this.f9660b1);
        this.f9632M.getClass();
        while (n0.f5462d.h() != null) {
        }
        int i9 = 0;
        while (true) {
            gVar = this.f9624I;
            ArrayList arrayList = (ArrayList) gVar.f30047e;
            if (i9 >= arrayList.size()) {
                break;
            }
            p113o3.r.d(((c0) arrayList.get(i9)).f5353G);
            i9++;
        }
        gVar.f(((RecyclerView) gVar.f30051i).f9644S, false);
        N.P p7 = new N.P(this, i8);
        while (p7.hasNext()) {
            View view = (View) p7.next();
            R.a aVar = (R.a) view.getTag(pe.hf.black20.R.id.pooling_container_listener_holder_tag);
            if (aVar == null) {
                aVar = new R.a();
                view.setTag(pe.hf.black20.R.id.pooling_container_listener_holder_tag, aVar);
            }
            ArrayList arrayList2 = aVar.f6107a;
            int iM = v.m(arrayList2);
            if (-1 < iM) {
                A0.O.I(arrayList2.get(iM));
                throw null;
            }
        }
        if (!f9610n1 || (rVar = this.f9631L0) == null) {
            return;
        }
        boolean zRemove = rVar.f5507G.remove(this);
        if (f9605i1 && !zRemove) {
            throw new IllegalStateException("RecyclerView removal failed!");
        }
        this.f9631L0 = null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f9652W;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((I) arrayList.get(i8)).b(canvas, this);
        }
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue;
        boolean z7;
        int i8;
        int i9;
        int i10;
        if (this.f9646T != null && !this.f9671h0 && motionEvent.getAction() == 8) {
            float f8 = 0.0f;
            if ((motionEvent.getSource() & 2) != 0) {
                float f9 = this.f9646T.f() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.f9646T.e()) {
                    axisValue = motionEvent.getAxisValue(10);
                    i8 = 0;
                    z7 = false;
                    f8 = f9;
                } else {
                    f8 = f9;
                    axisValue = 0.0f;
                    i8 = 0;
                    z7 = false;
                }
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                axisValue = motionEvent.getAxisValue(26);
                if (this.f9646T.f()) {
                    f8 = -axisValue;
                } else {
                    if (!this.f9646T.e()) {
                    }
                    z7 = this.f9668f1;
                    i8 = 26;
                }
                axisValue = 0.0f;
                z7 = this.f9668f1;
                i8 = 26;
            } else {
                axisValue = 0.0f;
                i8 = 0;
                z7 = false;
            }
            int i11 = (int) (f8 * this.f9625I0);
            int i12 = (int) (axisValue * this.f9623H0);
            if (z7) {
                OverScroller overScroller = this.f9629K0.f5342I;
                j0((overScroller.getFinalX() - overScroller.getCurrX()) + i12, (overScroller.getFinalY() - overScroller.getCurrY()) + i11, true);
            } else {
                L l4 = this.f9646T;
                if (l4 == null) {
                    Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
                } else if (!this.f9671h0) {
                    int[] iArr = this.f9656Z0;
                    iArr[0] = 0;
                    iArr[1] = 0;
                    boolean zE = l4.e();
                    boolean zF = this.f9646T.f();
                    int i13 = zF ? (zE ? 1 : 0) | 2 : zE ? 1 : 0;
                    float y7 = motionEvent.getY();
                    float x7 = motionEvent.getX();
                    int iC0 = i12 - c0(i12, y7);
                    int iD0 = i11 - d0(i11, x7);
                    getScrollingChildHelper().h(i13, 1);
                    if (u(zE ? iC0 : 0, zF ? iD0 : 0, 1, this.f9656Z0, this.f9654X0)) {
                        iC0 -= iArr[0];
                        iD0 -= iArr[1];
                    }
                    int i14 = iD0;
                    int i15 = zE ? iC0 : 0;
                    if (zF) {
                        i10 = i14;
                        i9 = 1;
                    } else {
                        i9 = 1;
                        i10 = 0;
                    }
                    f0(i15, i10, motionEvent, i9);
                    r rVar = this.f9631L0;
                    if (rVar != null && (iC0 != 0 || i14 != 0)) {
                        rVar.a(this, iC0, i14);
                    }
                    o0(i9);
                }
            }
            if (i8 != 0 && !z7) {
                this.f9672h1.a(motionEvent, i8);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        boolean z8;
        if (this.f9671h0) {
            return false;
        }
        this.f9659b0 = null;
        if (E(motionEvent)) {
            VelocityTracker velocityTracker = this.f9689y0;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
            o0(0);
            b0();
            setScrollState(0);
            return true;
        }
        L l4 = this.f9646T;
        if (l4 == null) {
            return false;
        }
        boolean zE = l4.e();
        boolean zF = this.f9646T.f();
        if (this.f9689y0 == null) {
            this.f9689y0 = VelocityTracker.obtain();
        }
        this.f9689y0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.f9673i0) {
                this.f9673i0 = false;
            }
            this.f9688x0 = motionEvent.getPointerId(0);
            int x7 = (int) (motionEvent.getX() + 0.5f);
            this.f9615B0 = x7;
            this.f9690z0 = x7;
            int y7 = (int) (motionEvent.getY() + 0.5f);
            this.f9616C0 = y7;
            this.f9614A0 = y7;
            EdgeEffect edgeEffect = this.f9682r0;
            if (edgeEffect == null || f.m(edgeEffect) == 0.0f || canScrollHorizontally(-1)) {
                z7 = false;
            } else {
                f.u(this.f9682r0, 0.0f, 1.0f - (motionEvent.getY() / getHeight()));
                z7 = true;
            }
            EdgeEffect edgeEffect2 = this.f9684t0;
            if (edgeEffect2 != null && f.m(edgeEffect2) != 0.0f && !canScrollHorizontally(1)) {
                f.u(this.f9684t0, 0.0f, motionEvent.getY() / getHeight());
                z7 = true;
            }
            EdgeEffect edgeEffect3 = this.f9683s0;
            if (edgeEffect3 != null && f.m(edgeEffect3) != 0.0f && !canScrollVertically(-1)) {
                f.u(this.f9683s0, 0.0f, motionEvent.getX() / getWidth());
                z7 = true;
            }
            EdgeEffect edgeEffect4 = this.f9685u0;
            if (edgeEffect4 == null || f.m(edgeEffect4) == 0.0f || canScrollVertically(1)) {
                if (z7 || this.f9687w0 == 2) {
                }
                int[] iArr = this.f9655Y0;
                iArr[1] = 0;
                iArr[0] = 0;
                m0(0);
            } else {
                f.u(this.f9685u0, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
            }
            getParent().requestDisallowInterceptTouchEvent(true);
            setScrollState(1);
            o0(1);
            int[] iArr2 = this.f9655Y0;
            iArr2[1] = 0;
            iArr2[0] = 0;
            m0(0);
        } else if (actionMasked == 1) {
            this.f9689y0.clear();
            o0(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f9688x0);
            if (iFindPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f9688x0 + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x8 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y8 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.f9687w0 != 1) {
                int i8 = x8 - this.f9690z0;
                int i9 = y8 - this.f9614A0;
                if (!zE || Math.abs(i8) <= this.f9617D0) {
                    z8 = false;
                } else {
                    this.f9615B0 = x8;
                    z8 = true;
                }
                if (zF && Math.abs(i9) > this.f9617D0) {
                    this.f9616C0 = y8;
                } else if (z8) {
                }
                setScrollState(1);
            }
        } else if (actionMasked == 3) {
            VelocityTracker velocityTracker2 = this.f9689y0;
            if (velocityTracker2 != null) {
                velocityTracker2.clear();
            }
            o0(0);
            b0();
            setScrollState(0);
        } else if (actionMasked == 5) {
            this.f9688x0 = motionEvent.getPointerId(actionIndex);
            int x9 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f9615B0 = x9;
            this.f9690z0 = x9;
            int y9 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f9616C0 = y9;
            this.f9614A0 = y9;
        } else if (actionMasked == 6) {
            W(motionEvent);
        }
        return this.f9687w0 == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i8, int i9, int i10, int i11) {
        Trace.beginSection("RV OnLayout");
        r();
        Trace.endSection();
        this.f9665e0 = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i8, int i9) {
        L l4 = this.f9646T;
        if (l4 == null) {
            q(i8, i9);
            return;
        }
        boolean zR = l4.R();
        g gVar = this.f9624I;
        boolean z7 = false;
        Y y7 = this.f9635N0;
        if (zR) {
            int mode = View.MeasureSpec.getMode(i8);
            int mode2 = View.MeasureSpec.getMode(i9);
            this.f9646T.p0(gVar, y7, i8, i9);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z7 = true;
            }
            this.f9662c1 = z7;
            if (z7 || this.f9644S == null) {
                return;
            }
            if (y7.f5317d == 1) {
                s();
            }
            this.f9646T.J0(i8, i9);
            y7.f5322i = true;
            t();
            this.f9646T.L0(i8, i9);
            if (this.f9646T.O0()) {
                this.f9646T.J0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                y7.f5322i = true;
                t();
                this.f9646T.L0(i8, i9);
            }
            this.f9664d1 = getMeasuredWidth();
            this.f9666e1 = getMeasuredHeight();
            return;
        }
        if (this.f9663d0) {
            this.f9646T.p0(gVar, y7, i8, i9);
            return;
        }
        if (this.f9675k0) {
            l0();
            U();
            Y();
            V(true);
            if (y7.f5324k) {
                y7.f5320g = true;
            } else {
                this.f9628K.c();
                y7.f5320g = false;
            }
            this.f9675k0 = false;
            n0(false);
        } else if (y7.f5324k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        C c8 = this.f9644S;
        if (c8 != null) {
            y7.f5318e = c8.a();
        } else {
            y7.f5318e = 0;
        }
        l0();
        this.f9646T.p0(gVar, y7, i8, i9);
        n0(false);
        y7.f5320g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i8, Rect rect) {
        if (Q()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i8, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof V)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        V v5 = (V) parcelable;
        this.f9626J = v5;
        super.onRestoreInstanceState(v5.f6316G);
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        V v5 = new V(super.onSaveInstanceState());
        V v7 = this.f9626J;
        if (v7 != null) {
            v5.f5306I = v7.f5306I;
        } else {
            L l4 = this.f9646T;
            if (l4 != null) {
                v5.f5306I = l4.s0();
            } else {
                v5.f5306I = null;
            }
        }
        return v5;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i8, int i9, int i10, int i11) {
        super.onSizeChanged(i8, i9, i10, i11);
        if (i8 == i10 && i9 == i11) {
            return;
        }
        this.f9685u0 = null;
        this.f9683s0 = null;
        this.f9684t0 = null;
        this.f9682r0 = null;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00f1 A[PHI: r0
      0x00f1: PHI (r0v50 int) = (r0v35 int), (r0v54 int) binds: [B:46:0x00da, B:50:0x00ed] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z7;
        if (this.f9671h0 || this.f9673i0) {
            return false;
        }
        O o4 = this.f9659b0;
        if (o4 != null) {
            C0317p c0317p = (C0317p) o4;
            if (c0317p.f5495v != 0) {
                if (motionEvent.getAction() == 0) {
                    boolean zE = c0317p.e(motionEvent.getX(), motionEvent.getY());
                    boolean zD = c0317p.d(motionEvent.getX(), motionEvent.getY());
                    if (zE || zD) {
                        if (zD) {
                            c0317p.f5496w = 1;
                            c0317p.f5489p = (int) motionEvent.getX();
                        } else if (zE) {
                            c0317p.f5496w = 2;
                            c0317p.f5486m = (int) motionEvent.getY();
                        }
                        c0317p.g(2);
                    }
                } else if (motionEvent.getAction() == 1 && c0317p.f5495v == 2) {
                    c0317p.f5486m = 0.0f;
                    c0317p.f5489p = 0.0f;
                    c0317p.g(1);
                    c0317p.f5496w = 0;
                } else if (motionEvent.getAction() == 2 && c0317p.f5495v == 2) {
                    c0317p.h();
                    int i8 = c0317p.f5496w;
                    int i9 = c0317p.f5475b;
                    if (i8 == 1) {
                        float x7 = motionEvent.getX();
                        int[] iArr = c0317p.f5498y;
                        iArr[0] = i9;
                        int i10 = c0317p.f5490q - i9;
                        iArr[1] = i10;
                        float fMax = Math.max(i9, Math.min(i10, x7));
                        if (Math.abs(c0317p.f5488o - fMax) >= 2.0f) {
                            int iF = C0317p.f(c0317p.f5489p, fMax, iArr, c0317p.f5492s.computeHorizontalScrollRange(), c0317p.f5492s.computeHorizontalScrollOffset(), c0317p.f5490q);
                            if (iF != 0) {
                                c0317p.f5492s.scrollBy(iF, 0);
                            }
                            c0317p.f5489p = fMax;
                        }
                    }
                    if (c0317p.f5496w == 2) {
                        float y7 = motionEvent.getY();
                        int[] iArr2 = c0317p.f5497x;
                        iArr2[0] = i9;
                        int i11 = c0317p.f5491r - i9;
                        iArr2[1] = i11;
                        float fMax2 = Math.max(i9, Math.min(i11, y7));
                        if (Math.abs(c0317p.f5485l - fMax2) >= 2.0f) {
                            int iF2 = C0317p.f(c0317p.f5486m, fMax2, iArr2, c0317p.f5492s.computeVerticalScrollRange(), c0317p.f5492s.computeVerticalScrollOffset(), c0317p.f5491r);
                            if (iF2 != 0) {
                                c0317p.f5492s.scrollBy(0, iF2);
                            }
                            c0317p.f5486m = fMax2;
                        }
                    }
                }
            }
            int action = motionEvent.getAction();
            if (action == 3 || action == 1) {
                this.f9659b0 = null;
            }
        } else if (motionEvent.getAction() == 0 || !E(motionEvent)) {
            L l4 = this.f9646T;
            if (l4 == null) {
                return false;
            }
            boolean zE2 = l4.e();
            boolean zF = this.f9646T.f();
            if (this.f9689y0 == null) {
                this.f9689y0 = VelocityTracker.obtain();
            }
            int actionMasked = motionEvent.getActionMasked();
            int actionIndex = motionEvent.getActionIndex();
            int[] iArr3 = this.f9655Y0;
            if (actionMasked == 0) {
                iArr3[1] = 0;
                iArr3[0] = 0;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            motionEventObtain.offsetLocation(iArr3[0], iArr3[1]);
            if (actionMasked != 0) {
                if (actionMasked == 1) {
                    this.f9689y0.addMovement(motionEventObtain);
                    VelocityTracker velocityTracker = this.f9689y0;
                    int i12 = this.f9621G0;
                    velocityTracker.computeCurrentVelocity(1000, i12);
                    float f8 = zE2 ? -this.f9689y0.getXVelocity(this.f9688x0) : 0.0f;
                    float f9 = zF ? -this.f9689y0.getYVelocity(this.f9688x0) : 0.0f;
                    if ((f8 == 0.0f && f9 == 0.0f) || !I((int) f8, (int) f9, this.f9619F0, i12)) {
                        setScrollState(0);
                    }
                    VelocityTracker velocityTracker2 = this.f9689y0;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    o0(0);
                    b0();
                } else if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f9688x0);
                    if (iFindPointerIndex < 0) {
                        Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f9688x0 + " not found. Did any MotionEvents get skipped?");
                        return false;
                    }
                    int x8 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                    int y8 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                    int iMax = this.f9615B0 - x8;
                    int iMax2 = this.f9616C0 - y8;
                    if (this.f9687w0 != 1) {
                        if (zE2) {
                            iMax = iMax > 0 ? Math.max(0, iMax - this.f9617D0) : Math.min(0, iMax + this.f9617D0);
                            if (iMax != 0) {
                                z7 = true;
                            } else {
                                z7 = false;
                            }
                        } else {
                            z7 = false;
                        }
                        if (zF) {
                            iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - this.f9617D0) : Math.min(0, iMax2 + this.f9617D0);
                            if (iMax2 != 0) {
                                z7 = true;
                            }
                        }
                        if (z7) {
                            setScrollState(1);
                        }
                    }
                    if (this.f9687w0 == 1) {
                        int[] iArr4 = this.f9656Z0;
                        iArr4[0] = 0;
                        iArr4[1] = 0;
                        int iC0 = iMax - c0(iMax, motionEvent.getY());
                        int iD0 = iMax2 - d0(iMax2, motionEvent.getX());
                        boolean zU = u(zE2 ? iC0 : 0, zF ? iD0 : 0, 0, this.f9656Z0, this.f9654X0);
                        int[] iArr5 = this.f9654X0;
                        if (zU) {
                            iC0 -= iArr4[0];
                            iD0 -= iArr4[1];
                            iArr3[0] = iArr3[0] + iArr5[0];
                            iArr3[1] = iArr3[1] + iArr5[1];
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        int i13 = iC0;
                        int i14 = iD0;
                        this.f9615B0 = x8 - iArr5[0];
                        this.f9616C0 = y8 - iArr5[1];
                        if (f0(zE2 ? i13 : 0, zF ? i14 : 0, motionEvent, 0)) {
                            getParent().requestDisallowInterceptTouchEvent(true);
                        }
                        r rVar = this.f9631L0;
                        if (rVar != null && (i13 != 0 || i14 != 0)) {
                            rVar.a(this, i13, i14);
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker3 = this.f9689y0;
                    if (velocityTracker3 != null) {
                        velocityTracker3.clear();
                    }
                    o0(0);
                    b0();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.f9688x0 = motionEvent.getPointerId(actionIndex);
                    int x9 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.f9615B0 = x9;
                    this.f9690z0 = x9;
                    int y9 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.f9616C0 = y9;
                    this.f9614A0 = y9;
                } else if (actionMasked == 6) {
                    W(motionEvent);
                }
                motionEventObtain.recycle();
                return true;
            }
            this.f9688x0 = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.f9615B0 = x10;
            this.f9690z0 = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.f9616C0 = y10;
            this.f9614A0 = y10;
            m0(0);
            this.f9689y0.addMovement(motionEventObtain);
            motionEventObtain.recycle();
            return true;
        }
        VelocityTracker velocityTracker4 = this.f9689y0;
        if (velocityTracker4 != null) {
            velocityTracker4.clear();
        }
        o0(0);
        b0();
        setScrollState(0);
        return true;
    }

    public final void p() {
        if (!this.f9665e0 || this.f9677m0) {
            Trace.beginSection("RV FullInvalidate");
            r();
            Trace.endSection();
            return;
        }
        if (this.f9628K.g()) {
            C0303b c0303b = this.f9628K;
            int i8 = c0303b.f5339f;
            if ((i8 & 4) == 0 || (i8 & 11) != 0) {
                if (c0303b.g()) {
                    Trace.beginSection("RV FullInvalidate");
                    r();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection("RV PartialInvalidate");
            l0();
            U();
            this.f9628K.j();
            if (!this.f9669g0) {
                int iE = this.f9630L.e();
                for (int i9 = 0; i9 < iE; i9++) {
                    c0 c0VarL = L(this.f9630L.d(i9));
                    if (c0VarL != null && !c0VarL.q() && c0VarL.m()) {
                        r();
                    }
                }
                this.f9628K.b();
            }
            n0(true);
            V(true);
            Trace.endSection();
        }
    }

    public final void p0() {
        C0323w c0323w;
        setScrollState(0);
        b0 b0Var = this.f9629K0;
        b0Var.f5346M.removeCallbacks(b0Var);
        b0Var.f5342I.abortAnimation();
        L l4 = this.f9646T;
        if (l4 == null || (c0323w = l4.f5283e) == null) {
            return;
        }
        c0323w.h();
    }

    public final void q(int i8, int i9) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = N.N.f4843a;
        setMeasuredDimension(L.h(i8, paddingRight, getMinimumWidth()), L.h(i9, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    /* JADX WARN: Code duplicated, block: B:152:0x030e  */
    /* JADX WARN: Code duplicated, block: B:154:0x0314  */
    /* JADX WARN: Code duplicated, block: B:157:0x0321  */
    /* JADX WARN: Code duplicated, block: B:159:0x0325  */
    /* JADX WARN: Code duplicated, block: B:162:0x032d  */
    /* JADX WARN: Code duplicated, block: B:165:0x0334  */
    /* JADX WARN: Code duplicated, block: B:168:0x033e A[LOOP:3: B:161:0x032b->B:168:0x033e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:171:0x0349  */
    /* JADX WARN: Code duplicated, block: B:174:0x0350  */
    /* JADX WARN: Code duplicated, block: B:177:0x035a A[LOOP:4: B:170:0x0347->B:177:0x035a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x035f  */
    /* JADX WARN: Code duplicated, block: B:205:0x0341 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:206:0x0341 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:207:0x033c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:209:0x035d A[EDGE_INSN: B:209:0x035d->B:178:0x035d BREAK  A[LOOP:4: B:170:0x0347->B:177:0x035a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x0358 A[SYNTHETIC] */
    public final void r() {
        int i8;
        View viewFindViewById;
        int i9;
        int iB;
        int i10;
        int iMin;
        c0 c0VarH;
        View view;
        c0 c0VarH2;
        View view2;
        c cVar;
        if (this.f9644S == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.f9646T == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        Y y7 = this.f9635N0;
        y7.f5322i = false;
        int i11 = 1;
        boolean z7 = this.f9662c1 && !(this.f9664d1 == getWidth() && this.f9666e1 == getHeight());
        this.f9664d1 = 0;
        this.f9666e1 = 0;
        this.f9662c1 = false;
        if (y7.f5317d == 1) {
            s();
            this.f9646T.I0(this);
            t();
        } else {
            C0303b c0303b = this.f9628K;
            if ((c0303b.f5336c.isEmpty() || c0303b.f5335b.isEmpty()) && !z7 && this.f9646T.f5292n == getWidth() && this.f9646T.f5293o == getHeight()) {
                this.f9646T.I0(this);
            } else {
                this.f9646T.I0(this);
                t();
            }
        }
        int i12 = 4;
        y7.a(4);
        l0();
        U();
        y7.f5317d = 1;
        boolean z8 = y7.f5323j;
        g gVar = this.f9624I;
        o0 o0Var = this.f9632M;
        if (z8) {
            int iE = this.f9630L.e() - 1;
            while (iE >= 0) {
                c0 c0VarL = L(this.f9630L.d(iE));
                if (!c0VarL.q()) {
                    this.f9644S.getClass();
                    long j8 = c0VarL.f5355I;
                    this.f9686v0.getClass();
                    c cVar2 = new c(2);
                    cVar2.b(c0VarL);
                    c0 c0Var = (c0) ((j) o0Var.f5469c).d(j8);
                    if (c0Var == null || c0Var.q()) {
                        o0Var.b(c0VarL, cVar2);
                    } else {
                        n0 n0Var = (n0) ((m) o0Var.f5468b).get(c0Var);
                        boolean z9 = (n0Var == null || (n0Var.f5463a & i11) == 0) ? false : true;
                        n0 n0Var2 = (n0) ((m) o0Var.f5468b).get(c0VarL);
                        boolean z10 = (n0Var2 == null || (n0Var2.f5463a & i11) == 0) ? false : true;
                        if (z9 && c0Var == c0VarL) {
                            o0Var.b(c0VarL, cVar2);
                        } else {
                            c cVarK = o0Var.k(c0Var, i12);
                            o0Var.b(c0VarL, cVar2);
                            c cVarK2 = o0Var.k(c0VarL, 8);
                            if (cVarK == null) {
                                int i13 = 0;
                                for (int iE2 = this.f9630L.e(); i13 < iE2; iE2 = iE2) {
                                    c0 c0VarL2 = L(this.f9630L.d(i13));
                                    if (c0VarL2 != c0VarL) {
                                        this.f9644S.getClass();
                                        if (c0VarL2.f5355I == j8) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(c0VarL2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(c0VarL);
                                            throw new IllegalStateException(U2.i(this, sb));
                                        }
                                    }
                                    i13++;
                                }
                                Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + c0Var + " cannot be found but it is necessary for " + c0VarL + B());
                            } else {
                                c0Var.p(false);
                                if (z9) {
                                    h(c0Var);
                                }
                                if (c0Var != c0VarL) {
                                    if (z10) {
                                        h(c0VarL);
                                    }
                                    c0Var.f5360N = c0VarL;
                                    h(c0Var);
                                    gVar.m(c0Var);
                                    c0VarL.p(false);
                                    c0VarL.f5361O = c0Var;
                                }
                                if (this.f9686v0.a(c0Var, c0VarL, cVarK, cVarK2)) {
                                    X();
                                }
                            }
                        }
                    }
                }
                iE--;
                i12 = 4;
                i11 = 1;
            }
            for (int i14 = ((m) o0Var.f5468b).f29684I - 1; i14 >= 0; i14--) {
                c0 c0Var2 = (c0) ((m) o0Var.f5468b).f(i14);
                n0 n0Var3 = (n0) ((m) o0Var.f5468b).h(i14);
                int i15 = n0Var3.f5463a;
                int i16 = i15 & 3;
                B b8 = this.f9670g1;
                if (i16 == 3) {
                    RecyclerView recyclerView = b8.f5264G;
                    recyclerView.f9646T.y0(c0Var2.f5353G, recyclerView.f9624I);
                } else if ((i15 & 1) != 0) {
                    c cVar3 = n0Var3.f5464b;
                    if (cVar3 == null) {
                        RecyclerView recyclerView2 = b8.f5264G;
                        recyclerView2.f9646T.y0(c0Var2.f5353G, recyclerView2.f9624I);
                    } else {
                        b8.g(c0Var2, cVar3, n0Var3.f5465c);
                    }
                } else if ((i15 & 14) == 14) {
                    b8.f(c0Var2, n0Var3.f5464b, n0Var3.f5465c);
                } else {
                    if ((i15 & 12) == 12) {
                        c cVar4 = n0Var3.f5464b;
                        c cVar5 = n0Var3.f5465c;
                        b8.getClass();
                        c0Var2.p(false);
                        RecyclerView recyclerView3 = b8.f5264G;
                        if (!recyclerView3.f9677m0) {
                            C0311j c0311j = (C0311j) recyclerView3.f9686v0;
                            c0311j.getClass();
                            int i17 = cVar4.f25660G;
                            int i18 = cVar5.f25660G;
                            if (i17 == i18 && cVar4.f25661H == cVar5.f25661H) {
                                c0311j.c(c0Var2);
                            } else if (c0311j.g(c0Var2, i17, cVar4.f25661H, i18, cVar5.f25661H)) {
                                recyclerView3.X();
                            }
                        } else if (recyclerView3.f9686v0.a(c0Var2, c0Var2, cVar4, cVar5)) {
                            recyclerView3.X();
                        }
                    } else if ((i15 & 4) != 0) {
                        cVar = null;
                        b8.g(c0Var2, n0Var3.f5464b, null);
                    } else {
                        cVar = null;
                        if ((i15 & 8) != 0) {
                            b8.f(c0Var2, n0Var3.f5464b, n0Var3.f5465c);
                        }
                    }
                    n0Var3.f5463a = 0;
                    n0Var3.f5464b = cVar;
                    n0Var3.f5465c = cVar;
                    n0.f5462d.a(n0Var3);
                }
                cVar = null;
                n0Var3.f5463a = 0;
                n0Var3.f5464b = cVar;
                n0Var3.f5465c = cVar;
                n0.f5462d.a(n0Var3);
            }
        }
        View view3 = null;
        this.f9646T.x0(gVar);
        y7.f5315b = y7.f5318e;
        this.f9677m0 = false;
        this.f9678n0 = false;
        y7.f5323j = false;
        y7.f5324k = false;
        this.f9646T.f5284f = false;
        ArrayList arrayList = (ArrayList) gVar.f30046d;
        if (arrayList != null) {
            arrayList.clear();
        }
        L l4 = this.f9646T;
        if (l4.f5289k) {
            l4.f5288j = 0;
            l4.f5289k = false;
            gVar.n();
        }
        this.f9646T.o0(y7);
        V(true);
        n0(false);
        o0Var.d();
        int[] iArr = this.f9651V0;
        int i19 = iArr[0];
        int i20 = iArr[1];
        F(iArr);
        if (iArr[0] != i19 || iArr[1] != i20) {
            w(0, 0);
        }
        if (this.f9627J0 && this.f9644S != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                if (y7.f5326m != -1) {
                    this.f9644S.getClass();
                }
                if (this.f9630L.e() > 0) {
                    int i21 = y7.f5325l;
                    if (i21 != -1) {
                    }
                    iB = y7.b();
                    i10 = i9;
                    while (true) {
                        if (i10 >= iB) {
                            c0VarH2 = H(i10);
                            if (c0VarH2 == null) {
                                view2 = c0VarH2.f5353G;
                                if (view2.hasFocusable()) {
                                    view3 = view2;
                                } else {
                                    i10++;
                                }
                            }
                        }
                        for (iMin = Math.min(iB, i9) - 1; iMin >= 0; iMin--) {
                            c0VarH = H(iMin);
                            if (c0VarH == null) {
                                break;
                                break;
                            }
                            view = c0VarH.f5353G;
                            if (view.hasFocusable()) {
                                view3 = view;
                                break;
                            }
                        }
                    }
                }
                if (view3 != null) {
                    i8 = y7.f5327n;
                    if (i8 != -1) {
                        view3 = viewFindViewById;
                    }
                    view3.requestFocus();
                }
            } else if (this.f9630L.f5349c.contains(getFocusedChild())) {
                if (y7.f5326m != -1) {
                    this.f9644S.getClass();
                }
                if (this.f9630L.e() > 0) {
                    int i22 = y7.f5325l;
                    i9 = i22 != -1 ? i22 : 0;
                    iB = y7.b();
                    i10 = i9;
                    while (true) {
                        if (i10 >= iB) {
                            c0VarH2 = H(i10);
                            if (c0VarH2 == null) {
                                view2 = c0VarH2.f5353G;
                                if (view2.hasFocusable()) {
                                    view3 = view2;
                                } else {
                                    i10++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            c0VarH = H(iMin);
                            if (c0VarH == null) {
                                break;
                            }
                            view = c0VarH.f5353G;
                            if (view.hasFocusable()) {
                                view3 = view;
                                break;
                            }
                        }
                    }
                }
                if (view3 != null) {
                    i8 = y7.f5327n;
                    if (i8 != -1 && (viewFindViewById = view3.findViewById(i8)) != null && viewFindViewById.isFocusable()) {
                        view3 = viewFindViewById;
                    }
                    view3.requestFocus();
                }
            }
        }
        y7.f5326m = -1L;
        y7.f5325l = -1;
        y7.f5327n = -1;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z7) {
        c0 c0VarL = L(view);
        if (c0VarL != null) {
            if (c0VarL.l()) {
                c0VarL.f5362P &= -257;
            } else if (!c0VarL.q()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(c0VarL);
                throw new IllegalArgumentException(U2.i(this, sb));
            }
        } else if (f9605i1) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            throw new IllegalArgumentException(U2.i(this, sb2));
        }
        view.clearAnimation();
        L(view);
        super.removeDetachedView(view, z7);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (!this.f9646T.q0(this, view, view2) && view2 != null) {
            e0(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
        return this.f9646T.B0(this, view, rect, z7);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z7) {
        ArrayList arrayList = this.f9657a0;
        int size = arrayList.size();
        for (int i8 = 0; i8 < size; i8++) {
            ((O) arrayList.get(i8)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z7);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f9667f0 != 0 || this.f9671h0) {
            this.f9669g0 = true;
        } else {
            super.requestLayout();
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0054  */
    public final void s() {
        int iJ;
        n0 n0Var;
        View viewD;
        Y y7 = this.f9635N0;
        y7.a(1);
        C(y7);
        y7.f5322i = false;
        l0();
        o0 o0Var = this.f9632M;
        o0Var.d();
        U();
        Y();
        c0 c0VarK = null;
        View focusedChild = (this.f9627J0 && hasFocus() && this.f9644S != null) ? getFocusedChild() : null;
        if (focusedChild != null && (viewD = D(focusedChild)) != null) {
            c0VarK = K(viewD);
        }
        if (c0VarK == null) {
            y7.f5326m = -1L;
            y7.f5325l = -1;
            y7.f5327n = -1;
        } else {
            this.f9644S.getClass();
            y7.f5326m = -1L;
            if (this.f9677m0) {
                iJ = -1;
            } else if (c0VarK.j()) {
                iJ = c0VarK.f5356J;
            } else {
                RecyclerView recyclerView = c0VarK.f5370X;
                if (recyclerView == null) {
                    iJ = -1;
                } else {
                    iJ = recyclerView.J(c0VarK);
                }
            }
            y7.f5325l = iJ;
            View focusedChild2 = c0VarK.f5353G;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            y7.f5327n = id;
        }
        y7.f5321h = y7.f5323j && this.f9643R0;
        this.f9643R0 = false;
        this.f9641Q0 = false;
        y7.f5320g = y7.f5324k;
        y7.f5318e = this.f9644S.a();
        F(this.f9651V0);
        if (y7.f5323j) {
            int iE = this.f9630L.e();
            for (int i8 = 0; i8 < iE; i8++) {
                c0 c0VarL = L(this.f9630L.d(i8));
                if (!c0VarL.q()) {
                    if (c0VarL.h()) {
                        this.f9644S.getClass();
                    } else {
                        H h8 = this.f9686v0;
                        H.b(c0VarL);
                        c0VarL.e();
                        h8.getClass();
                        c cVar = new c(2);
                        cVar.b(c0VarL);
                        o0Var.c(c0VarL, cVar);
                        if (y7.f5321h && c0VarL.m() && !c0VarL.j() && !c0VarL.q() && !c0VarL.h()) {
                            this.f9644S.getClass();
                            ((j) o0Var.f5469c).g(c0VarL, c0VarL.f5355I);
                        }
                    }
                }
            }
        }
        if (y7.f5324k) {
            int iH = this.f9630L.h();
            for (int i9 = 0; i9 < iH; i9++) {
                c0 c0VarL2 = L(this.f9630L.g(i9));
                if (f9605i1 && c0VarL2.f5355I == -1 && !c0VarL2.j()) {
                    throw new IllegalStateException(U2.i(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                }
                if (!c0VarL2.q() && c0VarL2.f5356J == -1) {
                    c0VarL2.f5356J = c0VarL2.f5355I;
                }
            }
            boolean z7 = y7.f5319f;
            y7.f5319f = false;
            this.f9646T.n0(this.f9624I, y7);
            y7.f5319f = z7;
            for (int i10 = 0; i10 < this.f9630L.e(); i10++) {
                c0 c0VarL3 = L(this.f9630L.d(i10));
                if (!c0VarL3.q() && ((n0Var = (n0) ((m) o0Var.f5468b).get(c0VarL3)) == null || (n0Var.f5463a & 4) == 0)) {
                    H.b(c0VarL3);
                    boolean zF = c0VarL3.f(8192);
                    H h9 = this.f9686v0;
                    c0VarL3.e();
                    h9.getClass();
                    c cVar2 = new c(2);
                    cVar2.b(c0VarL3);
                    if (zF) {
                        a0(c0VarL3, cVar2);
                    } else {
                        n0 n0VarA = (n0) ((m) o0Var.f5468b).get(c0VarL3);
                        if (n0VarA == null) {
                            n0VarA = n0.a();
                            ((m) o0Var.f5468b).put(c0VarL3, n0VarA);
                        }
                        n0VarA.f5463a |= 2;
                        n0VarA.f5464b = cVar2;
                    }
                }
            }
            m();
        } else {
            m();
        }
        V(true);
        n0(false);
        y7.f5317d = 2;
    }

    @Override // android.view.View
    public final void scrollBy(int i8, int i9) {
        L l4 = this.f9646T;
        if (l4 == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.f9671h0) {
            return;
        }
        boolean zE = l4.e();
        boolean zF = this.f9646T.f();
        if (zE || zF) {
            if (!zE) {
                i8 = 0;
            }
            if (!zF) {
                i9 = 0;
            }
            f0(i8, i9, null, 0);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i8, int i9) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (!Q()) {
            super.sendAccessibilityEventUnchecked(accessibilityEvent);
        } else {
            int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
            this.f9674j0 |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        }
    }

    public void setAccessibilityDelegateCompat(e0 e0Var) {
        this.f9649U0 = e0Var;
        N.N.m(this, e0Var);
    }

    public void setAdapter(C c8) {
        setLayoutFrozen(false);
        C c9 = this.f9644S;
        U u7 = this.f9622H;
        if (c9 != null) {
            c9.f5265G.unregisterObserver(u7);
            this.f9644S.getClass();
        }
        H h8 = this.f9686v0;
        if (h8 != null) {
            h8.e();
        }
        L l4 = this.f9646T;
        g gVar = this.f9624I;
        if (l4 != null) {
            l4.w0(gVar);
            this.f9646T.x0(gVar);
        }
        ((ArrayList) gVar.f30045c).clear();
        gVar.g();
        C0303b c0303b = this.f9628K;
        c0303b.l(c0303b.f5335b);
        c0303b.l(c0303b.f5336c);
        c0303b.f5339f = 0;
        C c10 = this.f9644S;
        this.f9644S = c8;
        if (c8 != null) {
            c8.f5265G.registerObserver(u7);
        }
        L l8 = this.f9646T;
        if (l8 != null) {
            l8.Y(c10);
        }
        C c11 = this.f9644S;
        ((ArrayList) gVar.f30045c).clear();
        gVar.g();
        gVar.f(c10, true);
        S sC = gVar.c();
        if (c10 != null) {
            sC.f5303b--;
        }
        if (sC.f5303b == 0) {
            int i8 = 0;
            while (true) {
                SparseArray sparseArray = sC.f5302a;
                if (i8 >= sparseArray.size()) {
                    break;
                }
                Q q7 = (Q) sparseArray.valueAt(i8);
                Iterator it = q7.f5298a.iterator();
                while (it.hasNext()) {
                    p113o3.r.d(((c0) it.next()).f5353G);
                }
                q7.f5298a.clear();
                i8++;
            }
        }
        if (c11 != null) {
            sC.f5303b++;
        }
        gVar.e();
        this.f9635N0.f5319f = true;
        Z(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(F f8) {
        if (f8 == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z7) {
        if (z7 != this.f9634N) {
            this.f9685u0 = null;
            this.f9683s0 = null;
            this.f9684t0 = null;
            this.f9682r0 = null;
        }
        this.f9634N = z7;
        super.setClipToPadding(z7);
        if (this.f9665e0) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(G g8) {
        g8.getClass();
        this.f9681q0 = g8;
        this.f9685u0 = null;
        this.f9683s0 = null;
        this.f9684t0 = null;
        this.f9682r0 = null;
    }

    public void setHasFixedSize(boolean z7) {
        this.f9663d0 = z7;
    }

    public void setItemAnimator(H h8) {
        H h9 = this.f9686v0;
        if (h9 != null) {
            h9.e();
            this.f9686v0.f5267a = null;
        }
        this.f9686v0 = h8;
        if (h8 != null) {
            h8.f5267a = this.f9645S0;
        }
    }

    public void setItemViewCacheSize(int i8) {
        g gVar = this.f9624I;
        gVar.f30043a = i8;
        gVar.n();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z7) {
        suppressLayout(z7);
    }

    public void setLayoutManager(L l4) {
        B b8;
        if (l4 == this.f9646T) {
            return;
        }
        p0();
        L l8 = this.f9646T;
        g gVar = this.f9624I;
        if (l8 != null) {
            H h8 = this.f9686v0;
            if (h8 != null) {
                h8.e();
            }
            this.f9646T.w0(gVar);
            this.f9646T.x0(gVar);
            ((ArrayList) gVar.f30045c).clear();
            gVar.g();
            if (this.f9661c0) {
                L l9 = this.f9646T;
                l9.f5285g = false;
                l9.a0(this);
            }
            this.f9646T.M0(null);
            this.f9646T = null;
        } else {
            ((ArrayList) gVar.f30045c).clear();
            gVar.g();
        }
        C0304c c0304c = this.f9630L;
        c0304c.f5348b.i();
        ArrayList arrayList = c0304c.f5349c;
        int size = arrayList.size() - 1;
        while (true) {
            b8 = c0304c.f5347a;
            if (size < 0) {
                break;
            }
            View view = (View) arrayList.get(size);
            b8.getClass();
            c0 c0VarL = L(view);
            if (c0VarL != null) {
                int i8 = c0VarL.f5368V;
                RecyclerView recyclerView = b8.f5264G;
                if (recyclerView.Q()) {
                    c0VarL.f5369W = i8;
                    recyclerView.f9658a1.add(c0VarL);
                } else {
                    c0VarL.f5353G.setImportantForAccessibility(i8);
                }
                c0VarL.f5368V = 0;
            }
            arrayList.remove(size);
            size--;
        }
        RecyclerView recyclerView2 = b8.f5264G;
        int childCount = recyclerView2.getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = recyclerView2.getChildAt(i9);
            L(childAt);
            childAt.clearAnimation();
        }
        recyclerView2.removeAllViews();
        this.f9646T = l4;
        if (l4 != null) {
            if (l4.f5280b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(l4);
                sb.append(" is already attached to a RecyclerView:");
                throw new IllegalArgumentException(U2.i(l4.f5280b, sb));
            }
            l4.M0(this);
            if (this.f9661c0) {
                this.f9646T.f5285g = true;
            }
        }
        gVar.n();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z7) {
        C0266o scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.f4916d) {
            WeakHashMap weakHashMap = N.N.f4843a;
            E.o(scrollingChildHelper.f4915c);
        }
        scrollingChildHelper.f4916d = z7;
    }

    public void setOnFlingListener(N n7) {
        this.f9618E0 = n7;
    }

    @Deprecated
    public void setOnScrollListener(P p7) {
        this.f9637O0 = p7;
    }

    public void setPreserveFocusAfterLayout(boolean z7) {
        this.f9627J0 = z7;
    }

    public void setRecycledViewPool(S s7) {
        g gVar = this.f9624I;
        gVar.f(((RecyclerView) gVar.f30051i).f9644S, false);
        S s8 = (S) gVar.f30049g;
        if (s8 != null) {
            s8.f5303b--;
        }
        gVar.f30049g = s7;
        if (s7 != null && ((RecyclerView) gVar.f30051i).getAdapter() != null) {
            ((S) gVar.f30049g).f5303b++;
        }
        gVar.e();
    }

    @Deprecated
    public void setRecyclerListener(T t7) {
        this.f9648U = t7;
    }

    public void setScrollState(int i8) {
        C0323w c0323w;
        if (i8 == this.f9687w0) {
            return;
        }
        if (f9606j1) {
            StringBuilder sbK = p000a.r.k("setting scroll state to ", i8, " from ");
            sbK.append(this.f9687w0);
            Log.d("RecyclerView", sbK.toString(), new Exception());
        }
        this.f9687w0 = i8;
        if (i8 != 2) {
            b0 b0Var = this.f9629K0;
            b0Var.f5346M.removeCallbacks(b0Var);
            b0Var.f5342I.abortAnimation();
            L l4 = this.f9646T;
            if (l4 != null && (c0323w = l4.f5283e) != null) {
                c0323w.h();
            }
        }
        L l8 = this.f9646T;
        if (l8 != null) {
            l8.t0(i8);
        }
        P p7 = this.f9637O0;
        if (p7 != null) {
            p7.a(i8);
        }
        ArrayList arrayList = this.f9639P0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((P) this.f9639P0.get(size)).a(i8);
            }
        }
    }

    public void setScrollingTouchSlop(int i8) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i8 != 0) {
            if (i8 == 1) {
                this.f9617D0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i8 + "; using default value");
        }
        this.f9617D0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(a0 a0Var) {
        this.f9624I.f30050h = a0Var;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i8) {
        return getScrollingChildHelper().h(i8, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z7) {
        if (z7 != this.f9671h0) {
            k("Do not suppressLayout in layout or scroll");
            if (z7) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.f9671h0 = true;
                this.f9673i0 = true;
                p0();
                return;
            }
            this.f9671h0 = false;
            if (this.f9669g0 && this.f9646T != null && this.f9644S != null) {
                requestLayout();
            }
            this.f9669g0 = false;
        }
    }

    public final void t() {
        l0();
        U();
        Y y7 = this.f9635N0;
        y7.a(6);
        this.f9628K.c();
        y7.f5318e = this.f9644S.a();
        y7.f5316c = 0;
        if (this.f9626J != null) {
            C c8 = this.f9644S;
            int iB = p156u.h.b(c8.f5266H);
            if (iB == 1 ? c8.a() > 0 : iB != 2) {
                Parcelable parcelable = this.f9626J.f5306I;
                if (parcelable != null) {
                    this.f9646T.r0(parcelable);
                }
                this.f9626J = null;
            }
        }
        y7.f5320g = false;
        this.f9646T.n0(this.f9624I, y7);
        y7.f5319f = false;
        y7.f5323j = y7.f5323j && this.f9686v0 != null;
        y7.f5317d = 4;
        V(true);
        n0(false);
    }

    public final boolean u(int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i8, i9, i10, iArr, iArr2);
    }

    public final void v(int i8, int i9, int i10, int i11, int[] iArr, int i12, int[] iArr2) {
        getScrollingChildHelper().e(i8, i9, i10, i11, iArr, i12, iArr2);
    }

    public final void w(int i8, int i9) {
        this.f9680p0++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i8, scrollY - i9);
        P p7 = this.f9637O0;
        if (p7 != null) {
            p7.b(this, i8, i9);
        }
        ArrayList arrayList = this.f9639P0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((P) this.f9639P0.get(size)).b(this, i8, i9);
            }
        }
        this.f9680p0--;
    }

    public final void x() {
        if (this.f9685u0 != null) {
            return;
        }
        ((Z) this.f9681q0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f9685u0 = edgeEffect;
        if (this.f9634N) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final void y() {
        if (this.f9682r0 != null) {
            return;
        }
        ((Z) this.f9681q0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f9682r0 = edgeEffect;
        if (this.f9634N) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void z() {
        if (this.f9684t0 != null) {
            return;
        }
        ((Z) this.f9681q0).getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.f9684t0 = edgeEffect;
        if (this.f9634N) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    /* JADX WARN: Code duplicated, block: B:91:0x0402  */
    public RecyclerView(Context context, AttributeSet attributeSet, int i8) {
        float fA;
        int i9;
        char c8;
        boolean z7;
        Constructor constructor;
        Object[] objArr;
        super(context, attributeSet, i8);
        this.f9622H = new U(this);
        this.f9624I = new g(this);
        this.f9632M = new o0(0);
        this.f9636O = new A(this, 0);
        this.f9638P = new Rect();
        this.f9640Q = new Rect();
        this.f9642R = new RectF();
        this.f9650V = new ArrayList();
        this.f9652W = new ArrayList();
        this.f9657a0 = new ArrayList();
        this.f9667f0 = 0;
        this.f9677m0 = false;
        this.f9678n0 = false;
        this.f9679o0 = 0;
        this.f9680p0 = 0;
        this.f9681q0 = f9613q1;
        C0311j c0311j = new C0311j();
        c0311j.f5267a = null;
        c0311j.f5268b = new ArrayList();
        c0311j.f5269c = 120L;
        c0311j.f5270d = 120L;
        c0311j.f5271e = 250L;
        c0311j.f5272f = 250L;
        int i10 = 1;
        c0311j.f5419g = true;
        c0311j.f5420h = new ArrayList();
        c0311j.f5421i = new ArrayList();
        c0311j.f5422j = new ArrayList();
        c0311j.f5423k = new ArrayList();
        c0311j.f5424l = new ArrayList();
        c0311j.f5425m = new ArrayList();
        c0311j.f5426n = new ArrayList();
        c0311j.f5427o = new ArrayList();
        c0311j.f5428p = new ArrayList();
        c0311j.f5429q = new ArrayList();
        c0311j.f5430r = new ArrayList();
        this.f9686v0 = c0311j;
        this.f9687w0 = 0;
        this.f9688x0 = -1;
        this.f9623H0 = Float.MIN_VALUE;
        this.f9625I0 = Float.MIN_VALUE;
        this.f9627J0 = true;
        this.f9629K0 = new b0(this);
        this.f9633M0 = f9610n1 ? new h(1, 0) : null;
        Y y7 = new Y();
        y7.f5314a = -1;
        y7.f5315b = 0;
        y7.f5316c = 0;
        y7.f5317d = 1;
        y7.f5318e = 0;
        y7.f5319f = false;
        y7.f5320g = false;
        y7.f5321h = false;
        y7.f5322i = false;
        y7.f5323j = false;
        y7.f5324k = false;
        this.f9635N0 = y7;
        this.f9641Q0 = false;
        this.f9643R0 = false;
        B b8 = new B(this);
        this.f9645S0 = b8;
        this.f9647T0 = false;
        this.f9651V0 = new int[2];
        this.f9654X0 = new int[2];
        this.f9655Y0 = new int[2];
        this.f9656Z0 = new int[2];
        this.f9658a1 = new ArrayList();
        this.f9660b1 = new A(this, i10);
        this.f9664d1 = 0;
        this.f9666e1 = 0;
        this.f9670g1 = new B(this);
        this.f9672h1 = new C0261j(getContext(), new B(this));
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f9617D0 = viewConfiguration.getScaledTouchSlop();
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 26) {
            Method method = N.O.f4849a;
            fA = D.r.c(viewConfiguration);
        } else {
            fA = N.O.a(viewConfiguration, context);
        }
        this.f9623H0 = fA;
        this.f9625I0 = i11 >= 26 ? D.r.d(viewConfiguration) : N.O.a(viewConfiguration, context);
        this.f9619F0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f9621G0 = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f9620G = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.f9686v0.f5267a = b8;
        this.f9628K = new C0303b(new B(this));
        this.f9630L = new C0304c(new B(this));
        WeakHashMap weakHashMap = N.N.f4843a;
        if ((i11 < 26 || N.H.a(this) == 0) && i11 >= 26) {
            N.H.b(this, 8);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.f9676l0 = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new e0(this));
        int[] iArr = N1.a.f4934a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i8, 0);
        N.N.l(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i8);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f9634N = typedArrayObtainStyledAttributes.getBoolean(1, true);
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(5);
            if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
                throw new IllegalArgumentException(U2.i(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
            }
            Resources resources = getContext().getResources();
            i9 = 4;
            c8 = 2;
            new C0317p(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(pe.hf.black20.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(pe.hf.black20.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(pe.hf.black20.R.dimen.fastscroll_margin));
        } else {
            i9 = 4;
            c8 = 2;
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f9668f1 = context.getPackageManager().hasSystemFeature("android.hardware.rotaryencoder.lowres");
        if (string != null) {
            String strTrim = string.trim();
            if (strTrim.isEmpty()) {
                z7 = true;
            } else {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(".")) {
                    strTrim = RecyclerView.class.getPackage().getName() + '.' + strTrim;
                }
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(strTrim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(L.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(f9611o1);
                        Object[] objArr2 = new Object[i9];
                        objArr2[0] = context;
                        z7 = true;
                        try {
                            objArr2[1] = attributeSet;
                            objArr2[c8] = Integer.valueOf(i8);
                            objArr2[3] = 0;
                            objArr = objArr2;
                        } catch (NoSuchMethodException e8) {
                            e = e8;
                            NoSuchMethodException noSuchMethodException = e;
                            try {
                                constructor = clsAsSubclass.getConstructor(new Class[0]);
                                objArr = null;
                            } catch (NoSuchMethodException e9) {
                                e9.initCause(noSuchMethodException);
                                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strTrim, e9);
                            }
                        }
                    } catch (NoSuchMethodException e10) {
                        e = e10;
                        z7 = true;
                    }
                    constructor.setAccessible(z7);
                    setLayoutManager((L) constructor.newInstance(objArr));
                } catch (ClassCastException e11) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strTrim, e11);
                } catch (ClassNotFoundException e12) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strTrim, e12);
                } catch (IllegalAccessException e13) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strTrim, e13);
                } catch (InstantiationException e14) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e14);
                } catch (InvocationTargetException e15) {
                    throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strTrim, e15);
                }
            }
        } else {
            z7 = true;
        }
        int[] iArr2 = f9607k1;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i8, 0);
        N.N.l(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i8);
        boolean z8 = typedArrayObtainStyledAttributes2.getBoolean(0, z7);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z8);
        setTag(pe.hf.black20.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        L l4 = this.f9646T;
        if (l4 != null) {
            return l4.v(layoutParams);
        }
        throw new IllegalStateException(U2.i(this, new StringBuilder("RecyclerView has no LayoutManager")));
    }
}
