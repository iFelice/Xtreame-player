package Y;

import N.i0;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Iterator;
import okhttp3.HttpUrl;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: renamed from: Y.y, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0412y extends FrameLayout {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ArrayList f7997G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f7998H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f7999I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public boolean f8000J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0412y(Context context, AttributeSet attributeSet, K k8) {
        View view;
        super(context, attributeSet);
        q0.h(context, "context");
        q0.h(attributeSet, "attrs");
        q0.h(k8, "fm");
        this.f7997G = new ArrayList();
        this.f7998H = new ArrayList();
        this.f8000J = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, X.a.f7504b, 0, 0);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(0) : classAttribute;
        String string = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sA = k8.A(id);
        if (classAttribute != null && abstractComponentCallbacksC0406sA == null) {
            if (id == -1) {
                throw new IllegalStateException(p000a.r.g("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? " with tag ".concat(string) : HttpUrl.FRAGMENT_ENCODE_SET));
            }
            F fD = k8.D();
            context.getClassLoader();
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sA2 = fD.a(classAttribute);
            q0.g(abstractComponentCallbacksC0406sA2, "fm.fragmentFactory.insta…ontext.classLoader, name)");
            abstractComponentCallbacksC0406sA2.f7961k0 = true;
            C0408u c0408u = abstractComponentCallbacksC0406sA2.f7950Z;
            if ((c0408u == null ? null : c0408u.f7979M) != null) {
                abstractComponentCallbacksC0406sA2.f7961k0 = true;
            }
            C0389a c0389a = new C0389a(k8);
            c0389a.f7827q = true;
            abstractComponentCallbacksC0406sA2.f7962l0 = this;
            c0389a.e(getId(), abstractComponentCallbacksC0406sA2, string, 1);
            if (c0389a.f7819i) {
                throw new IllegalStateException("This transaction is already being added to the back stack");
            }
            c0389a.f7828r.y(c0389a, true);
        }
        for (P p7 : k8.f7724c.l()) {
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
            if (abstractComponentCallbacksC0406s.f7954d0 == getId() && (view = abstractComponentCallbacksC0406s.f7963m0) != null && view.getParent() == null) {
                abstractComponentCallbacksC0406s.f7962l0 = this;
                p7.b();
            }
        }
    }

    public final void a(View view) {
        if (this.f7998H.contains(view)) {
            this.f7997G.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i8, ViewGroup.LayoutParams layoutParams) {
        q0.h(view, "child");
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof AbstractComponentCallbacksC0406s ? (AbstractComponentCallbacksC0406s) tag : null) != null) {
            super.addView(view, i8, layoutParams);
            return;
        }
        throw new IllegalStateException(("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.").toString());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        i0 i0VarJ;
        q0.h(windowInsets, "insets");
        i0 i0VarH = i0.h(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f7999I;
        if (onApplyWindowInsetsListener != null) {
            q0.e(onApplyWindowInsetsListener);
            WindowInsets windowInsetsOnApplyWindowInsets = onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets);
            q0.g(windowInsetsOnApplyWindowInsets, "onApplyWindowInsetsListe…lyWindowInsets(v, insets)");
            i0VarJ = i0.h(windowInsetsOnApplyWindowInsets, null);
        } else {
            i0VarJ = N.N.j(this, i0VarH);
        }
        q0.g(i0VarJ, "if (applyWindowInsetsLis…, insetsCompat)\n        }");
        if (!i0VarJ.f4901a.i()) {
            int childCount = getChildCount();
            for (int i8 = 0; i8 < childCount; i8++) {
                N.N.b(getChildAt(i8), i0VarJ);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        q0.h(canvas, "canvas");
        if (this.f8000J) {
            Iterator it = this.f7997G.iterator();
            while (it.hasNext()) {
                super.drawChild(canvas, (View) it.next(), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j8) {
        q0.h(canvas, "canvas");
        q0.h(view, "child");
        if (this.f8000J) {
            ArrayList arrayList = this.f7997G;
            if ((!arrayList.isEmpty()) && arrayList.contains(view)) {
                return false;
            }
        }
        return super.drawChild(canvas, view, j8);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        q0.h(view, "view");
        this.f7998H.remove(view);
        if (this.f7997G.remove(view)) {
            this.f8000J = true;
        }
        super.endViewTransition(view);
    }

    public final <F extends AbstractComponentCallbacksC0406s> F getFragment() {
        AbstractActivityC0409v abstractActivityC0409v;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s;
        K kR;
        View view = this;
        while (true) {
            abstractActivityC0409v = null;
            if (view == null) {
                abstractComponentCallbacksC0406s = null;
                break;
            }
            Object tag = view.getTag(R.id.fragment_container_view_tag);
            abstractComponentCallbacksC0406s = tag instanceof AbstractComponentCallbacksC0406s ? (AbstractComponentCallbacksC0406s) tag : null;
            if (abstractComponentCallbacksC0406s != null) {
                break;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        if (abstractComponentCallbacksC0406s == null) {
            for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
                if (context instanceof AbstractActivityC0409v) {
                    abstractActivityC0409v = (AbstractActivityC0409v) context;
                    break;
                }
            }
            if (abstractActivityC0409v == null) {
                throw new IllegalStateException("View " + this + " is not within a subclass of FragmentActivity.");
            }
            kR = abstractActivityC0409v.f7985X.R();
        } else {
            if (!abstractComponentCallbacksC0406s.r()) {
                throw new IllegalStateException("The Fragment " + abstractComponentCallbacksC0406s + " that owns View " + this + " has already been destroyed. Nested fragments should always use the child FragmentManager.");
            }
            kR = abstractComponentCallbacksC0406s.k();
        }
        return (F) kR.A(getId());
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        q0.h(windowInsets, "insets");
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        int childCount = getChildCount();
        while (true) {
            childCount--;
            if (-1 >= childCount) {
                super.removeAllViewsInLayout();
                return;
            } else {
                View childAt = getChildAt(childCount);
                q0.g(childAt, "view");
                a(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        q0.h(view, "view");
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i8) {
        View childAt = getChildAt(i8);
        q0.g(childAt, "view");
        a(childAt);
        super.removeViewAt(i8);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        q0.h(view, "view");
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i8, int i9) {
        int i10 = i8 + i9;
        for (int i11 = i8; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            q0.g(childAt, "view");
            a(childAt);
        }
        super.removeViews(i8, i9);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i8, int i9) {
        int i10 = i8 + i9;
        for (int i11 = i8; i11 < i10; i11++) {
            View childAt = getChildAt(i11);
            q0.g(childAt, "view");
            a(childAt);
        }
        super.removeViewsInLayout(i8, i9);
    }

    public final void setDrawDisappearingViewsLast(boolean z7) {
        this.f8000J = z7;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        q0.h(onApplyWindowInsetsListener, "listener");
        this.f7999I = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        q0.h(view, "view");
        if (view.getParent() == this) {
            this.f7998H.add(view);
        }
        super.startViewTransition(view);
    }
}
