package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import java.math.BigInteger;
import java.util.HashSet;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.oe, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1781oe implements O5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p113o3.K f20294b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1729ne f20295c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1677me f20296d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f20293a = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final HashSet f20297e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashSet f20298f = new HashSet();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f20299g = false;

    public C1781oe(String str, p113o3.L l4) {
        this.f20296d = new C1677me(str, l4);
        this.f20294b = l4;
        C1729ne c1729ne = new C1729ne();
        c1729ne.f20173a = BigInteger.ONE;
        c1729ne.f20174b = "0";
        this.f20295c = c1729ne;
    }

    @Override // com.google.android.gms.internal.ads.O5
    public final void a(boolean z7) {
        p083k3.l.f25980A.f25990j.getClass();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (z7) {
            if (jCurrentTimeMillis - ((p113o3.L) this.f20294b).v() > ((Long) C3099q.f26624d.f26627c.a(Q7.f15669M0)).longValue()) {
                this.f20296d.f19960d = -1;
            } else {
                this.f20296d.f19960d = ((p113o3.L) this.f20294b).u();
            }
            this.f20299g = true;
            return;
        }
        p113o3.L l4 = (p113o3.L) this.f20294b;
        l4.s();
        synchronized (l4.f27894a) {
            try {
                if (l4.f27908o != jCurrentTimeMillis) {
                    l4.f27908o = jCurrentTimeMillis;
                    SharedPreferences.Editor editor = l4.f27900g;
                    if (editor != null) {
                        editor.putLong("app_last_background_time_ms", jCurrentTimeMillis);
                        l4.f27900g.apply();
                    }
                    l4.t();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ((p113o3.L) this.f20294b).k(this.f20296d.f19960d);
    }

    public final void b(C1315fe c1315fe) {
        synchronized (this.f20293a) {
            this.f20297e.add(c1315fe);
        }
    }

    public final void c() {
        synchronized (this.f20293a) {
            this.f20296d.c();
        }
    }

    public final void d() {
        synchronized (this.f20293a) {
            this.f20296d.d();
        }
    }

    public final void e() {
        synchronized (this.f20293a) {
            this.f20296d.g();
        }
    }

    public final void f() {
        synchronized (this.f20293a) {
            this.f20296d.g();
        }
    }

    public final void g(p090l3.b1 b1Var, long j8) {
        synchronized (this.f20293a) {
            this.f20296d.e(b1Var, j8);
        }
    }

    public final void h(HashSet hashSet) {
        synchronized (this.f20293a) {
            this.f20297e.addAll(hashSet);
        }
    }
}
