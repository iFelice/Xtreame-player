package Y;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.ads.interactivemedia.v3.impl.data.zzbz;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.WeakHashMap;
import p032e0.EnumC2981i;
import p032e0.EnumC2982j;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class P {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final p096m2.e f7776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p096m2.o f7777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AbstractComponentCallbacksC0406s f7778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7779d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f7780e = -1;

    public P(p096m2.e eVar, p096m2.o oVar, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        this.f7776a = eVar;
        this.f7777b = oVar;
        this.f7778c = abstractComponentCallbacksC0406s;
    }

    public final void a() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + abstractComponentCallbacksC0406s);
        }
        Bundle bundle = abstractComponentCallbacksC0406s.f7932H;
        abstractComponentCallbacksC0406s.f7951a0.L();
        abstractComponentCallbacksC0406s.f7931G = 3;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.u();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onActivityCreated()"));
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + abstractComponentCallbacksC0406s);
        }
        View view = abstractComponentCallbacksC0406s.f7963m0;
        if (view != null) {
            Bundle bundle2 = abstractComponentCallbacksC0406s.f7932H;
            SparseArray<Parcelable> sparseArray = abstractComponentCallbacksC0406s.f7933I;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                abstractComponentCallbacksC0406s.f7933I = null;
            }
            if (abstractComponentCallbacksC0406s.f7963m0 != null) {
                abstractComponentCallbacksC0406s.f7972v0.f7834J.b(abstractComponentCallbacksC0406s.f7934J);
                abstractComponentCallbacksC0406s.f7934J = null;
            }
            abstractComponentCallbacksC0406s.f7961k0 = false;
            abstractComponentCallbacksC0406s.I(bundle2);
            if (!abstractComponentCallbacksC0406s.f7961k0) {
                throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onViewStateRestored()"));
            }
            if (abstractComponentCallbacksC0406s.f7963m0 != null) {
                abstractComponentCallbacksC0406s.f7972v0.b(EnumC2981i.ON_CREATE);
            }
        }
        abstractComponentCallbacksC0406s.f7932H = null;
        K k8 = abstractComponentCallbacksC0406s.f7951a0;
        k8.f7713F = false;
        k8.f7714G = false;
        k8.f7720M.f7762g = false;
        k8.t(4);
        this.f7776a.j(false);
    }

    public final void b() {
        View view;
        View view2;
        p096m2.o oVar = this.f7777b;
        oVar.getClass();
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = ((ArrayList) oVar.f27236G).indexOf(abstractComponentCallbacksC0406s);
            for (int i8 = iIndexOf - 1; i8 >= 0; i8--) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = (AbstractComponentCallbacksC0406s) ((ArrayList) oVar.f27236G).get(i8);
                if (abstractComponentCallbacksC0406s2.f7962l0 == viewGroup && (view2 = abstractComponentCallbacksC0406s2.f7963m0) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                }
            }
            while (true) {
                iIndexOf++;
                if (iIndexOf >= ((ArrayList) oVar.f27236G).size()) {
                    break;
                }
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = (AbstractComponentCallbacksC0406s) ((ArrayList) oVar.f27236G).get(iIndexOf);
                if (abstractComponentCallbacksC0406s3.f7962l0 == viewGroup && (view = abstractComponentCallbacksC0406s3.f7963m0) != null) {
                    iIndexOfChild = viewGroup.indexOfChild(view);
                    break;
                }
            }
        }
        abstractComponentCallbacksC0406s.f7962l0.addView(abstractComponentCallbacksC0406s.f7963m0, iIndexOfChild);
    }

    public final void c() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + abstractComponentCallbacksC0406s);
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = abstractComponentCallbacksC0406s.f7938N;
        P p7 = null;
        p096m2.o oVar = this.f7777b;
        if (abstractComponentCallbacksC0406s2 != null) {
            P p8 = (P) ((HashMap) oVar.f27237H).get(abstractComponentCallbacksC0406s2.f7936L);
            if (p8 == null) {
                throw new IllegalStateException("Fragment " + abstractComponentCallbacksC0406s + " declared target fragment " + abstractComponentCallbacksC0406s.f7938N + " that does not belong to this FragmentManager!");
            }
            abstractComponentCallbacksC0406s.f7939O = abstractComponentCallbacksC0406s.f7938N.f7936L;
            abstractComponentCallbacksC0406s.f7938N = null;
            p7 = p8;
        } else {
            String str = abstractComponentCallbacksC0406s.f7939O;
            if (str != null && (p7 = (P) ((HashMap) oVar.f27237H).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(abstractComponentCallbacksC0406s);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(p000a.r.j(sb, abstractComponentCallbacksC0406s.f7939O, " that does not belong to this FragmentManager!"));
            }
        }
        if (p7 != null) {
            p7.k();
        }
        K k8 = abstractComponentCallbacksC0406s.f7949Y;
        abstractComponentCallbacksC0406s.f7950Z = k8.f7742u;
        abstractComponentCallbacksC0406s.f7952b0 = k8.f7744w;
        p096m2.e eVar = this.f7776a;
        eVar.q(false);
        ArrayList arrayList = abstractComponentCallbacksC0406s.f7976z0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = ((C0402n) it.next()).f7911a;
            abstractComponentCallbacksC0406s3.f7974x0.a();
            p032e0.B.b(abstractComponentCallbacksC0406s3);
        }
        arrayList.clear();
        abstractComponentCallbacksC0406s.f7951a0.b(abstractComponentCallbacksC0406s.f7950Z, abstractComponentCallbacksC0406s.b(), abstractComponentCallbacksC0406s);
        abstractComponentCallbacksC0406s.f7931G = 0;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.w(abstractComponentCallbacksC0406s.f7950Z.f7980N);
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onAttach()"));
        }
        Iterator it2 = abstractComponentCallbacksC0406s.f7949Y.f7735n.iterator();
        while (it2.hasNext()) {
            ((N) it2.next()).a();
        }
        K k9 = abstractComponentCallbacksC0406s.f7951a0;
        k9.f7713F = false;
        k9.f7714G = false;
        k9.f7720M.f7762g = false;
        k9.t(0);
        eVar.l(false);
    }

    public final int d() {
        d0 d0Var;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (abstractComponentCallbacksC0406s.f7949Y == null) {
            return abstractComponentCallbacksC0406s.f7931G;
        }
        int iMin = this.f7780e;
        int iOrdinal = abstractComponentCallbacksC0406s.f7970t0.ordinal();
        int i8 = 0;
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (abstractComponentCallbacksC0406s.f7944T) {
            if (abstractComponentCallbacksC0406s.f7945U) {
                iMin = Math.max(this.f7780e, 2);
                View view = abstractComponentCallbacksC0406s.f7963m0;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f7780e < 4 ? Math.min(iMin, abstractComponentCallbacksC0406s.f7931G) : Math.min(iMin, 1);
            }
        }
        if (!abstractComponentCallbacksC0406s.f7942R) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        if (viewGroup != null) {
            e0 e0VarF = e0.f(viewGroup, abstractComponentCallbacksC0406s.n().E());
            e0VarF.getClass();
            d0 d0VarD = e0VarF.d(abstractComponentCallbacksC0406s);
            i8 = d0VarD != null ? d0VarD.f7862b : 0;
            Iterator it = e0VarF.f7875c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    d0Var = null;
                    break;
                }
                d0Var = (d0) it.next();
                if (d0Var.f7863c.equals(abstractComponentCallbacksC0406s) && !d0Var.f7866f) {
                    break;
                }
            }
            if (d0Var != null && (i8 == 0 || i8 == 1)) {
                i8 = d0Var.f7862b;
            }
        }
        if (i8 == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i8 == 3) {
            iMin = Math.max(iMin, 3);
        } else if (abstractComponentCallbacksC0406s.f7943S) {
            iMin = abstractComponentCallbacksC0406s.t() ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (abstractComponentCallbacksC0406s.f7964n0 && abstractComponentCallbacksC0406s.f7931G < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + abstractComponentCallbacksC0406s);
        }
        return iMin;
    }

    public final void e() {
        Parcelable parcelable;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + abstractComponentCallbacksC0406s);
        }
        if (abstractComponentCallbacksC0406s.f7968r0) {
            Bundle bundle = abstractComponentCallbacksC0406s.f7932H;
            if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
                abstractComponentCallbacksC0406s.f7951a0.R(parcelable);
                K k8 = abstractComponentCallbacksC0406s.f7951a0;
                k8.f7713F = false;
                k8.f7714G = false;
                k8.f7720M.f7762g = false;
                k8.t(1);
            }
            abstractComponentCallbacksC0406s.f7931G = 1;
            return;
        }
        p096m2.e eVar = this.f7776a;
        eVar.r(false);
        Bundle bundle2 = abstractComponentCallbacksC0406s.f7932H;
        abstractComponentCallbacksC0406s.f7951a0.L();
        abstractComponentCallbacksC0406s.f7931G = 1;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.f7971u0.a(new C0404p(abstractComponentCallbacksC0406s));
        abstractComponentCallbacksC0406s.f7974x0.b(bundle2);
        abstractComponentCallbacksC0406s.x(bundle2);
        abstractComponentCallbacksC0406s.f7968r0 = true;
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onCreate()"));
        }
        abstractComponentCallbacksC0406s.f7971u0.f(EnumC2981i.ON_CREATE);
        eVar.m(false);
    }

    public final void f() {
        String resourceName;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (abstractComponentCallbacksC0406s.f7944T) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0406s);
        }
        LayoutInflater layoutInflaterC = abstractComponentCallbacksC0406s.C(abstractComponentCallbacksC0406s.f7932H);
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        if (viewGroup == null) {
            int i8 = abstractComponentCallbacksC0406s.f7954d0;
            if (i8 == 0) {
                viewGroup = null;
            } else {
                if (i8 == -1) {
                    throw new IllegalArgumentException(A0.O.A("Cannot create fragment ", abstractComponentCallbacksC0406s, " for a container view with no id"));
                }
                viewGroup = (ViewGroup) abstractComponentCallbacksC0406s.f7949Y.f7743v.w(i8);
                if (viewGroup == null) {
                    if (!abstractComponentCallbacksC0406s.f7946V) {
                        try {
                            resourceName = abstractComponentCallbacksC0406s.o().getResourceName(abstractComponentCallbacksC0406s.f7954d0);
                        } catch (Resources.NotFoundException unused) {
                            resourceName = zzbz.UNKNOWN_CONTENT_TYPE;
                        }
                        throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(abstractComponentCallbacksC0406s.f7954d0) + " (" + resourceName + ") for fragment " + abstractComponentCallbacksC0406s);
                    }
                } else if (!(viewGroup instanceof C0412y)) {
                    Z.b bVar = Z.c.f8208a;
                    Z.d dVar = new Z.d(abstractComponentCallbacksC0406s, viewGroup, 1);
                    Z.c.c(dVar);
                    Z.b bVarA = Z.c.a(abstractComponentCallbacksC0406s);
                    if (bVarA.f8206a.contains(Z.a.f8203M) && Z.c.e(bVarA, abstractComponentCallbacksC0406s.getClass(), Z.d.class)) {
                        Z.c.b(bVarA, dVar);
                    }
                }
            }
        }
        abstractComponentCallbacksC0406s.f7962l0 = viewGroup;
        abstractComponentCallbacksC0406s.J(layoutInflaterC, viewGroup, abstractComponentCallbacksC0406s.f7932H);
        View view = abstractComponentCallbacksC0406s.f7963m0;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            abstractComponentCallbacksC0406s.f7963m0.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0406s);
            if (viewGroup != null) {
                b();
            }
            if (abstractComponentCallbacksC0406s.f7956f0) {
                abstractComponentCallbacksC0406s.f7963m0.setVisibility(8);
            }
            View view2 = abstractComponentCallbacksC0406s.f7963m0;
            WeakHashMap weakHashMap = N.N.f4843a;
            if (view2.isAttachedToWindow()) {
                N.C.c(abstractComponentCallbacksC0406s.f7963m0);
            } else {
                View view3 = abstractComponentCallbacksC0406s.f7963m0;
                view3.addOnAttachStateChangeListener(new ViewOnAttachStateChangeListenerC0413z(this, view3));
            }
            abstractComponentCallbacksC0406s.f7951a0.t(2);
            this.f7776a.w(false);
            int visibility = abstractComponentCallbacksC0406s.f7963m0.getVisibility();
            abstractComponentCallbacksC0406s.i().f7926l = abstractComponentCallbacksC0406s.f7963m0.getAlpha();
            if (abstractComponentCallbacksC0406s.f7962l0 != null && visibility == 0) {
                View viewFindFocus = abstractComponentCallbacksC0406s.f7963m0.findFocus();
                if (viewFindFocus != null) {
                    abstractComponentCallbacksC0406s.i().f7927m = viewFindFocus;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + abstractComponentCallbacksC0406s);
                    }
                }
                abstractComponentCallbacksC0406s.f7963m0.setAlpha(0.0f);
            }
        }
        abstractComponentCallbacksC0406s.f7931G = 2;
    }

    public final void g() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sJ;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + abstractComponentCallbacksC0406s);
        }
        boolean zIsChangingConfigurations = true;
        boolean z7 = abstractComponentCallbacksC0406s.f7943S && !abstractComponentCallbacksC0406s.t();
        p096m2.o oVar = this.f7777b;
        if (z7) {
            oVar.t(abstractComponentCallbacksC0406s.f7936L, null);
        }
        if (!z7) {
            M m7 = (M) oVar.f27239J;
            if (m7.f7757b.containsKey(abstractComponentCallbacksC0406s.f7936L) && m7.f7760e && !m7.f7761f) {
                String str = abstractComponentCallbacksC0406s.f7939O;
                if (str != null && (abstractComponentCallbacksC0406sJ = oVar.j(str)) != null && abstractComponentCallbacksC0406sJ.f7958h0) {
                    abstractComponentCallbacksC0406s.f7938N = abstractComponentCallbacksC0406sJ;
                }
                abstractComponentCallbacksC0406s.f7931G = 0;
                return;
            }
        }
        C0408u c0408u = abstractComponentCallbacksC0406s.f7950Z;
        if (c0408u instanceof p032e0.L) {
            zIsChangingConfigurations = ((M) oVar.f27239J).f7761f;
        } else {
            Context context = c0408u.f7980N;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            }
        }
        if (z7 || zIsChangingConfigurations) {
            ((M) oVar.f27239J).d(abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7951a0.k();
        abstractComponentCallbacksC0406s.f7971u0.f(EnumC2981i.ON_DESTROY);
        abstractComponentCallbacksC0406s.f7931G = 0;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.f7968r0 = false;
        abstractComponentCallbacksC0406s.z();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onDestroy()"));
        }
        this.f7776a.n(false);
        for (P p7 : oVar.l()) {
            if (p7 != null) {
                String str2 = abstractComponentCallbacksC0406s.f7936L;
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = p7.f7778c;
                if (str2.equals(abstractComponentCallbacksC0406s2.f7939O)) {
                    abstractComponentCallbacksC0406s2.f7938N = abstractComponentCallbacksC0406s;
                    abstractComponentCallbacksC0406s2.f7939O = null;
                }
            }
        }
        String str3 = abstractComponentCallbacksC0406s.f7939O;
        if (str3 != null) {
            abstractComponentCallbacksC0406s.f7938N = oVar.j(str3);
        }
        oVar.r(this);
    }

    public final void h() {
        View view;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + abstractComponentCallbacksC0406s);
        }
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        if (viewGroup != null && (view = abstractComponentCallbacksC0406s.f7963m0) != null) {
            viewGroup.removeView(view);
        }
        abstractComponentCallbacksC0406s.f7951a0.t(1);
        if (abstractComponentCallbacksC0406s.f7963m0 != null) {
            a0 a0Var = abstractComponentCallbacksC0406s.f7972v0;
            a0Var.e();
            if (a0Var.f7833I.f24751L.compareTo(EnumC2982j.f24743I) >= 0) {
                abstractComponentCallbacksC0406s.f7972v0.b(EnumC2981i.ON_DESTROY);
            }
        }
        abstractComponentCallbacksC0406s.f7931G = 1;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.A();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onDestroyView()"));
        }
        p132r.n nVar = ((p056h0.a) new p032e0.J(abstractComponentCallbacksC0406s.c(), p056h0.a.f25381c).a(p056h0.a.class)).f25382b;
        if (nVar.f29687I > 0) {
            A0.O.I(nVar.f29686H[0]);
            throw null;
        }
        abstractComponentCallbacksC0406s.f7947W = false;
        this.f7776a.x(false);
        abstractComponentCallbacksC0406s.f7962l0 = null;
        abstractComponentCallbacksC0406s.f7963m0 = null;
        abstractComponentCallbacksC0406s.f7972v0 = null;
        abstractComponentCallbacksC0406s.f7973w0.c(null);
        abstractComponentCallbacksC0406s.f7945U = false;
    }

    public final void i() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7931G = -1;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.B();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onDetach()"));
        }
        K k8 = abstractComponentCallbacksC0406s.f7951a0;
        if (!k8.f7715H) {
            k8.k();
            abstractComponentCallbacksC0406s.f7951a0 = new K();
        }
        this.f7776a.o(false);
        abstractComponentCallbacksC0406s.f7931G = -1;
        abstractComponentCallbacksC0406s.f7950Z = null;
        abstractComponentCallbacksC0406s.f7952b0 = null;
        abstractComponentCallbacksC0406s.f7949Y = null;
        if (!abstractComponentCallbacksC0406s.f7943S || abstractComponentCallbacksC0406s.t()) {
            M m7 = (M) this.f7777b.f27239J;
            if (m7.f7757b.containsKey(abstractComponentCallbacksC0406s.f7936L) && m7.f7760e && !m7.f7761f) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "initState called for fragment: " + abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.q();
    }

    public final void j() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (abstractComponentCallbacksC0406s.f7944T && abstractComponentCallbacksC0406s.f7945U && !abstractComponentCallbacksC0406s.f7947W) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + abstractComponentCallbacksC0406s);
            }
            abstractComponentCallbacksC0406s.J(abstractComponentCallbacksC0406s.C(abstractComponentCallbacksC0406s.f7932H), null, abstractComponentCallbacksC0406s.f7932H);
            View view = abstractComponentCallbacksC0406s.f7963m0;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                abstractComponentCallbacksC0406s.f7963m0.setTag(R.id.fragment_container_view_tag, abstractComponentCallbacksC0406s);
                if (abstractComponentCallbacksC0406s.f7956f0) {
                    abstractComponentCallbacksC0406s.f7963m0.setVisibility(8);
                }
                abstractComponentCallbacksC0406s.f7951a0.t(2);
                this.f7776a.w(false);
                abstractComponentCallbacksC0406s.f7931G = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        p096m2.o oVar = this.f7777b;
        boolean z7 = this.f7779d;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (z7) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + abstractComponentCallbacksC0406s);
                return;
            }
            return;
        }
        try {
            this.f7779d = true;
            boolean z8 = false;
            while (true) {
                int iD = d();
                int i8 = abstractComponentCallbacksC0406s.f7931G;
                if (iD == i8) {
                    if (!z8 && i8 == -1 && abstractComponentCallbacksC0406s.f7943S && !abstractComponentCallbacksC0406s.t()) {
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + abstractComponentCallbacksC0406s);
                        }
                        ((M) oVar.f27239J).d(abstractComponentCallbacksC0406s);
                        oVar.r(this);
                        if (Log.isLoggable("FragmentManager", 3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + abstractComponentCallbacksC0406s);
                        }
                        abstractComponentCallbacksC0406s.q();
                    }
                    if (abstractComponentCallbacksC0406s.f7967q0) {
                        if (abstractComponentCallbacksC0406s.f7963m0 != null && (viewGroup = abstractComponentCallbacksC0406s.f7962l0) != null) {
                            e0 e0VarF = e0.f(viewGroup, abstractComponentCallbacksC0406s.n().E());
                            if (abstractComponentCallbacksC0406s.f7956f0) {
                                e0VarF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + abstractComponentCallbacksC0406s);
                                }
                                e0VarF.a(3, 1, this);
                            } else {
                                e0VarF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + abstractComponentCallbacksC0406s);
                                }
                                e0VarF.a(2, 1, this);
                            }
                        }
                        K k8 = abstractComponentCallbacksC0406s.f7949Y;
                        if (k8 != null && abstractComponentCallbacksC0406s.f7942R && K.G(abstractComponentCallbacksC0406s)) {
                            k8.f7712E = true;
                        }
                        abstractComponentCallbacksC0406s.f7967q0 = false;
                        abstractComponentCallbacksC0406s.f7951a0.n();
                    }
                    return;
                }
                if (iD <= i8) {
                    switch (i8 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            abstractComponentCallbacksC0406s.f7931G = 1;
                            break;
                        case 2:
                            abstractComponentCallbacksC0406s.f7945U = false;
                            abstractComponentCallbacksC0406s.f7931G = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + abstractComponentCallbacksC0406s);
                            }
                            if (abstractComponentCallbacksC0406s.f7963m0 != null && abstractComponentCallbacksC0406s.f7933I == null) {
                                p();
                            }
                            if (abstractComponentCallbacksC0406s.f7963m0 != null && (viewGroup2 = abstractComponentCallbacksC0406s.f7962l0) != null) {
                                e0 e0VarF2 = e0.f(viewGroup2, abstractComponentCallbacksC0406s.n().E());
                                e0VarF2.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + abstractComponentCallbacksC0406s);
                                }
                                e0VarF2.a(1, 3, this);
                            }
                            abstractComponentCallbacksC0406s.f7931G = 3;
                            break;
                        case 4:
                            r();
                            break;
                        case 5:
                            abstractComponentCallbacksC0406s.f7931G = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i8 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (abstractComponentCallbacksC0406s.f7963m0 != null && (viewGroup3 = abstractComponentCallbacksC0406s.f7962l0) != null) {
                                e0 e0VarF3 = e0.f(viewGroup3, abstractComponentCallbacksC0406s.n().E());
                                int iE = A0.O.e(abstractComponentCallbacksC0406s.f7963m0.getVisibility());
                                e0VarF3.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + abstractComponentCallbacksC0406s);
                                }
                                e0VarF3.a(iE, 2, this);
                            }
                            abstractComponentCallbacksC0406s.f7931G = 4;
                            break;
                        case 5:
                            q();
                            break;
                        case 6:
                            abstractComponentCallbacksC0406s.f7931G = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
                z8 = true;
            }
        } finally {
            this.f7779d = false;
        }
    }

    public final void l() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom RESUMED: " + abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7951a0.t(5);
        if (abstractComponentCallbacksC0406s.f7963m0 != null) {
            abstractComponentCallbacksC0406s.f7972v0.b(EnumC2981i.ON_PAUSE);
        }
        abstractComponentCallbacksC0406s.f7971u0.f(EnumC2981i.ON_PAUSE);
        abstractComponentCallbacksC0406s.f7931G = 6;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.D();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onPause()"));
        }
        this.f7776a.p(false);
    }

    public final void m(ClassLoader classLoader) {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        Bundle bundle = abstractComponentCallbacksC0406s.f7932H;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        abstractComponentCallbacksC0406s.f7933I = abstractComponentCallbacksC0406s.f7932H.getSparseParcelableArray("android:view_state");
        abstractComponentCallbacksC0406s.f7934J = abstractComponentCallbacksC0406s.f7932H.getBundle("android:view_registry_state");
        abstractComponentCallbacksC0406s.f7939O = abstractComponentCallbacksC0406s.f7932H.getString("android:target_state");
        if (abstractComponentCallbacksC0406s.f7939O != null) {
            abstractComponentCallbacksC0406s.f7940P = abstractComponentCallbacksC0406s.f7932H.getInt("android:target_req_state", 0);
        }
        Boolean bool = abstractComponentCallbacksC0406s.f7935K;
        if (bool != null) {
            abstractComponentCallbacksC0406s.f7965o0 = bool.booleanValue();
            abstractComponentCallbacksC0406s.f7935K = null;
        } else {
            abstractComponentCallbacksC0406s.f7965o0 = abstractComponentCallbacksC0406s.f7932H.getBoolean("android:user_visible_hint", true);
        }
        if (abstractComponentCallbacksC0406s.f7965o0) {
            return;
        }
        abstractComponentCallbacksC0406s.f7964n0 = true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:21:0x0052  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    public final void n() {
        boolean zRequestFocus;
        String str;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto RESUMED: " + abstractComponentCallbacksC0406s);
        }
        C0405q c0405q = abstractComponentCallbacksC0406s.f7966p0;
        View view = c0405q == null ? null : c0405q.f7927m;
        if (view != null) {
            if (view == abstractComponentCallbacksC0406s.f7963m0) {
                zRequestFocus = view.requestFocus();
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                    sb.append(view);
                    sb.append(" ");
                    if (zRequestFocus) {
                        str = "succeeded";
                    } else {
                        str = "failed";
                    }
                    sb.append(str);
                    sb.append(" on Fragment ");
                    sb.append(abstractComponentCallbacksC0406s);
                    sb.append(" resulting in focused view ");
                    sb.append(abstractComponentCallbacksC0406s.f7963m0.findFocus());
                    Log.v("FragmentManager", sb.toString());
                }
            } else {
                ViewParent parent = view.getParent();
                while (true) {
                    if (parent != null) {
                        if (parent == abstractComponentCallbacksC0406s.f7963m0) {
                            zRequestFocus = view.requestFocus();
                            if (Log.isLoggable("FragmentManager", 2)) {
                                StringBuilder sb2 = new StringBuilder("requestFocus: Restoring focused view ");
                                sb2.append(view);
                                sb2.append(" ");
                                if (zRequestFocus) {
                                    str = "succeeded";
                                } else {
                                    str = "failed";
                                }
                                sb2.append(str);
                                sb2.append(" on Fragment ");
                                sb2.append(abstractComponentCallbacksC0406s);
                                sb2.append(" resulting in focused view ");
                                sb2.append(abstractComponentCallbacksC0406s.f7963m0.findFocus());
                                Log.v("FragmentManager", sb2.toString());
                            }
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
            }
        }
        abstractComponentCallbacksC0406s.i().f7927m = null;
        abstractComponentCallbacksC0406s.f7951a0.L();
        abstractComponentCallbacksC0406s.f7951a0.x(true);
        abstractComponentCallbacksC0406s.f7931G = 7;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.E();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onResume()"));
        }
        p032e0.o oVar = abstractComponentCallbacksC0406s.f7971u0;
        EnumC2981i enumC2981i = EnumC2981i.ON_RESUME;
        oVar.f(enumC2981i);
        if (abstractComponentCallbacksC0406s.f7963m0 != null) {
            abstractComponentCallbacksC0406s.f7972v0.f7833I.f(enumC2981i);
        }
        K k8 = abstractComponentCallbacksC0406s.f7951a0;
        k8.f7713F = false;
        k8.f7714G = false;
        k8.f7720M.f7762g = false;
        k8.t(7);
        this.f7776a.s(false);
        abstractComponentCallbacksC0406s.f7932H = null;
        abstractComponentCallbacksC0406s.f7933I = null;
        abstractComponentCallbacksC0406s.f7934J = null;
    }

    public final void o() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        O o4 = new O(abstractComponentCallbacksC0406s);
        if (abstractComponentCallbacksC0406s.f7931G <= -1 || o4.f7775S != null) {
            o4.f7775S = abstractComponentCallbacksC0406s.f7932H;
        } else {
            Bundle bundle = new Bundle();
            abstractComponentCallbacksC0406s.F(bundle);
            abstractComponentCallbacksC0406s.f7974x0.c(bundle);
            bundle.putParcelable("android:support:fragments", abstractComponentCallbacksC0406s.f7951a0.S());
            this.f7776a.t(false);
            if (bundle.isEmpty()) {
                bundle = null;
            }
            if (abstractComponentCallbacksC0406s.f7963m0 != null) {
                p();
            }
            if (abstractComponentCallbacksC0406s.f7933I != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray("android:view_state", abstractComponentCallbacksC0406s.f7933I);
            }
            if (abstractComponentCallbacksC0406s.f7934J != null) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBundle("android:view_registry_state", abstractComponentCallbacksC0406s.f7934J);
            }
            if (!abstractComponentCallbacksC0406s.f7965o0) {
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBoolean("android:user_visible_hint", abstractComponentCallbacksC0406s.f7965o0);
            }
            o4.f7775S = bundle;
            if (abstractComponentCallbacksC0406s.f7939O != null) {
                if (bundle == null) {
                    o4.f7775S = new Bundle();
                }
                o4.f7775S.putString("android:target_state", abstractComponentCallbacksC0406s.f7939O);
                int i8 = abstractComponentCallbacksC0406s.f7940P;
                if (i8 != 0) {
                    o4.f7775S.putInt("android:target_req_state", i8);
                }
            }
        }
        this.f7777b.t(abstractComponentCallbacksC0406s.f7936L, o4);
    }

    public final void p() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (abstractComponentCallbacksC0406s.f7963m0 == null) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + abstractComponentCallbacksC0406s + " with view " + abstractComponentCallbacksC0406s.f7963m0);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        abstractComponentCallbacksC0406s.f7963m0.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            abstractComponentCallbacksC0406s.f7933I = sparseArray;
        }
        Bundle bundle = new Bundle();
        abstractComponentCallbacksC0406s.f7972v0.f7834J.c(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        abstractComponentCallbacksC0406s.f7934J = bundle;
    }

    public final void q() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto STARTED: " + abstractComponentCallbacksC0406s);
        }
        abstractComponentCallbacksC0406s.f7951a0.L();
        abstractComponentCallbacksC0406s.f7951a0.x(true);
        abstractComponentCallbacksC0406s.f7931G = 5;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.G();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onStart()"));
        }
        p032e0.o oVar = abstractComponentCallbacksC0406s.f7971u0;
        EnumC2981i enumC2981i = EnumC2981i.ON_START;
        oVar.f(enumC2981i);
        if (abstractComponentCallbacksC0406s.f7963m0 != null) {
            abstractComponentCallbacksC0406s.f7972v0.f7833I.f(enumC2981i);
        }
        K k8 = abstractComponentCallbacksC0406s.f7951a0;
        k8.f7713F = false;
        k8.f7714G = false;
        k8.f7720M.f7762g = false;
        k8.t(5);
        this.f7776a.u(false);
    }

    public final void r() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7778c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom STARTED: " + abstractComponentCallbacksC0406s);
        }
        K k8 = abstractComponentCallbacksC0406s.f7951a0;
        k8.f7714G = true;
        k8.f7720M.f7762g = true;
        k8.t(4);
        if (abstractComponentCallbacksC0406s.f7963m0 != null) {
            abstractComponentCallbacksC0406s.f7972v0.b(EnumC2981i.ON_STOP);
        }
        abstractComponentCallbacksC0406s.f7971u0.f(EnumC2981i.ON_STOP);
        abstractComponentCallbacksC0406s.f7931G = 4;
        abstractComponentCallbacksC0406s.f7961k0 = false;
        abstractComponentCallbacksC0406s.H();
        if (!abstractComponentCallbacksC0406s.f7961k0) {
            throw new f0(A0.O.A("Fragment ", abstractComponentCallbacksC0406s, " did not call through to super.onStop()"));
        }
        this.f7776a.v(false);
    }

    public P(p096m2.e eVar, p096m2.o oVar, ClassLoader classLoader, F f8, O o4) {
        this.f7776a = eVar;
        this.f7777b = oVar;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sA = f8.a(o4.f7763G);
        Bundle bundle = o4.f7772P;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        K k8 = abstractComponentCallbacksC0406sA.f7949Y;
        if (k8 != null && (k8.f7713F || k8.f7714G)) {
            throw new IllegalStateException("Fragment already added and state has been saved");
        }
        abstractComponentCallbacksC0406sA.f7937M = bundle;
        abstractComponentCallbacksC0406sA.f7936L = o4.f7764H;
        abstractComponentCallbacksC0406sA.f7944T = o4.f7765I;
        abstractComponentCallbacksC0406sA.f7946V = true;
        abstractComponentCallbacksC0406sA.f7953c0 = o4.f7766J;
        abstractComponentCallbacksC0406sA.f7954d0 = o4.f7767K;
        abstractComponentCallbacksC0406sA.f7955e0 = o4.f7768L;
        abstractComponentCallbacksC0406sA.f7958h0 = o4.f7769M;
        abstractComponentCallbacksC0406sA.f7943S = o4.f7770N;
        abstractComponentCallbacksC0406sA.f7957g0 = o4.f7771O;
        abstractComponentCallbacksC0406sA.f7956f0 = o4.f7773Q;
        abstractComponentCallbacksC0406sA.f7970t0 = EnumC2982j.values()[o4.f7774R];
        Bundle bundle2 = o4.f7775S;
        if (bundle2 != null) {
            abstractComponentCallbacksC0406sA.f7932H = bundle2;
        } else {
            abstractComponentCallbacksC0406sA.f7932H = new Bundle();
        }
        this.f7778c = abstractComponentCallbacksC0406sA;
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + abstractComponentCallbacksC0406sA);
        }
    }

    public P(p096m2.e eVar, p096m2.o oVar, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, O o4) {
        this.f7776a = eVar;
        this.f7777b = oVar;
        this.f7778c = abstractComponentCallbacksC0406s;
        abstractComponentCallbacksC0406s.f7933I = null;
        abstractComponentCallbacksC0406s.f7934J = null;
        abstractComponentCallbacksC0406s.f7948X = 0;
        abstractComponentCallbacksC0406s.f7945U = false;
        abstractComponentCallbacksC0406s.f7942R = false;
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = abstractComponentCallbacksC0406s.f7938N;
        abstractComponentCallbacksC0406s.f7939O = abstractComponentCallbacksC0406s2 != null ? abstractComponentCallbacksC0406s2.f7936L : null;
        abstractComponentCallbacksC0406s.f7938N = null;
        Bundle bundle = o4.f7775S;
        if (bundle != null) {
            abstractComponentCallbacksC0406s.f7932H = bundle;
        } else {
            abstractComponentCallbacksC0406s.f7932H = new Bundle();
        }
    }
}
