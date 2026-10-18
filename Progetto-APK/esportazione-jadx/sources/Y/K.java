package Y;

import N.InterfaceC0265n;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.protobuf.U2;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.HttpUrl;
import p032e0.EnumC2982j;
import p039f.AbstractC2987b;
import pe.hf.black20.R;

/* JADX INFO: loaded from: classes.dex */
public final class K {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public p096m2.u f7708A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public p096m2.u f7709B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public p096m2.u f7710C;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f7712E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f7713F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public boolean f7714G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public boolean f7715H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f7716I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public ArrayList f7717J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public ArrayList f7718K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public ArrayList f7719L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public M f7720M;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f7723b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ArrayList f7725d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ArrayList f7726e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p000a.x f7728g;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final B f7736o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final B f7737p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final B f7738q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final B f7739r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0408u f7742u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public AbstractC2987b f7743v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public AbstractComponentCallbacksC0406s f7744w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AbstractComponentCallbacksC0406s f7745x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final C f7747z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f7722a = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final p096m2.o f7724c = new p096m2.o(2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final A f7727f = new A(this);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final D f7729h = new D(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AtomicInteger f7730i = new AtomicInteger();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map f7731j = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Map f7732k = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map f7733l = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final p096m2.e f7734m = new p096m2.e(this);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final CopyOnWriteArrayList f7735n = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final E f7740s = new E(this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f7741t = -1;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final F f7746y = new F(this);

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public ArrayDeque f7711D = new ArrayDeque();

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final p000a.f f7721N = new p000a.f(this, 9);

    /* JADX WARN: Type inference failed for: r0v13, types: [Y.B] */
    /* JADX WARN: Type inference failed for: r0v14, types: [Y.B] */
    /* JADX WARN: Type inference failed for: r0v15, types: [Y.B] */
    /* JADX WARN: Type inference failed for: r0v16, types: [Y.B] */
    public K() {
        final int i8 = 2;
        final int i9 = 0;
        this.f7736o = new M.a(this) { // from class: Y.B

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ K f7694b;

            {
                this.f7694b = this;
            }

            @Override // M.a
            public final void accept(Object obj) {
                int i10 = i9;
                K k8 = this.f7694b;
                switch (i10) {
                    case 0:
                        if (k8.H()) {
                            k8.h(false);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (k8.H() && num.intValue() == 80) {
                            k8.l(false);
                            break;
                        }
                        break;
                    case 2:
                        D.i iVar = (D.i) obj;
                        if (k8.H()) {
                            k8.m(iVar.f1694a, false);
                        }
                        break;
                    default:
                        D.x xVar = (D.x) obj;
                        if (k8.H()) {
                            k8.r(xVar.f1735a, false);
                        }
                        break;
                }
            }
        };
        final int i10 = 1;
        this.f7737p = new M.a(this) { // from class: Y.B

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ K f7694b;

            {
                this.f7694b = this;
            }

            @Override // M.a
            public final void accept(Object obj) {
                int i11 = i10;
                K k8 = this.f7694b;
                switch (i11) {
                    case 0:
                        if (k8.H()) {
                            k8.h(false);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (k8.H() && num.intValue() == 80) {
                            k8.l(false);
                            break;
                        }
                        break;
                    case 2:
                        D.i iVar = (D.i) obj;
                        if (k8.H()) {
                            k8.m(iVar.f1694a, false);
                        }
                        break;
                    default:
                        D.x xVar = (D.x) obj;
                        if (k8.H()) {
                            k8.r(xVar.f1735a, false);
                        }
                        break;
                }
            }
        };
        this.f7738q = new M.a(this) { // from class: Y.B

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ K f7694b;

            {
                this.f7694b = this;
            }

            @Override // M.a
            public final void accept(Object obj) {
                int i11 = i8;
                K k8 = this.f7694b;
                switch (i11) {
                    case 0:
                        if (k8.H()) {
                            k8.h(false);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (k8.H() && num.intValue() == 80) {
                            k8.l(false);
                            break;
                        }
                        break;
                    case 2:
                        D.i iVar = (D.i) obj;
                        if (k8.H()) {
                            k8.m(iVar.f1694a, false);
                        }
                        break;
                    default:
                        D.x xVar = (D.x) obj;
                        if (k8.H()) {
                            k8.r(xVar.f1735a, false);
                        }
                        break;
                }
            }
        };
        final int i11 = 3;
        this.f7739r = new M.a(this) { // from class: Y.B

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final /* synthetic */ K f7694b;

            {
                this.f7694b = this;
            }

            @Override // M.a
            public final void accept(Object obj) {
                int i12 = i11;
                K k8 = this.f7694b;
                switch (i12) {
                    case 0:
                        if (k8.H()) {
                            k8.h(false);
                        }
                        break;
                    case 1:
                        Integer num = (Integer) obj;
                        if (k8.H() && num.intValue() == 80) {
                            k8.l(false);
                            break;
                        }
                        break;
                    case 2:
                        D.i iVar = (D.i) obj;
                        if (k8.H()) {
                            k8.m(iVar.f1694a, false);
                        }
                        break;
                    default:
                        D.x xVar = (D.x) obj;
                        if (k8.H()) {
                            k8.r(xVar.f1735a, false);
                        }
                        break;
                }
            }
        };
        this.f7747z = new C(this, i10);
    }

    public static boolean G(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        boolean zG = false;
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 : abstractComponentCallbacksC0406s.f7951a0.f7724c.n()) {
            if (abstractComponentCallbacksC0406s2 != null) {
                zG = G(abstractComponentCallbacksC0406s2);
            }
            if (zG) {
                return true;
            }
        }
        return false;
    }

    public static boolean I(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (abstractComponentCallbacksC0406s == null) {
            return true;
        }
        return abstractComponentCallbacksC0406s.f7960j0 && (abstractComponentCallbacksC0406s.f7949Y == null || I(abstractComponentCallbacksC0406s.f7952b0));
    }

    public static boolean J(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (abstractComponentCallbacksC0406s == null) {
            return true;
        }
        K k8 = abstractComponentCallbacksC0406s.f7949Y;
        return abstractComponentCallbacksC0406s.equals(k8.f7745x) && J(k8.f7744w);
    }

    public static void Y(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "show: " + abstractComponentCallbacksC0406s);
        }
        if (abstractComponentCallbacksC0406s.f7956f0) {
            abstractComponentCallbacksC0406s.f7956f0 = false;
            abstractComponentCallbacksC0406s.f7967q0 = !abstractComponentCallbacksC0406s.f7967q0;
        }
    }

    public final AbstractComponentCallbacksC0406s A(int i8) {
        p096m2.o oVar = this.f7724c;
        for (int size = ((ArrayList) oVar.f27236G).size() - 1; size >= 0; size--) {
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = (AbstractComponentCallbacksC0406s) ((ArrayList) oVar.f27236G).get(size);
            if (abstractComponentCallbacksC0406s != null && abstractComponentCallbacksC0406s.f7953c0 == i8) {
                return abstractComponentCallbacksC0406s;
            }
        }
        for (P p7 : ((HashMap) oVar.f27237H).values()) {
            if (p7 != null) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = p7.f7778c;
                if (abstractComponentCallbacksC0406s2.f7953c0 == i8) {
                    return abstractComponentCallbacksC0406s2;
                }
            }
        }
        return null;
    }

    public final AbstractComponentCallbacksC0406s B(String str) {
        p096m2.o oVar = this.f7724c;
        if (str != null) {
            for (int size = ((ArrayList) oVar.f27236G).size() - 1; size >= 0; size--) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = (AbstractComponentCallbacksC0406s) ((ArrayList) oVar.f27236G).get(size);
                if (abstractComponentCallbacksC0406s != null && str.equals(abstractComponentCallbacksC0406s.f7955e0)) {
                    return abstractComponentCallbacksC0406s;
                }
            }
        }
        if (str != null) {
            for (P p7 : ((HashMap) oVar.f27237H).values()) {
                if (p7 != null) {
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = p7.f7778c;
                    if (str.equals(abstractComponentCallbacksC0406s2.f7955e0)) {
                        return abstractComponentCallbacksC0406s2;
                    }
                }
            }
        } else {
            oVar.getClass();
        }
        return null;
    }

    public final ViewGroup C(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        ViewGroup viewGroup = abstractComponentCallbacksC0406s.f7962l0;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (abstractComponentCallbacksC0406s.f7954d0 > 0 && this.f7743v.x()) {
            View viewW = this.f7743v.w(abstractComponentCallbacksC0406s.f7954d0);
            if (viewW instanceof ViewGroup) {
                return (ViewGroup) viewW;
            }
        }
        return null;
    }

    public final F D() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7744w;
        return abstractComponentCallbacksC0406s != null ? abstractComponentCallbacksC0406s.f7949Y.D() : this.f7746y;
    }

    public final C E() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7744w;
        return abstractComponentCallbacksC0406s != null ? abstractComponentCallbacksC0406s.f7949Y.E() : this.f7747z;
    }

    public final void F(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "hide: " + abstractComponentCallbacksC0406s);
        }
        if (abstractComponentCallbacksC0406s.f7956f0) {
            return;
        }
        abstractComponentCallbacksC0406s.f7956f0 = true;
        abstractComponentCallbacksC0406s.f7967q0 = true ^ abstractComponentCallbacksC0406s.f7967q0;
        X(abstractComponentCallbacksC0406s);
    }

    public final boolean H() {
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7744w;
        if (abstractComponentCallbacksC0406s == null) {
            return true;
        }
        return abstractComponentCallbacksC0406s.r() && this.f7744w.n().H();
    }

    public final void K(int i8, boolean z7) {
        C0408u c0408u;
        if (this.f7742u == null && i8 != -1) {
            throw new IllegalStateException("No activity");
        }
        if (z7 || i8 != this.f7741t) {
            this.f7741t = i8;
            p096m2.o oVar = this.f7724c;
            Iterator it = ((ArrayList) oVar.f27236G).iterator();
            while (it.hasNext()) {
                P p7 = (P) ((HashMap) oVar.f27237H).get(((AbstractComponentCallbacksC0406s) it.next()).f7936L);
                if (p7 != null) {
                    p7.k();
                }
            }
            for (P p8 : ((HashMap) oVar.f27237H).values()) {
                if (p8 != null) {
                    p8.k();
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p8.f7778c;
                    if (abstractComponentCallbacksC0406s.f7943S && !abstractComponentCallbacksC0406s.t()) {
                        oVar.r(p8);
                    }
                }
            }
            Z();
            if (this.f7712E && (c0408u = this.f7742u) != null && this.f7741t == 7) {
                c0408u.f7983Q.invalidateOptionsMenu();
                this.f7712E = false;
            }
        }
    }

    public final void L() {
        if (this.f7742u == null) {
            return;
        }
        this.f7713F = false;
        this.f7714G = false;
        this.f7720M.f7762g = false;
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null) {
                abstractComponentCallbacksC0406s.f7951a0.L();
            }
        }
    }

    public final boolean M() {
        return N(-1, 0);
    }

    public final boolean N(int i8, int i9) {
        x(false);
        w(true);
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7745x;
        if (abstractComponentCallbacksC0406s != null && i8 < 0 && abstractComponentCallbacksC0406s.k().M()) {
            return true;
        }
        boolean zO = O(this.f7717J, this.f7718K, i8, i9);
        if (zO) {
            this.f7723b = true;
            try {
                Q(this.f7717J, this.f7718K);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        c0();
        if (this.f7716I) {
            this.f7716I = false;
            Z();
        }
        ((HashMap) this.f7724c.f27237H).values().removeAll(Collections.singleton(null));
        return zO;
    }

    public final boolean O(ArrayList arrayList, ArrayList arrayList2, int i8, int i9) {
        boolean z7 = (i9 & 1) != 0;
        ArrayList arrayList3 = this.f7725d;
        int size = -1;
        if (arrayList3 != null && !arrayList3.isEmpty()) {
            if (i8 < 0) {
                size = z7 ? 0 : this.f7725d.size() - 1;
            } else {
                int size2 = this.f7725d.size() - 1;
                while (size2 >= 0) {
                    C0389a c0389a = (C0389a) this.f7725d.get(size2);
                    if (i8 >= 0 && i8 == c0389a.f7830t) {
                        break;
                    }
                    size2--;
                }
                if (size2 >= 0) {
                    if (z7) {
                        while (size2 > 0) {
                            C0389a c0389a2 = (C0389a) this.f7725d.get(size2 - 1);
                            if (i8 < 0 || i8 != c0389a2.f7830t) {
                                break;
                            }
                            size2--;
                        }
                    } else if (size2 != this.f7725d.size() - 1) {
                        size2++;
                    }
                    size = size2;
                } else {
                    size = size2;
                }
            }
        }
        if (size < 0) {
            return false;
        }
        for (int size3 = this.f7725d.size() - 1; size3 >= size; size3--) {
            arrayList.add((C0389a) this.f7725d.remove(size3));
            arrayList2.add(Boolean.TRUE);
        }
        return true;
    }

    public final void P(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "remove: " + abstractComponentCallbacksC0406s + " nesting=" + abstractComponentCallbacksC0406s.f7948X);
        }
        boolean z7 = !abstractComponentCallbacksC0406s.t();
        if (!abstractComponentCallbacksC0406s.f7957g0 || z7) {
            this.f7724c.s(abstractComponentCallbacksC0406s);
            if (G(abstractComponentCallbacksC0406s)) {
                this.f7712E = true;
            }
            abstractComponentCallbacksC0406s.f7943S = true;
            X(abstractComponentCallbacksC0406s);
        }
    }

    public final void Q(ArrayList arrayList, ArrayList arrayList2) {
        if (arrayList.isEmpty()) {
            return;
        }
        if (arrayList.size() != arrayList2.size()) {
            throw new IllegalStateException("Internal error with the back stack records");
        }
        int size = arrayList.size();
        int i8 = 0;
        int i9 = 0;
        while (i8 < size) {
            if (!((C0389a) arrayList.get(i8)).f7827q) {
                if (i9 != i8) {
                    z(arrayList, arrayList2, i9, i8);
                }
                i9 = i8 + 1;
                if (((Boolean) arrayList2.get(i8)).booleanValue()) {
                    while (i9 < size && ((Boolean) arrayList2.get(i9)).booleanValue() && !((C0389a) arrayList.get(i9)).f7827q) {
                        i9++;
                    }
                }
                z(arrayList, arrayList2, i8, i9);
                i8 = i9 - 1;
            }
            i8++;
        }
        if (i9 != size) {
            z(arrayList, arrayList2, i9, size);
        }
    }

    public final void R(Parcelable parcelable) {
        int i8;
        p096m2.e eVar;
        P p7;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3 = (Bundle) parcelable;
        for (String str : bundle3.keySet()) {
            if (str.startsWith("result_") && (bundle2 = bundle3.getBundle(str)) != null) {
                bundle2.setClassLoader(this.f7742u.f7980N.getClassLoader());
                this.f7732k.put(str.substring(7), bundle2);
            }
        }
        ArrayList<O> arrayList = new ArrayList();
        for (String str2 : bundle3.keySet()) {
            if (str2.startsWith("fragment_") && (bundle = bundle3.getBundle(str2)) != null) {
                bundle.setClassLoader(this.f7742u.f7980N.getClassLoader());
                arrayList.add((O) bundle.getParcelable("state"));
            }
        }
        p096m2.o oVar = this.f7724c;
        ((HashMap) oVar.f27238I).clear();
        for (O o4 : arrayList) {
            ((HashMap) oVar.f27238I).put(o4.f7764H, o4);
        }
        L l4 = (L) bundle3.getParcelable("state");
        if (l4 == null) {
            return;
        }
        ((HashMap) oVar.f27237H).clear();
        Iterator it = l4.f7748G.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            i8 = 2;
            eVar = this.f7734m;
            if (!zHasNext) {
                break;
            }
            O oT = oVar.t((String) it.next(), null);
            if (oT != null) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = (AbstractComponentCallbacksC0406s) this.f7720M.f7757b.get(oT.f7764H);
                if (abstractComponentCallbacksC0406s != null) {
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + abstractComponentCallbacksC0406s);
                    }
                    p7 = new P(eVar, oVar, abstractComponentCallbacksC0406s, oT);
                } else {
                    p7 = new P(this.f7734m, this.f7724c, this.f7742u.f7980N.getClassLoader(), D(), oT);
                }
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = p7.f7778c;
                abstractComponentCallbacksC0406s2.f7949Y = this;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: active (" + abstractComponentCallbacksC0406s2.f7936L + "): " + abstractComponentCallbacksC0406s2);
                }
                p7.m(this.f7742u.f7980N.getClassLoader());
                oVar.q(p7);
                p7.f7780e = this.f7741t;
            }
        }
        M m7 = this.f7720M;
        m7.getClass();
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 : new ArrayList(m7.f7757b.values())) {
            if (((HashMap) oVar.f27237H).get(abstractComponentCallbacksC0406s3.f7936L) == null) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Discarding retained Fragment " + abstractComponentCallbacksC0406s3 + " that was not found in the set of active Fragments " + l4.f7748G);
                }
                this.f7720M.f(abstractComponentCallbacksC0406s3);
                abstractComponentCallbacksC0406s3.f7949Y = this;
                P p8 = new P(eVar, oVar, abstractComponentCallbacksC0406s3);
                p8.f7780e = 1;
                p8.k();
                abstractComponentCallbacksC0406s3.f7943S = true;
                p8.k();
            }
        }
        ArrayList<String> arrayList2 = l4.f7749H;
        ((ArrayList) oVar.f27236G).clear();
        if (arrayList2 != null) {
            for (String str3 : arrayList2) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sJ = oVar.j(str3);
                if (abstractComponentCallbacksC0406sJ == null) {
                    throw new IllegalStateException(p000a.r.g("No instantiated fragment for (", str3, ")"));
                }
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "restoreSaveState: added (" + str3 + "): " + abstractComponentCallbacksC0406sJ);
                }
                oVar.d(abstractComponentCallbacksC0406sJ);
            }
        }
        if (l4.f7750I != null) {
            this.f7725d = new ArrayList(l4.f7750I.length);
            int i9 = 0;
            while (true) {
                C0390b[] c0390bArr = l4.f7750I;
                if (i9 >= c0390bArr.length) {
                    break;
                }
                C0390b c0390b = c0390bArr[i9];
                c0390b.getClass();
                C0389a c0389a = new C0389a(this);
                int i10 = 0;
                int i11 = 0;
                while (true) {
                    int[] iArr = c0390b.f7835G;
                    if (i10 >= iArr.length) {
                        break;
                    }
                    Q q7 = new Q();
                    int i12 = i10 + 1;
                    q7.f7781a = iArr[i10];
                    if (Log.isLoggable("FragmentManager", i8)) {
                        Log.v("FragmentManager", "Instantiate " + c0389a + " op #" + i11 + " base fragment #" + iArr[i12]);
                    }
                    q7.f7788h = EnumC2982j.values()[c0390b.f7837I[i11]];
                    q7.f7789i = EnumC2982j.values()[c0390b.f7838J[i11]];
                    int i13 = i10 + 2;
                    q7.f7783c = iArr[i12] != 0;
                    int i14 = iArr[i13];
                    q7.f7784d = i14;
                    int i15 = iArr[i10 + 3];
                    q7.f7785e = i15;
                    int i16 = i10 + 5;
                    int i17 = iArr[i10 + 4];
                    q7.f7786f = i17;
                    i10 += 6;
                    int i18 = iArr[i16];
                    q7.f7787g = i18;
                    c0389a.f7814d = i14;
                    c0389a.f7815e = i15;
                    c0389a.f7816f = i17;
                    c0389a.f7817g = i18;
                    c0389a.b(q7);
                    i11++;
                    i8 = 2;
                }
                c0389a.f7818h = c0390b.f7839K;
                c0389a.f7820j = c0390b.f7840L;
                c0389a.f7819i = true;
                c0389a.f7821k = c0390b.f7842N;
                c0389a.f7822l = c0390b.f7843O;
                c0389a.f7823m = c0390b.f7844P;
                c0389a.f7824n = c0390b.f7845Q;
                c0389a.f7825o = c0390b.f7846R;
                c0389a.f7826p = c0390b.f7847S;
                c0389a.f7827q = c0390b.f7848T;
                c0389a.f7830t = c0390b.f7841M;
                int i19 = 0;
                while (true) {
                    ArrayList arrayList3 = c0390b.f7836H;
                    if (i19 >= arrayList3.size()) {
                        break;
                    }
                    String str4 = (String) arrayList3.get(i19);
                    if (str4 != null) {
                        ((Q) c0389a.f7813c.get(i19)).f7782b = oVar.j(str4);
                    }
                    i19++;
                }
                c0389a.c(1);
                if (Log.isLoggable("FragmentManager", 2)) {
                    StringBuilder sbK = p000a.r.k("restoreAllState: back stack #", i9, " (index ");
                    sbK.append(c0389a.f7830t);
                    sbK.append("): ");
                    sbK.append(c0389a);
                    Log.v("FragmentManager", sbK.toString());
                    PrintWriter printWriter = new PrintWriter(new b0());
                    c0389a.f("  ", printWriter, false);
                    printWriter.close();
                }
                this.f7725d.add(c0389a);
                i9++;
                i8 = 2;
            }
        } else {
            this.f7725d = null;
        }
        this.f7730i.set(l4.f7751J);
        String str5 = l4.f7752K;
        if (str5 != null) {
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406sJ2 = oVar.j(str5);
            this.f7745x = abstractComponentCallbacksC0406sJ2;
            q(abstractComponentCallbacksC0406sJ2);
        }
        ArrayList arrayList4 = l4.f7753L;
        if (arrayList4 != null) {
            for (int i20 = 0; i20 < arrayList4.size(); i20++) {
                this.f7731j.put((String) arrayList4.get(i20), (C0391c) l4.f7754M.get(i20));
            }
        }
        this.f7711D = new ArrayDeque(l4.f7755N);
    }

    public final Bundle S() {
        int i8;
        ArrayList arrayList;
        C0390b[] c0390bArr;
        int size;
        Bundle bundle = new Bundle();
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            e0 e0Var = (e0) it.next();
            if (e0Var.f7877e) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
                }
                e0Var.f7877e = false;
                e0Var.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((e0) it2.next()).e();
        }
        x(true);
        this.f7713F = true;
        this.f7720M.f7762g = true;
        p096m2.o oVar = this.f7724c;
        oVar.getClass();
        ArrayList arrayList2 = new ArrayList(((HashMap) oVar.f27237H).size());
        for (P p7 : ((HashMap) oVar.f27237H).values()) {
            if (p7 != null) {
                p7.o();
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
                arrayList2.add(abstractComponentCallbacksC0406s.f7936L);
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Saved state of " + abstractComponentCallbacksC0406s + ": " + abstractComponentCallbacksC0406s.f7932H);
                }
            }
        }
        p096m2.o oVar2 = this.f7724c;
        oVar2.getClass();
        ArrayList<O> arrayList3 = new ArrayList(((HashMap) oVar2.f27238I).values());
        if (!arrayList3.isEmpty()) {
            p096m2.o oVar3 = this.f7724c;
            synchronized (((ArrayList) oVar3.f27236G)) {
                try {
                    if (((ArrayList) oVar3.f27236G).isEmpty()) {
                        arrayList = null;
                    } else {
                        arrayList = new ArrayList(((ArrayList) oVar3.f27236G).size());
                        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 : (ArrayList) oVar3.f27236G) {
                            arrayList.add(abstractComponentCallbacksC0406s2.f7936L);
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "saveAllState: adding fragment (" + abstractComponentCallbacksC0406s2.f7936L + "): " + abstractComponentCallbacksC0406s2);
                            }
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ArrayList arrayList4 = this.f7725d;
            if (arrayList4 == null || (size = arrayList4.size()) <= 0) {
                c0390bArr = null;
            } else {
                c0390bArr = new C0390b[size];
                for (i8 = 0; i8 < size; i8++) {
                    c0390bArr[i8] = new C0390b((C0389a) this.f7725d.get(i8));
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sbK = p000a.r.k("saveAllState: adding back stack #", i8, ": ");
                        sbK.append(this.f7725d.get(i8));
                        Log.v("FragmentManager", sbK.toString());
                    }
                }
            }
            L l4 = new L();
            l4.f7752K = null;
            ArrayList arrayList5 = new ArrayList();
            l4.f7753L = arrayList5;
            ArrayList arrayList6 = new ArrayList();
            l4.f7754M = arrayList6;
            l4.f7748G = arrayList2;
            l4.f7749H = arrayList;
            l4.f7750I = c0390bArr;
            l4.f7751J = this.f7730i.get();
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = this.f7745x;
            if (abstractComponentCallbacksC0406s3 != null) {
                l4.f7752K = abstractComponentCallbacksC0406s3.f7936L;
            }
            arrayList5.addAll(this.f7731j.keySet());
            arrayList6.addAll(this.f7731j.values());
            l4.f7755N = new ArrayList(this.f7711D);
            bundle.putParcelable("state", l4);
            for (String str : this.f7732k.keySet()) {
                bundle.putBundle(p148t.a.c("result_", str), (Bundle) this.f7732k.get(str));
            }
            for (O o4 : arrayList3) {
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("state", o4);
                bundle.putBundle("fragment_" + o4.f7764H, bundle2);
            }
        } else if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "saveAllState: no fragments!");
        }
        return bundle;
    }

    public final void T() {
        synchronized (this.f7722a) {
            try {
                if (this.f7722a.size() == 1) {
                    this.f7742u.f7981O.removeCallbacks(this.f7721N);
                    this.f7742u.f7981O.post(this.f7721N);
                    c0();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void U(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, boolean z7) {
        ViewGroup viewGroupC = C(abstractComponentCallbacksC0406s);
        if (viewGroupC == null || !(viewGroupC instanceof C0412y)) {
            return;
        }
        ((C0412y) viewGroupC).setDrawDisappearingViewsLast(!z7);
    }

    public final void V(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s, EnumC2982j enumC2982j) {
        if (abstractComponentCallbacksC0406s.equals(this.f7724c.j(abstractComponentCallbacksC0406s.f7936L)) && (abstractComponentCallbacksC0406s.f7950Z == null || abstractComponentCallbacksC0406s.f7949Y == this)) {
            abstractComponentCallbacksC0406s.f7970t0 = enumC2982j;
            return;
        }
        throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0406s + " is not an active fragment of FragmentManager " + this);
    }

    public final void W(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (abstractComponentCallbacksC0406s != null) {
            if (!abstractComponentCallbacksC0406s.equals(this.f7724c.j(abstractComponentCallbacksC0406s.f7936L)) || (abstractComponentCallbacksC0406s.f7950Z != null && abstractComponentCallbacksC0406s.f7949Y != this)) {
                throw new IllegalArgumentException("Fragment " + abstractComponentCallbacksC0406s + " is not an active fragment of FragmentManager " + this);
            }
        }
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = this.f7745x;
        this.f7745x = abstractComponentCallbacksC0406s;
        q(abstractComponentCallbacksC0406s2);
        q(this.f7745x);
    }

    public final void X(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        ViewGroup viewGroupC = C(abstractComponentCallbacksC0406s);
        if (viewGroupC != null) {
            C0405q c0405q = abstractComponentCallbacksC0406s.f7966p0;
            if ((c0405q == null ? 0 : c0405q.f7919e) + (c0405q == null ? 0 : c0405q.f7918d) + (c0405q == null ? 0 : c0405q.f7917c) + (c0405q == null ? 0 : c0405q.f7916b) > 0) {
                if (viewGroupC.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    viewGroupC.setTag(R.id.visible_removing_fragment_view_tag, abstractComponentCallbacksC0406s);
                }
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = (AbstractComponentCallbacksC0406s) viewGroupC.getTag(R.id.visible_removing_fragment_view_tag);
                C0405q c0405q2 = abstractComponentCallbacksC0406s.f7966p0;
                boolean z7 = c0405q2 != null ? c0405q2.f7915a : false;
                if (abstractComponentCallbacksC0406s2.f7966p0 == null) {
                    return;
                }
                abstractComponentCallbacksC0406s2.i().f7915a = z7;
            }
        }
    }

    public final void Z() {
        for (P p7 : this.f7724c.l()) {
            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
            if (abstractComponentCallbacksC0406s.f7964n0) {
                if (this.f7723b) {
                    this.f7716I = true;
                } else {
                    abstractComponentCallbacksC0406s.f7964n0 = false;
                    p7.k();
                }
            }
        }
    }

    public final P a(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        String str = abstractComponentCallbacksC0406s.f7969s0;
        if (str != null) {
            Z.c.d(abstractComponentCallbacksC0406s, str);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "add: " + abstractComponentCallbacksC0406s);
        }
        P pF = f(abstractComponentCallbacksC0406s);
        abstractComponentCallbacksC0406s.f7949Y = this;
        p096m2.o oVar = this.f7724c;
        oVar.q(pF);
        if (!abstractComponentCallbacksC0406s.f7957g0) {
            oVar.d(abstractComponentCallbacksC0406s);
            abstractComponentCallbacksC0406s.f7943S = false;
            if (abstractComponentCallbacksC0406s.f7963m0 == null) {
                abstractComponentCallbacksC0406s.f7967q0 = false;
            }
            if (G(abstractComponentCallbacksC0406s)) {
                this.f7712E = true;
            }
        }
        return pF;
    }

    public final void a0(IllegalStateException illegalStateException) {
        Log.e("FragmentManager", illegalStateException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new b0());
        C0408u c0408u = this.f7742u;
        if (c0408u == null) {
            try {
                u("  ", null, printWriter, new String[0]);
                throw illegalStateException;
            } catch (Exception e8) {
                Log.e("FragmentManager", "Failed dumping state", e8);
                throw illegalStateException;
            }
        }
        try {
            c0408u.f7983Q.dump("  ", null, printWriter, new String[0]);
            throw illegalStateException;
        } catch (Exception e9) {
            Log.e("FragmentManager", "Failed dumping state", e9);
            throw illegalStateException;
        }
    }

    public final void b(C0408u c0408u, AbstractC2987b abstractC2987b, AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (this.f7742u != null) {
            throw new IllegalStateException("Already attached");
        }
        this.f7742u = c0408u;
        this.f7743v = abstractC2987b;
        this.f7744w = abstractComponentCallbacksC0406s;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7735n;
        if (abstractComponentCallbacksC0406s != null) {
            copyOnWriteArrayList.add(new G(abstractComponentCallbacksC0406s));
        } else if (c0408u instanceof N) {
            copyOnWriteArrayList.add(c0408u);
        }
        if (this.f7744w != null) {
            c0();
        }
        if (c0408u instanceof p000a.y) {
            p000a.x xVar = c0408u.f7983Q.f8582M;
            this.f7728g = xVar;
            xVar.a(abstractComponentCallbacksC0406s != null ? abstractComponentCallbacksC0406s : c0408u, this.f7729h);
        }
        int i8 = 0;
        if (abstractComponentCallbacksC0406s != null) {
            M m7 = abstractComponentCallbacksC0406s.f7949Y.f7720M;
            HashMap map = m7.f7758c;
            M m8 = (M) map.get(abstractComponentCallbacksC0406s.f7936L);
            if (m8 == null) {
                m8 = new M(m7.f7760e);
                map.put(abstractComponentCallbacksC0406s.f7936L, m8);
            }
            this.f7720M = m8;
        } else if (c0408u instanceof p032e0.L) {
            this.f7720M = (M) new p032e0.J(c0408u.f7983Q.c(), M.f7756h).a(M.class);
        } else {
            this.f7720M = new M(false);
        }
        M m9 = this.f7720M;
        m9.f7762g = this.f7713F || this.f7714G;
        this.f7724c.f27239J = m9;
        C0408u c0408u2 = this.f7742u;
        int i9 = 2;
        if ((c0408u2 instanceof S1.g) && abstractComponentCallbacksC0406s == null) {
            S1.e eVarD = c0408u2.d();
            eVarD.c("android:support:fragments", new p000a.d(this, i9));
            Bundle bundleA = eVarD.a("android:support:fragments");
            if (bundleA != null) {
                R(bundleA);
            }
        }
        C0408u c0408u3 = this.f7742u;
        if (c0408u3 instanceof p016c.f) {
            p000a.h hVar = c0408u3.f7983Q.f8585P;
            String strC = p148t.a.c("FragmentManager:", abstractComponentCallbacksC0406s != null ? p000a.r.j(new StringBuilder(), abstractComponentCallbacksC0406s.f7936L, ":") : HttpUrl.FRAGMENT_ENCODE_SET);
            this.f7708A = hVar.b(U2.A(strC, "StartActivityForResult"), new p024d.b(), new C(this, i9));
            this.f7709B = hVar.b(U2.A(strC, "StartIntentSenderForResult"), new X1.i(), new C(this, 3));
            this.f7710C = hVar.b(U2.A(strC, "RequestPermissions"), new p024d.a(), new C(this, i8));
        }
        C0408u c0408u4 = this.f7742u;
        if (c0408u4 instanceof E.d) {
            c0408u4.H0(this.f7736o);
        }
        C0408u c0408u5 = this.f7742u;
        if (c0408u5 instanceof E.e) {
            c0408u5.K0(this.f7737p);
        }
        C0408u c0408u6 = this.f7742u;
        if (c0408u6 instanceof D.v) {
            c0408u6.I0(this.f7738q);
        }
        C0408u c0408u7 = this.f7742u;
        if (c0408u7 instanceof D.w) {
            c0408u7.J0(this.f7739r);
        }
        C0408u c0408u8 = this.f7742u;
        if ((c0408u8 instanceof InterfaceC0265n) && abstractComponentCallbacksC0406s == null) {
            c0408u8.G0(this.f7740s);
        }
    }

    /* JADX INFO: renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7744w;
        if (abstractComponentCallbacksC0406s != null) {
            sb.append(abstractComponentCallbacksC0406s.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.f7744w)));
            sb.append("}");
        } else {
            C0408u c0408u = this.f7742u;
            if (c0408u != null) {
                sb.append(c0408u.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.f7742u)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void c(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "attach: " + abstractComponentCallbacksC0406s);
        }
        if (abstractComponentCallbacksC0406s.f7957g0) {
            abstractComponentCallbacksC0406s.f7957g0 = false;
            if (abstractComponentCallbacksC0406s.f7942R) {
                return;
            }
            this.f7724c.d(abstractComponentCallbacksC0406s);
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "add from attach: " + abstractComponentCallbacksC0406s);
            }
            if (G(abstractComponentCallbacksC0406s)) {
                this.f7712E = true;
            }
        }
    }

    public final void c0() {
        synchronized (this.f7722a) {
            try {
                if (!this.f7722a.isEmpty()) {
                    D d6 = this.f7729h;
                    d6.f8605a = true;
                    C6.a aVar = d6.f8607c;
                    if (aVar != null) {
                        aVar.invoke();
                    }
                    return;
                }
                D d8 = this.f7729h;
                ArrayList arrayList = this.f7725d;
                d8.f8605a = arrayList != null && arrayList.size() > 0 && J(this.f7744w);
                C6.a aVar2 = d8.f8607c;
                if (aVar2 != null) {
                    aVar2.invoke();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void d() {
        this.f7723b = false;
        this.f7718K.clear();
        this.f7717J.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        Iterator it = this.f7724c.l().iterator();
        while (it.hasNext()) {
            ViewGroup viewGroup = ((P) it.next()).f7778c.f7962l0;
            if (viewGroup != null) {
                hashSet.add(e0.f(viewGroup, E()));
            }
        }
        return hashSet;
    }

    public final P f(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        String str = abstractComponentCallbacksC0406s.f7936L;
        p096m2.o oVar = this.f7724c;
        P p7 = (P) ((HashMap) oVar.f27237H).get(str);
        if (p7 != null) {
            return p7;
        }
        P p8 = new P(this.f7734m, oVar, abstractComponentCallbacksC0406s);
        p8.m(this.f7742u.f7980N.getClassLoader());
        p8.f7780e = this.f7741t;
        return p8;
    }

    public final void g(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "detach: " + abstractComponentCallbacksC0406s);
        }
        if (abstractComponentCallbacksC0406s.f7957g0) {
            return;
        }
        abstractComponentCallbacksC0406s.f7957g0 = true;
        if (abstractComponentCallbacksC0406s.f7942R) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "remove from detach: " + abstractComponentCallbacksC0406s);
            }
            this.f7724c.s(abstractComponentCallbacksC0406s);
            if (G(abstractComponentCallbacksC0406s)) {
                this.f7712E = true;
            }
            X(abstractComponentCallbacksC0406s);
        }
    }

    public final void h(boolean z7) {
        if (z7 && (this.f7742u instanceof E.d)) {
            a0(new IllegalStateException("Do not call dispatchConfigurationChanged() on host. Host implements OnConfigurationChangedProvider and automatically dispatches configuration changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null) {
                abstractComponentCallbacksC0406s.f7961k0 = true;
                if (z7) {
                    abstractComponentCallbacksC0406s.f7951a0.h(true);
                }
            }
        }
    }

    public final boolean i() {
        if (this.f7741t < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && !abstractComponentCallbacksC0406s.f7956f0 && abstractComponentCallbacksC0406s.f7951a0.i()) {
                return true;
            }
        }
        return false;
    }

    public final boolean j() {
        if (this.f7741t < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z7 = false;
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && I(abstractComponentCallbacksC0406s) && !abstractComponentCallbacksC0406s.f7956f0 && abstractComponentCallbacksC0406s.f7951a0.j()) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(abstractComponentCallbacksC0406s);
                z7 = true;
            }
        }
        if (this.f7726e != null) {
            for (int i8 = 0; i8 < this.f7726e.size(); i8++) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = (AbstractComponentCallbacksC0406s) this.f7726e.get(i8);
                if (arrayList == null || !arrayList.contains(abstractComponentCallbacksC0406s2)) {
                    abstractComponentCallbacksC0406s2.getClass();
                }
            }
        }
        this.f7726e = arrayList;
        return z7;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:16:0x004c  */
    /* JADX WARN: Code duplicated, block: B:19:0x005e  */
    /* JADX WARN: Code duplicated, block: B:21:0x0074  */
    /* JADX WARN: Code duplicated, block: B:25:0x0087  */
    /* JADX WARN: Code duplicated, block: B:28:0x0092  */
    /* JADX WARN: Code duplicated, block: B:31:0x009d  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d1 A[LOOP:3: B:41:0x00cb->B:43:0x00d1, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:47:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:53:0x0079 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:? A[RETURN, SYNTHETIC] */
    public final void k() {
        boolean zIsChangingConfigurations;
        C0408u c0408u;
        C0408u c0408u2;
        C0408u c0408u3;
        C0408u c0408u4;
        C0408u c0408u5;
        p096m2.u uVar;
        Iterator it;
        Iterator it2;
        this.f7715H = true;
        x(true);
        Iterator it3 = e().iterator();
        while (it3.hasNext()) {
            ((e0) it3.next()).e();
        }
        C0408u c0408u6 = this.f7742u;
        boolean z7 = c0408u6 instanceof p032e0.L;
        p096m2.o oVar = this.f7724c;
        if (!z7) {
            Context context = c0408u6.f7980N;
            if (context instanceof Activity) {
                zIsChangingConfigurations = true ^ ((Activity) context).isChangingConfigurations();
            } else {
                it2 = this.f7731j.values().iterator();
                while (it2.hasNext()) {
                    for (String str : ((C0391c) it2.next()).f7851G) {
                        M m7 = (M) oVar.f27239J;
                        m7.getClass();
                        if (Log.isLoggable("FragmentManager", 3)) {
                            p000a.r.q("Clearing non-config state for saved state of Fragment ", str, "FragmentManager");
                        }
                        m7.e(str);
                    }
                }
            }
            t(-1);
            c0408u = this.f7742u;
            if (c0408u instanceof E.e) {
                c0408u.P0(this.f7737p);
            }
            c0408u2 = this.f7742u;
            if (c0408u2 instanceof E.d) {
                c0408u2.M0(this.f7736o);
            }
            c0408u3 = this.f7742u;
            if (c0408u3 instanceof D.v) {
                c0408u3.N0(this.f7738q);
            }
            c0408u4 = this.f7742u;
            if (c0408u4 instanceof D.w) {
                c0408u4.O0(this.f7739r);
            }
            c0408u5 = this.f7742u;
            if (c0408u5 instanceof InterfaceC0265n) {
                c0408u5.L0(this.f7740s);
            }
            this.f7742u = null;
            this.f7743v = null;
            this.f7744w = null;
            if (this.f7728g != null) {
                it = this.f7729h.f8606b.iterator();
                while (it.hasNext()) {
                    ((p000a.a) it.next()).cancel();
                }
                this.f7728g = null;
            }
            uVar = this.f7708A;
            if (uVar != null) {
                uVar.U();
                this.f7709B.U();
                this.f7710C.U();
            }
        }
        zIsChangingConfigurations = ((M) oVar.f27239J).f7761f;
        if (zIsChangingConfigurations) {
            it2 = this.f7731j.values().iterator();
            while (it2.hasNext()) {
                while (r1.hasNext()) {
                    M m8 = (M) oVar.f27239J;
                    m8.getClass();
                    if (Log.isLoggable("FragmentManager", 3)) {
                        p000a.r.q("Clearing non-config state for saved state of Fragment ", str, "FragmentManager");
                    }
                    m8.e(str);
                }
            }
        }
        t(-1);
        c0408u = this.f7742u;
        if (c0408u instanceof E.e) {
            c0408u.P0(this.f7737p);
        }
        c0408u2 = this.f7742u;
        if (c0408u2 instanceof E.d) {
            c0408u2.M0(this.f7736o);
        }
        c0408u3 = this.f7742u;
        if (c0408u3 instanceof D.v) {
            c0408u3.N0(this.f7738q);
        }
        c0408u4 = this.f7742u;
        if (c0408u4 instanceof D.w) {
            c0408u4.O0(this.f7739r);
        }
        c0408u5 = this.f7742u;
        if (c0408u5 instanceof InterfaceC0265n) {
            c0408u5.L0(this.f7740s);
        }
        this.f7742u = null;
        this.f7743v = null;
        this.f7744w = null;
        if (this.f7728g != null) {
            it = this.f7729h.f8606b.iterator();
            while (it.hasNext()) {
                ((p000a.a) it.next()).cancel();
            }
            this.f7728g = null;
        }
        uVar = this.f7708A;
        if (uVar != null) {
            uVar.U();
            this.f7709B.U();
            this.f7710C.U();
        }
    }

    public final void l(boolean z7) {
        if (z7 && (this.f7742u instanceof E.e)) {
            a0(new IllegalStateException("Do not call dispatchLowMemory() on host. Host implements OnTrimMemoryProvider and automatically dispatches low memory callbacks to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null) {
                abstractComponentCallbacksC0406s.f7961k0 = true;
                if (z7) {
                    abstractComponentCallbacksC0406s.f7951a0.l(true);
                }
            }
        }
    }

    public final void m(boolean z7, boolean z8) {
        if (z8 && (this.f7742u instanceof D.v)) {
            a0(new IllegalStateException("Do not call dispatchMultiWindowModeChanged() on host. Host implements OnMultiWindowModeChangedProvider and automatically dispatches multi-window mode changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && z8) {
                abstractComponentCallbacksC0406s.f7951a0.m(z7, true);
            }
        }
    }

    public final void n() {
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.n()) {
            if (abstractComponentCallbacksC0406s != null) {
                abstractComponentCallbacksC0406s.s();
                abstractComponentCallbacksC0406s.f7951a0.n();
            }
        }
    }

    public final boolean o() {
        if (this.f7741t < 1) {
            return false;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && !abstractComponentCallbacksC0406s.f7956f0 && abstractComponentCallbacksC0406s.f7951a0.o()) {
                return true;
            }
        }
        return false;
    }

    public final void p() {
        if (this.f7741t < 1) {
            return;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && !abstractComponentCallbacksC0406s.f7956f0) {
                abstractComponentCallbacksC0406s.f7951a0.p();
            }
        }
    }

    public final void q(AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s) {
        if (abstractComponentCallbacksC0406s != null) {
            if (abstractComponentCallbacksC0406s.equals(this.f7724c.j(abstractComponentCallbacksC0406s.f7936L))) {
                abstractComponentCallbacksC0406s.f7949Y.getClass();
                boolean zJ = J(abstractComponentCallbacksC0406s);
                Boolean bool = abstractComponentCallbacksC0406s.f7941Q;
                if (bool == null || bool.booleanValue() != zJ) {
                    abstractComponentCallbacksC0406s.f7941Q = Boolean.valueOf(zJ);
                    K k8 = abstractComponentCallbacksC0406s.f7951a0;
                    k8.c0();
                    k8.q(k8.f7745x);
                }
            }
        }
    }

    public final void r(boolean z7, boolean z8) {
        if (z8 && (this.f7742u instanceof D.w)) {
            a0(new IllegalStateException("Do not call dispatchPictureInPictureModeChanged() on host. Host implements OnPictureInPictureModeChangedProvider and automatically dispatches picture-in-picture mode changes to fragments."));
            throw null;
        }
        for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
            if (abstractComponentCallbacksC0406s != null && z8) {
                abstractComponentCallbacksC0406s.f7951a0.r(z7, true);
            }
        }
    }

    public final boolean s() {
        boolean z7 = false;
        if (this.f7741t >= 1) {
            for (AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s : this.f7724c.o()) {
                if (abstractComponentCallbacksC0406s != null && I(abstractComponentCallbacksC0406s) && !abstractComponentCallbacksC0406s.f7956f0 && abstractComponentCallbacksC0406s.f7951a0.s()) {
                    z7 = true;
                }
            }
        }
        return z7;
    }

    public final void t(int i8) {
        try {
            this.f7723b = true;
            for (P p7 : ((HashMap) this.f7724c.f27237H).values()) {
                if (p7 != null) {
                    p7.f7780e = i8;
                }
            }
            K(i8, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((e0) it.next()).e();
            }
            this.f7723b = false;
            x(true);
        } catch (Throwable th) {
            this.f7723b = false;
            throw th;
        }
    }

    public final void u(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        String strA = U2.A(str, "    ");
        p096m2.o oVar = this.f7724c;
        oVar.getClass();
        String str2 = str + "    ";
        if (!((HashMap) oVar.f27237H).isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (P p7 : ((HashMap) oVar.f27237H).values()) {
                printWriter.print(str);
                if (p7 != null) {
                    AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = p7.f7778c;
                    printWriter.println(abstractComponentCallbacksC0406s);
                    abstractComponentCallbacksC0406s.f(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = ((ArrayList) oVar.f27236G).size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i8 = 0; i8 < size3; i8++) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = (AbstractComponentCallbacksC0406s) ((ArrayList) oVar.f27236G).get(i8);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i8);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0406s2.toString());
            }
        }
        ArrayList arrayList = this.f7726e;
        if (arrayList != null && (size2 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i9 = 0; i9 < size2; i9++) {
                AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = (AbstractComponentCallbacksC0406s) this.f7726e.get(i9);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i9);
                printWriter.print(": ");
                printWriter.println(abstractComponentCallbacksC0406s3.toString());
            }
        }
        ArrayList arrayList2 = this.f7725d;
        if (arrayList2 != null && (size = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i10 = 0; i10 < size; i10++) {
                C0389a c0389a = (C0389a) this.f7725d.get(i10);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i10);
                printWriter.print(": ");
                printWriter.println(c0389a.toString());
                c0389a.f(strA, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.f7730i.get());
        synchronized (this.f7722a) {
            try {
                int size4 = this.f7722a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i11 = 0; i11 < size4; i11++) {
                        Object obj = (I) this.f7722a.get(i11);
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i11);
                        printWriter.print(": ");
                        printWriter.println(obj);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.f7742u);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.f7743v);
        if (this.f7744w != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.f7744w);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.f7741t);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.f7713F);
        printWriter.print(" mStopped=");
        printWriter.print(this.f7714G);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.f7715H);
        if (this.f7712E) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.f7712E);
        }
    }

    public final void v(I i8, boolean z7) {
        if (!z7) {
            if (this.f7742u == null) {
                if (!this.f7715H) {
                    throw new IllegalStateException("FragmentManager has not been attached to a host.");
                }
                throw new IllegalStateException("FragmentManager has been destroyed");
            }
            if (this.f7713F || this.f7714G) {
                throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
            }
        }
        synchronized (this.f7722a) {
            try {
                if (this.f7742u == null) {
                    if (!z7) {
                        throw new IllegalStateException("Activity has been destroyed");
                    }
                } else {
                    this.f7722a.add(i8);
                    T();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(boolean z7) {
        if (this.f7723b) {
            throw new IllegalStateException("FragmentManager is already executing transactions");
        }
        if (this.f7742u == null) {
            if (!this.f7715H) {
                throw new IllegalStateException("FragmentManager has not been attached to a host.");
            }
            throw new IllegalStateException("FragmentManager has been destroyed");
        }
        if (Looper.myLooper() != this.f7742u.f7981O.getLooper()) {
            throw new IllegalStateException("Must be called from main thread of fragment host");
        }
        if (!z7 && (this.f7713F || this.f7714G)) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f7717J == null) {
            this.f7717J = new ArrayList();
            this.f7718K = new ArrayList();
        }
    }

    public final boolean x(boolean z7) {
        w(z7);
        boolean z8 = false;
        while (true) {
            ArrayList arrayList = this.f7717J;
            ArrayList arrayList2 = this.f7718K;
            synchronized (this.f7722a) {
                if (this.f7722a.isEmpty()) {
                    break;
                }
                try {
                    int size = this.f7722a.size();
                    boolean zA = false;
                    for (int i8 = 0; i8 < size; i8++) {
                        zA |= ((I) this.f7722a.get(i8)).a(arrayList, arrayList2);
                    }
                    this.f7722a.clear();
                    this.f7742u.f7981O.removeCallbacks(this.f7721N);
                    if (!zA) {
                        break;
                    }
                    z8 = true;
                    this.f7723b = true;
                    try {
                        Q(this.f7717J, this.f7718K);
                        d();
                    } catch (Throwable th) {
                        d();
                        throw th;
                    }
                } catch (Throwable th2) {
                    this.f7722a.clear();
                    this.f7742u.f7981O.removeCallbacks(this.f7721N);
                    throw th2;
                }
            }
        }
        c0();
        if (this.f7716I) {
            this.f7716I = false;
            Z();
        }
        ((HashMap) this.f7724c.f27237H).values().removeAll(Collections.singleton(null));
        return z8;
    }

    public final void y(I i8, boolean z7) {
        if (z7 && (this.f7742u == null || this.f7715H)) {
            return;
        }
        w(z7);
        if (i8.a(this.f7717J, this.f7718K)) {
            this.f7723b = true;
            try {
                Q(this.f7717J, this.f7718K);
                d();
            } catch (Throwable th) {
                d();
                throw th;
            }
        }
        c0();
        if (this.f7716I) {
            this.f7716I = false;
            Z();
        }
        ((HashMap) this.f7724c.f27237H).values().removeAll(Collections.singleton(null));
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0087  */
    /* JADX WARN: Code duplicated, block: B:64:0x0169  */
    public final void z(ArrayList arrayList, ArrayList arrayList2, int i8, int i9) {
        ViewGroup viewGroup;
        p096m2.o oVar;
        p096m2.o oVar2;
        p096m2.o oVar3;
        int i10;
        int i11;
        ArrayList arrayList3 = arrayList;
        boolean z7 = ((C0389a) arrayList3.get(i8)).f7827q;
        ArrayList arrayList4 = this.f7719L;
        if (arrayList4 == null) {
            this.f7719L = new ArrayList();
        } else {
            arrayList4.clear();
        }
        ArrayList arrayList5 = this.f7719L;
        p096m2.o oVar4 = this.f7724c;
        arrayList5.addAll(oVar4.o());
        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s = this.f7745x;
        int i12 = i8;
        boolean z8 = false;
        while (true) {
            int i13 = 1;
            if (i12 >= i9) {
                p096m2.o oVar5 = oVar4;
                this.f7719L.clear();
                if (!z7 && this.f7741t >= 1) {
                    for (int i14 = i8; i14 < i9; i14++) {
                        Iterator it = ((C0389a) arrayList.get(i14)).f7813c.iterator();
                        while (it.hasNext()) {
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s2 = ((Q) it.next()).f7782b;
                            if (abstractComponentCallbacksC0406s2 == null || abstractComponentCallbacksC0406s2.f7949Y == null) {
                                oVar = oVar5;
                            } else {
                                oVar = oVar5;
                                oVar.q(f(abstractComponentCallbacksC0406s2));
                            }
                            oVar5 = oVar;
                        }
                    }
                }
                for (int i15 = i8; i15 < i9; i15++) {
                    C0389a c0389a = (C0389a) arrayList.get(i15);
                    if (((Boolean) arrayList2.get(i15)).booleanValue()) {
                        c0389a.c(-1);
                        for (int size = c0389a.f7813c.size() - 1; size >= 0; size--) {
                            Q q7 = (Q) c0389a.f7813c.get(size);
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s3 = q7.f7782b;
                            if (abstractComponentCallbacksC0406s3 != null) {
                                if (abstractComponentCallbacksC0406s3.f7966p0 != null) {
                                    abstractComponentCallbacksC0406s3.i().f7915a = true;
                                }
                                int i16 = c0389a.f7818h;
                                int i17 = 8194;
                                if (i16 != 4097) {
                                    if (i16 != 8194) {
                                        i17 = 4100;
                                        if (i16 != 8197) {
                                            i17 = i16 != 4099 ? i16 != 4100 ? 0 : 8197 : 4099;
                                        }
                                    } else {
                                        i17 = 4097;
                                    }
                                }
                                if (abstractComponentCallbacksC0406s3.f7966p0 != null || i17 != 0) {
                                    abstractComponentCallbacksC0406s3.i();
                                    abstractComponentCallbacksC0406s3.f7966p0.f7920f = i17;
                                }
                                ArrayList arrayList6 = c0389a.f7826p;
                                ArrayList arrayList7 = c0389a.f7825o;
                                abstractComponentCallbacksC0406s3.i();
                                C0405q c0405q = abstractComponentCallbacksC0406s3.f7966p0;
                                c0405q.f7921g = arrayList6;
                                c0405q.f7922h = arrayList7;
                            }
                            int i18 = q7.f7781a;
                            K k8 = c0389a.f7828r;
                            switch (i18) {
                                case 1:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.U(abstractComponentCallbacksC0406s3, true);
                                    k8.P(abstractComponentCallbacksC0406s3);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + q7.f7781a);
                                case 3:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.a(abstractComponentCallbacksC0406s3);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.getClass();
                                    Y(abstractComponentCallbacksC0406s3);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.U(abstractComponentCallbacksC0406s3, true);
                                    k8.F(abstractComponentCallbacksC0406s3);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.c(abstractComponentCallbacksC0406s3);
                                    break;
                                case 7:
                                    abstractComponentCallbacksC0406s3.O(q7.f7784d, q7.f7785e, q7.f7786f, q7.f7787g);
                                    k8.U(abstractComponentCallbacksC0406s3, true);
                                    k8.g(abstractComponentCallbacksC0406s3);
                                    break;
                                case 8:
                                    k8.W(null);
                                    break;
                                case 9:
                                    k8.W(abstractComponentCallbacksC0406s3);
                                    break;
                                case 10:
                                    k8.V(abstractComponentCallbacksC0406s3, q7.f7788h);
                                    break;
                            }
                        }
                    } else {
                        c0389a.c(1);
                        int size2 = c0389a.f7813c.size();
                        for (int i19 = 0; i19 < size2; i19++) {
                            Q q8 = (Q) c0389a.f7813c.get(i19);
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s4 = q8.f7782b;
                            if (abstractComponentCallbacksC0406s4 != null) {
                                if (abstractComponentCallbacksC0406s4.f7966p0 != null) {
                                    abstractComponentCallbacksC0406s4.i().f7915a = false;
                                }
                                int i20 = c0389a.f7818h;
                                if (abstractComponentCallbacksC0406s4.f7966p0 != null || i20 != 0) {
                                    abstractComponentCallbacksC0406s4.i();
                                    abstractComponentCallbacksC0406s4.f7966p0.f7920f = i20;
                                }
                                ArrayList arrayList8 = c0389a.f7825o;
                                ArrayList arrayList9 = c0389a.f7826p;
                                abstractComponentCallbacksC0406s4.i();
                                C0405q c0405q2 = abstractComponentCallbacksC0406s4.f7966p0;
                                c0405q2.f7921g = arrayList8;
                                c0405q2.f7922h = arrayList9;
                            }
                            int i21 = q8.f7781a;
                            K k9 = c0389a.f7828r;
                            switch (i21) {
                                case 1:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.U(abstractComponentCallbacksC0406s4, false);
                                    k9.a(abstractComponentCallbacksC0406s4);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + q8.f7781a);
                                case 3:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.P(abstractComponentCallbacksC0406s4);
                                    break;
                                case 4:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.F(abstractComponentCallbacksC0406s4);
                                    break;
                                case 5:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.U(abstractComponentCallbacksC0406s4, false);
                                    Y(abstractComponentCallbacksC0406s4);
                                    break;
                                case 6:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.g(abstractComponentCallbacksC0406s4);
                                    break;
                                case 7:
                                    abstractComponentCallbacksC0406s4.O(q8.f7784d, q8.f7785e, q8.f7786f, q8.f7787g);
                                    k9.U(abstractComponentCallbacksC0406s4, false);
                                    k9.c(abstractComponentCallbacksC0406s4);
                                    break;
                                case 8:
                                    k9.W(abstractComponentCallbacksC0406s4);
                                    break;
                                case 9:
                                    k9.W(null);
                                    break;
                                case 10:
                                    k9.V(abstractComponentCallbacksC0406s4, q8.f7789i);
                                    break;
                            }
                        }
                    }
                }
                boolean zBooleanValue = ((Boolean) arrayList2.get(i9 - 1)).booleanValue();
                for (int i22 = i8; i22 < i9; i22++) {
                    C0389a c0389a2 = (C0389a) arrayList.get(i22);
                    if (zBooleanValue) {
                        for (int size3 = c0389a2.f7813c.size() - 1; size3 >= 0; size3--) {
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s5 = ((Q) c0389a2.f7813c.get(size3)).f7782b;
                            if (abstractComponentCallbacksC0406s5 != null) {
                                f(abstractComponentCallbacksC0406s5).k();
                            }
                        }
                    } else {
                        Iterator it2 = c0389a2.f7813c.iterator();
                        while (it2.hasNext()) {
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s6 = ((Q) it2.next()).f7782b;
                            if (abstractComponentCallbacksC0406s6 != null) {
                                f(abstractComponentCallbacksC0406s6).k();
                            }
                        }
                    }
                }
                K(this.f7741t, true);
                HashSet<e0> hashSet = new HashSet();
                for (int i23 = i8; i23 < i9; i23++) {
                    Iterator it3 = ((C0389a) arrayList.get(i23)).f7813c.iterator();
                    while (it3.hasNext()) {
                        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s7 = ((Q) it3.next()).f7782b;
                        if (abstractComponentCallbacksC0406s7 != null && (viewGroup = abstractComponentCallbacksC0406s7.f7962l0) != null) {
                            hashSet.add(e0.f(viewGroup, E()));
                        }
                    }
                }
                for (e0 e0Var : hashSet) {
                    e0Var.f7876d = zBooleanValue;
                    e0Var.g();
                    e0Var.c();
                }
                for (int i24 = i8; i24 < i9; i24++) {
                    C0389a c0389a3 = (C0389a) arrayList.get(i24);
                    if (((Boolean) arrayList2.get(i24)).booleanValue() && c0389a3.f7830t >= 0) {
                        c0389a3.f7830t = -1;
                    }
                    c0389a3.getClass();
                }
                return;
            }
            C0389a c0389a4 = (C0389a) arrayList3.get(i12);
            if (((Boolean) arrayList2.get(i12)).booleanValue()) {
                oVar2 = oVar4;
                int i25 = 1;
                ArrayList arrayList10 = this.f7719L;
                int size4 = c0389a4.f7813c.size() - 1;
                while (size4 >= 0) {
                    Q q9 = (Q) c0389a4.f7813c.get(size4);
                    int i26 = q9.f7781a;
                    if (i26 != i25) {
                        if (i26 != 3) {
                            switch (i26) {
                                case 6:
                                    arrayList10.add(q9.f7782b);
                                    break;
                                case 8:
                                    abstractComponentCallbacksC0406s = null;
                                    break;
                                case 9:
                                    abstractComponentCallbacksC0406s = q9.f7782b;
                                    break;
                                case 10:
                                    q9.f7789i = q9.f7788h;
                                    break;
                            }
                        } else {
                            arrayList10.add(q9.f7782b);
                        }
                        size4--;
                        i25 = 1;
                    }
                    arrayList10.remove(q9.f7782b);
                    size4--;
                    i25 = 1;
                }
            } else {
                ArrayList arrayList11 = this.f7719L;
                int i27 = 0;
                while (i27 < c0389a4.f7813c.size()) {
                    Q q10 = (Q) c0389a4.f7813c.get(i27);
                    int i28 = q10.f7781a;
                    if (i28 == i13) {
                        oVar3 = oVar4;
                        i10 = 1;
                        arrayList11.add(q10.f7782b);
                    } else if (i28 != 2) {
                        if (i28 == 3 || i28 == 6) {
                            arrayList11.remove(q10.f7782b);
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s8 = q10.f7782b;
                            if (abstractComponentCallbacksC0406s8 == abstractComponentCallbacksC0406s) {
                                c0389a4.f7813c.add(i27, new Q(9, abstractComponentCallbacksC0406s8));
                                i27++;
                                oVar3 = oVar4;
                                i10 = 1;
                                abstractComponentCallbacksC0406s = null;
                            }
                        } else if (i28 == 7) {
                            oVar3 = oVar4;
                            i10 = 1;
                            arrayList11.add(q10.f7782b);
                        } else if (i28 == 8) {
                            c0389a4.f7813c.add(i27, new Q(9, abstractComponentCallbacksC0406s, 0));
                            q10.f7783c = true;
                            i27++;
                            abstractComponentCallbacksC0406s = q10.f7782b;
                        }
                        oVar3 = oVar4;
                        i10 = 1;
                    } else {
                        AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s9 = q10.f7782b;
                        int i29 = abstractComponentCallbacksC0406s9.f7954d0;
                        int size5 = arrayList11.size() - 1;
                        boolean z9 = false;
                        while (size5 >= 0) {
                            AbstractComponentCallbacksC0406s abstractComponentCallbacksC0406s10 = (AbstractComponentCallbacksC0406s) arrayList11.get(size5);
                            p096m2.o oVar6 = oVar4;
                            if (abstractComponentCallbacksC0406s10.f7954d0 != i29) {
                                i29 = i29;
                            } else if (abstractComponentCallbacksC0406s10 == abstractComponentCallbacksC0406s9) {
                                i29 = i29;
                                z9 = true;
                            } else {
                                if (abstractComponentCallbacksC0406s10 == abstractComponentCallbacksC0406s) {
                                    i11 = 0;
                                    c0389a4.f7813c.add(i27, new Q(9, abstractComponentCallbacksC0406s10, 0));
                                    i27++;
                                    abstractComponentCallbacksC0406s = null;
                                } else {
                                    i11 = 0;
                                }
                                Q q11 = new Q(3, abstractComponentCallbacksC0406s10, i11);
                                q11.f7784d = q10.f7784d;
                                q11.f7786f = q10.f7786f;
                                q11.f7785e = q10.f7785e;
                                q11.f7787g = q10.f7787g;
                                c0389a4.f7813c.add(i27, q11);
                                arrayList11.remove(abstractComponentCallbacksC0406s10);
                                i27++;
                            }
                            size5--;
                            oVar4 = oVar6;
                            i29 = i29;
                        }
                        oVar3 = oVar4;
                        if (z9) {
                            c0389a4.f7813c.remove(i27);
                            i27--;
                            i10 = 1;
                        } else {
                            i10 = 1;
                            q10.f7781a = 1;
                            q10.f7783c = true;
                            arrayList11.add(abstractComponentCallbacksC0406s9);
                        }
                    }
                    i27 += i10;
                    oVar4 = oVar3;
                    i13 = 1;
                }
                oVar2 = oVar4;
            }
            z8 = z8 || c0389a4.f7819i;
            i12++;
            arrayList3 = arrayList;
            oVar4 = oVar2;
        }
    }
}
