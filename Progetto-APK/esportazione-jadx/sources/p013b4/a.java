package p013b4;

import S3.g;
import Y.RunnableC0394f;
import android.os.Bundle;
import android.os.SystemClock;
import com.bumptech.glide.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p021c4.C0591j0;
import p021c4.C0597l0;
import p021c4.C0619x;
import p021c4.F1;
import p021c4.I1;
import p021c4.K0;
import p021c4.S0;
import p021c4.T;
import p021c4.V0;
import p079k.RunnableC3015g;
import p132r.f;

/* JADX INFO: loaded from: classes.dex */
public final class a extends c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final C0597l0 f9864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final K0 f9865b;

    public a(C0597l0 c0597l0) {
        c.h(c0597l0);
        this.f9864a = c0597l0;
        K0 k8 = c0597l0.f11265V;
        C0597l0.j(k8);
        this.f9865b = k8;
    }

    @Override // p021c4.L0
    public final int c(String str) {
        K0 k8 = this.f9865b;
        k8.getClass();
        c.e(str);
        ((C0597l0) k8.f10616G).getClass();
        return 25;
    }

    @Override // p021c4.L0
    public final void e(String str) {
        C0597l0 c0597l0 = this.f9864a;
        C0619x c0619x = c0597l0.f11266W;
        C0597l0.h(c0619x);
        c0597l0.f11263T.getClass();
        c0619x.n(str, SystemClock.elapsedRealtime());
    }

    @Override // p021c4.L0
    public final List f(String str, String str2) {
        K0 k8 = this.f9865b;
        C0597l0 c0597l0 = (C0597l0) k8.f10616G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        boolean z7 = c0591j0.z();
        T t7 = c0597l0.f11258O;
        if (z7) {
            C0597l0.k(t7);
            t7.f11039L.a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (g.d()) {
            C0597l0.k(t7);
            t7.f11039L.a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        C0591j0 c0591j1 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j1);
        c0591j1.r(atomicReference, 5000L, "get conditional user properties", new RunnableC3015g(k8, atomicReference, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return I1.z(list);
        }
        C0597l0.k(t7);
        t7.f11039L.b(null, "Timed out waiting for get conditional user properties");
        return new ArrayList();
    }

    @Override // p021c4.L0
    public final Map g(String str, String str2, boolean z7) {
        K0 k8 = this.f9865b;
        C0597l0 c0597l0 = (C0597l0) k8.f10616G;
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        boolean z8 = c0591j0.z();
        T t7 = c0597l0.f11258O;
        if (z8) {
            C0597l0.k(t7);
            t7.f11039L.a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (g.d()) {
            C0597l0.k(t7);
            t7.f11039L.a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        C0591j0 c0591j1 = ((C0597l0) k8.f10616G).f11259P;
        C0597l0.k(c0591j1);
        c0591j1.r(atomicReference, 5000L, "get user properties", new RunnableC0394f(k8, atomicReference, str, str2, z7));
        List<F1> list = (List) atomicReference.get();
        if (list == null) {
            C0597l0.k(t7);
            t7.f11039L.b(Boolean.valueOf(z7), "Timed out waiting for handle get user properties, includeInternal");
            return Collections.emptyMap();
        }
        f fVar = new f(list.size());
        for (F1 f8 : list) {
            Object objI = f8.i();
            if (objI != null) {
                fVar.put(f8.f10840H, objI);
            }
        }
        return fVar;
    }

    @Override // p021c4.L0
    public final void h(Bundle bundle) {
        K0 k8 = this.f9865b;
        ((C0597l0) k8.f10616G).f11263T.getClass();
        k8.C(bundle, System.currentTimeMillis());
    }

    @Override // p021c4.L0
    public final void i(String str, String str2, Bundle bundle) {
        K0 k8 = this.f9865b;
        ((C0597l0) k8.f10616G).f11263T.getClass();
        k8.x(str, str2, bundle, true, true, System.currentTimeMillis());
    }

    @Override // p021c4.L0
    public final void j(String str, String str2, Bundle bundle) {
        K0 k8 = this.f9864a.f11265V;
        C0597l0.j(k8);
        k8.s(str, str2, bundle);
    }

    @Override // p021c4.L0
    public final void k(String str) {
        C0597l0 c0597l0 = this.f9864a;
        C0619x c0619x = c0597l0.f11266W;
        C0597l0.h(c0619x);
        c0597l0.f11263T.getClass();
        c0619x.o(SystemClock.elapsedRealtime(), str);
    }

    @Override // p021c4.L0
    public final long zzb() {
        I1 i8 = this.f9864a.f11261R;
        C0597l0.i(i8);
        return i8.y0();
    }

    @Override // p021c4.L0
    public final String zzh() {
        return (String) this.f9865b.f10913M.get();
    }

    @Override // p021c4.L0
    public final String zzi() {
        V0 v5 = ((C0597l0) this.f9865b.f10616G).f11264U;
        C0597l0.j(v5);
        S0 s7 = v5.f11062I;
        if (s7 != null) {
            return s7.f11031b;
        }
        return null;
    }

    @Override // p021c4.L0
    public final String zzj() {
        V0 v5 = ((C0597l0) this.f9865b.f10616G).f11264U;
        C0597l0.j(v5);
        S0 s7 = v5.f11062I;
        if (s7 != null) {
            return s7.f11030a;
        }
        return null;
    }

    @Override // p021c4.L0
    public final String zzk() {
        return (String) this.f9865b.f10913M.get();
    }
}
