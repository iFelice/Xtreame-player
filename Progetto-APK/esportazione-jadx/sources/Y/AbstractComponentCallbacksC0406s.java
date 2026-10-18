package Y;

import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.protobuf.U2;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import p032e0.EnumC2982j;
import p032e0.InterfaceC2978f;
import p039f.AbstractC2987b;
import pe.hf.black20.R;
import z4.q0;

/* JADX INFO: renamed from: Y.s, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractComponentCallbacksC0406s implements ComponentCallbacks, View.OnCreateContextMenuListener, p032e0.m, p032e0.L, InterfaceC2978f, S1.g {

    /* JADX INFO: renamed from: B0, reason: collision with root package name */
    public static final Object f7929B0 = new Object();

    /* JADX INFO: renamed from: A0, reason: collision with root package name */
    public final C0402n f7930A0;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Bundle f7932H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SparseArray f7933I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public Bundle f7934J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Boolean f7935K;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public Bundle f7937M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public AbstractComponentCallbacksC0406s f7938N;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f7940P;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public boolean f7942R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f7943S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f7944T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f7945U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public boolean f7946V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public boolean f7947W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public int f7948X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public K f7949Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public C0408u f7950Z;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public AbstractComponentCallbacksC0406s f7952b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public int f7953c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public int f7954d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public String f7955e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public boolean f7956f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public boolean f7957g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public boolean f7958h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public boolean f7959i0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public boolean f7961k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public ViewGroup f7962l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public View f7963m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public boolean f7964n0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public C0405q f7966p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public boolean f7967q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public boolean f7968r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public String f7969s0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public p032e0.o f7971u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public a0 f7972v0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public S1.f f7974x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public int f7975y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final ArrayList f7976z0;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f7931G = -1;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public String f7936L = UUID.randomUUID().toString();

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f7939O = null;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public Boolean f7941Q = null;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public K f7951a0 = new K();

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f7960j0 = true;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public boolean f7965o0 = true;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public EnumC2982j f7970t0 = EnumC2982j.f24745K;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final p032e0.v f7973w0 = new p032e0.v();

    public AbstractComponentCallbacksC0406s() {
        new AtomicInteger();
        this.f7976z0 = new ArrayList();
        this.f7930A0 = new C0402n(this);
        p();
    }

    public void A() {
        this.f7961k0 = true;
    }

    public void B() {
        this.f7961k0 = true;
    }

    public LayoutInflater C(Bundle bundle) {
        C0408u c0408u = this.f7950Z;
        if (c0408u == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        AbstractActivityC0409v abstractActivityC0409v = c0408u.f7983Q;
        LayoutInflater layoutInflaterCloneInContext = abstractActivityC0409v.getLayoutInflater().cloneInContext(abstractActivityC0409v);
        layoutInflaterCloneInContext.setFactory2(this.f7951a0.f7727f);
        return layoutInflaterCloneInContext;
    }

    public void D() {
        this.f7961k0 = true;
    }

    public void E() {
        this.f7961k0 = true;
    }

    public void G() {
        this.f7961k0 = true;
    }

    public void H() {
        this.f7961k0 = true;
    }

    public void I(Bundle bundle) {
        this.f7961k0 = true;
    }

    public void J(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f7951a0.L();
        this.f7947W = true;
        this.f7972v0 = new a0(this, c());
        View viewY = y(layoutInflater, viewGroup);
        this.f7963m0 = viewY;
        if (viewY == null) {
            if (this.f7972v0.f7833I != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.f7972v0 = null;
            return;
        }
        this.f7972v0.e();
        Z3.C.k(this.f7963m0, this.f7972v0);
        View view = this.f7963m0;
        a0 a0Var = this.f7972v0;
        q0.h(view, "<this>");
        view.setTag(R.id.view_tree_view_model_store_owner, a0Var);
        E3.f.y(this.f7963m0, this.f7972v0);
        this.f7973w0.c(this.f7972v0);
    }

    public final AbstractActivityC0409v K() {
        AbstractActivityC0409v abstractActivityC0409vJ = j();
        if (abstractActivityC0409vJ != null) {
            return abstractActivityC0409vJ;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " not attached to an activity."));
    }

    public final Bundle L() {
        Bundle bundle = this.f7937M;
        if (bundle != null) {
            return bundle;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " does not have any arguments."));
    }

    public final Context M() {
        Context contextL = l();
        if (contextL != null) {
            return contextL;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " not attached to a context."));
    }

    public final View N() {
        View view = this.f7963m0;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public final void O(int i8, int i9, int i10, int i11) {
        if (this.f7966p0 == null && i8 == 0 && i9 == 0 && i10 == 0 && i11 == 0) {
            return;
        }
        i().f7916b = i8;
        i().f7917c = i9;
        i().f7918d = i10;
        i().f7919e = i11;
    }

    public final void P() {
        Z.b bVar = Z.c.f8208a;
        Z.e eVar = new Z.e(1, this);
        Z.c.c(eVar);
        Z.b bVarA = Z.c.a(this);
        if (bVarA.f8206a.contains(Z.a.f8201K) && Z.c.e(bVarA, getClass(), Z.e.class)) {
            Z.c.b(bVarA, eVar);
        }
        this.f7958h0 = true;
        K k8 = this.f7949Y;
        if (k8 != null) {
            k8.f7720M.c(this);
        } else {
            this.f7959i0 = true;
        }
    }

    public final void Q(boolean z7) {
        Z.b bVar = Z.c.f8208a;
        Z.f fVar = new Z.f(this, "Attempting to set user visible hint to " + z7 + " for fragment " + this);
        Z.c.c(fVar);
        Z.b bVarA = Z.c.a(this);
        if (bVarA.f8206a.contains(Z.a.f8202L) && Z.c.e(bVarA, getClass(), Z.f.class)) {
            Z.c.b(bVarA, fVar);
        }
        boolean z8 = false;
        if (!this.f7965o0 && z7 && this.f7931G < 5 && this.f7949Y != null && r() && this.f7968r0) {
            K k8 = this.f7949Y;
            P pF = k8.f(this);
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = pF.f7778c;
            if (abstractComponentCallbacksC0406s.f7964n0) {
                if (k8.f7723b) {
                    k8.f7716I = true;
                } else {
                    abstractComponentCallbacksC0406s.f7964n0 = false;
                    pF.k();
                }
            }
        }
        this.f7965o0 = z7;
        if (this.f7931G < 5 && !z7) {
            z8 = true;
        }
        this.f7964n0 = z8;
        if (this.f7932H != null) {
            this.f7935K = Boolean.valueOf(z7);
        }
    }

    public final void R(Intent intent) {
        C0408u c0408u = this.f7950Z;
        if (c0408u == null) {
            throw new IllegalStateException(A0.O.A("Fragment ", this, " not attached to Activity"));
        }
        c0408u.f7980N.startActivity(intent, null);
    }

    @Override // p032e0.InterfaceC2978f
    public final p040f0.c a() {
        Application application;
        Context applicationContext = M().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        if (application == null && Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "Could not find Application instance from Context " + M().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
        }
        p040f0.c cVar = new p040f0.c();
        LinkedHashMap linkedHashMap = cVar.f25133a;
        if (application != null) {
            linkedHashMap.put(p032e0.H.f24728J, application);
        }
        linkedHashMap.put(p032e0.B.f24713G, this);
        linkedHashMap.put(p032e0.B.f24714H, this);
        Bundle bundle = this.f7937M;
        if (bundle != null) {
            linkedHashMap.put(p032e0.B.f24715I, bundle);
        }
        return cVar;
    }

    public AbstractC2987b b() {
        return new C0403o(this);
    }

    @Override // p032e0.L
    public final p032e0.K c() {
        if (this.f7949Y == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (m() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.f7949Y.f7720M.f7759d;
        p032e0.K k8 = (p032e0.K) map.get(this.f7936L);
        if (k8 != null) {
            return k8;
        }
        p032e0.K k9 = new p032e0.K();
        map.put(this.f7936L, k9);
        return k9;
    }

    @Override // S1.g
    public final S1.e d() {
        return this.f7974x0.f6394b;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public void f(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2;
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(Integer.toHexString(this.f7953c0));
        printWriter.print(" mContainerId=#");
        printWriter.print(Integer.toHexString(this.f7954d0));
        printWriter.print(" mTag=");
        printWriter.println(this.f7955e0);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.f7931G);
        printWriter.print(" mWho=");
        printWriter.print(this.f7936L);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.f7948X);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.f7942R);
        printWriter.print(" mRemoving=");
        printWriter.print(this.f7943S);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.f7944T);
        printWriter.print(" mInLayout=");
        printWriter.println(this.f7945U);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.f7956f0);
        printWriter.print(" mDetached=");
        printWriter.print(this.f7957g0);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.f7960j0);
        printWriter.print(" mHasMenu=");
        printWriter.println(false);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.f7958h0);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.f7965o0);
        if (this.f7949Y != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.f7949Y);
        }
        if (this.f7950Z != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.f7950Z);
        }
        if (this.f7952b0 != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.f7952b0);
        }
        if (this.f7937M != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.f7937M);
        }
        if (this.f7932H != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.f7932H);
        }
        if (this.f7933I != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.f7933I);
        }
        if (this.f7934J != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.f7934J);
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sJ = this.f7938N;
        if (abstractComponentCallbacksC0406sJ == null) {
            K k8 = this.f7949Y;
            abstractComponentCallbacksC0406sJ = (k8 == null || (str2 = this.f7939O) == null) ? null : k8.f7724c.j(str2);
        }
        if (abstractComponentCallbacksC0406sJ != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(abstractComponentCallbacksC0406sJ);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.f7940P);
        }
        printWriter.print(str);
        printWriter.print("mPopDirection=");
        C0405q c0405q = this.f7966p0;
        printWriter.println(c0405q == null ? false : c0405q.f7915a);
        C0405q c0405q2 = this.f7966p0;
        if (c0405q2 != null && c0405q2.f7916b != 0) {
            printWriter.print(str);
            printWriter.print("getEnterAnim=");
            C0405q c0405q3 = this.f7966p0;
            printWriter.println(c0405q3 == null ? 0 : c0405q3.f7916b);
        }
        C0405q c0405q4 = this.f7966p0;
        if (c0405q4 != null && c0405q4.f7917c != 0) {
            printWriter.print(str);
            printWriter.print("getExitAnim=");
            C0405q c0405q5 = this.f7966p0;
            printWriter.println(c0405q5 == null ? 0 : c0405q5.f7917c);
        }
        C0405q c0405q6 = this.f7966p0;
        if (c0405q6 != null && c0405q6.f7918d != 0) {
            printWriter.print(str);
            printWriter.print("getPopEnterAnim=");
            C0405q c0405q7 = this.f7966p0;
            printWriter.println(c0405q7 == null ? 0 : c0405q7.f7918d);
        }
        C0405q c0405q8 = this.f7966p0;
        if (c0405q8 != null && c0405q8.f7919e != 0) {
            printWriter.print(str);
            printWriter.print("getPopExitAnim=");
            C0405q c0405q9 = this.f7966p0;
            printWriter.println(c0405q9 == null ? 0 : c0405q9.f7919e);
        }
        if (this.f7962l0 != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.f7962l0);
        }
        if (this.f7963m0 != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.f7963m0);
        }
        if (l() != null) {
            p132r.n nVar = ((p056h0.a) new p032e0.J(c(), p056h0.a.f25381c).a(p056h0.a.class)).f25382b;
            if (nVar.f29687I > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                if (nVar.f29687I > 0) {
                    A0.O.I(nVar.f29686H[0]);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(nVar.f29685G[0]);
                    printWriter.print(": ");
                    throw null;
                }
            }
        }
        printWriter.print(str);
        printWriter.println("Child " + this.f7951a0 + ":");
        this.f7951a0.u(U2.A(str, "  "), fileDescriptor, printWriter, strArr);
    }

    @Override // p032e0.m
    public final p032e0.o h() {
        return this.f7971u0;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public final C0405q i() {
        if (this.f7966p0 == null) {
            C0405q c0405q = new C0405q();
            Object obj = f7929B0;
            c0405q.f7923i = obj;
            c0405q.f7924j = obj;
            c0405q.f7925k = obj;
            c0405q.f7926l = 1.0f;
            c0405q.f7927m = null;
            this.f7966p0 = c0405q;
        }
        return this.f7966p0;
    }

    public final AbstractActivityC0409v j() {
        C0408u c0408u = this.f7950Z;
        if (c0408u == null) {
            return null;
        }
        return (AbstractActivityC0409v) c0408u.f7979M;
    }

    public final K k() {
        if (this.f7950Z != null) {
            return this.f7951a0;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " has not been attached yet."));
    }

    public final Context l() {
        C0408u c0408u = this.f7950Z;
        if (c0408u == null) {
            return null;
        }
        return c0408u.f7980N;
    }

    public final int m() {
        EnumC2982j enumC2982j = this.f7970t0;
        return (enumC2982j == EnumC2982j.f24742H || this.f7952b0 == null) ? enumC2982j.ordinal() : Math.min(enumC2982j.ordinal(), this.f7952b0.m());
    }

    public final K n() {
        K k8 = this.f7949Y;
        if (k8 != null) {
            return k8;
        }
        throw new IllegalStateException(A0.O.A("Fragment ", this, " not associated with a fragment manager."));
    }

    public final Resources o() {
        return M().getResources();
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.f7961k0 = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        K().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.f7961k0 = true;
    }

    public final void p() {
        this.f7971u0 = new p032e0.o(this);
        this.f7974x0 = F2.G.w(this);
        ArrayList arrayList = this.f7976z0;
        C0402n c0402n = this.f7930A0;
        if (arrayList.contains(c0402n)) {
            return;
        }
        if (this.f7931G < 0) {
            arrayList.add(c0402n);
            return;
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = c0402n.f7911a;
        abstractComponentCallbacksC0406s.f7974x0.a();
        p032e0.B.b(abstractComponentCallbacksC0406s);
    }

    public final void q() {
        p();
        this.f7969s0 = this.f7936L;
        this.f7936L = UUID.randomUUID().toString();
        this.f7942R = false;
        this.f7943S = false;
        this.f7944T = false;
        this.f7945U = false;
        this.f7946V = false;
        this.f7948X = 0;
        this.f7949Y = null;
        this.f7951a0 = new K();
        this.f7950Z = null;
        this.f7953c0 = 0;
        this.f7954d0 = 0;
        this.f7955e0 = null;
        this.f7956f0 = false;
        this.f7957g0 = false;
    }

    public final boolean r() {
        return this.f7950Z != null && this.f7942R;
    }

    public final boolean s() {
        if (!this.f7956f0) {
            K k8 = this.f7949Y;
            if (k8 != null) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7952b0;
                k8.getClass();
                if (abstractComponentCallbacksC0406s != null && abstractComponentCallbacksC0406s.s()) {
                }
            }
            return false;
        }
        return true;
    }

    public final boolean t() {
        return this.f7948X > 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f7936L);
        if (this.f7953c0 != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f7953c0));
        }
        if (this.f7955e0 != null) {
            sb.append(" tag=");
            sb.append(this.f7955e0);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        this.f7961k0 = true;
    }

    public void v(int i8, int i9, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i8 + " resultCode: " + i9 + " data: " + intent);
        }
    }

    public void w(Context context) {
        this.f7961k0 = true;
        C0408u c0408u = this.f7950Z;
        if ((c0408u == null ? null : c0408u.f7979M) != null) {
            this.f7961k0 = true;
        }
    }

    public void x(Bundle bundle) {
        Parcelable parcelable;
        this.f7961k0 = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.f7951a0.R(parcelable);
            K k8 = this.f7951a0;
            k8.f7713F = false;
            k8.f7714G = false;
            k8.f7720M.f7762g = false;
            k8.t(1);
        }
        K k9 = this.f7951a0;
        if (k9.f7741t >= 1) {
            return;
        }
        k9.f7713F = false;
        k9.f7714G = false;
        k9.f7720M.f7762g = false;
        k9.t(1);
    }

    public View y(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        int i8 = this.f7975y0;
        if (i8 != 0) {
            return layoutInflater.inflate(i8, viewGroup, false);
        }
        return null;
    }

    public void z() {
        this.f7961k0 = true;
    }

    public void F(Bundle bundle) {
    }
}
