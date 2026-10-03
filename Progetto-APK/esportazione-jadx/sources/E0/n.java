package E0;

import O0.C0278b;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.H1;
import java.util.Iterator;
import p021c4.C0597l0;
import p021c4.C0611t;
import p021c4.I1;
import p021c4.T;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2533a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f2534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f2535c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f2536d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f2537e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f2538f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Object f2539g;

    public n(C0597l0 c0597l0, String str, String str2, String str3, long j8, long j9, Bundle bundle) {
        C0611t c0611t;
        com.bumptech.glide.c.e(str2);
        com.bumptech.glide.c.e(str3);
        this.f2536d = str2;
        this.f2537e = str3;
        this.f2538f = true == TextUtils.isEmpty(str) ? null : str;
        this.f2534b = j8;
        this.f2535c = j9;
        if (j9 != 0 && j9 > j8) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11042O.b(T.t(str2), "Event created with reverse previous/current timestamps. appId");
        }
        if (bundle.isEmpty()) {
            c0611t = new C0611t(new Bundle());
        } else {
            Bundle bundle2 = new Bundle(bundle);
            Iterator<String> it = bundle2.keySet().iterator();
            while (it.hasNext()) {
                String next = it.next();
                if (next == null) {
                    T t8 = c0597l0.f11258O;
                    C0597l0.k(t8);
                    t8.f11039L.a("Param name can't be null");
                    it.remove();
                } else {
                    I1 i8 = c0597l0.f11261R;
                    C0597l0.i(i8);
                    Object objS = i8.s(bundle2.get(next), next);
                    if (objS == null) {
                        T t9 = c0597l0.f11258O;
                        C0597l0.k(t9);
                        t9.f11042O.b(c0597l0.f11262S.e(next), "Param value can't be null");
                        it.remove();
                    } else {
                        I1 i9 = c0597l0.f11261R;
                        C0597l0.i(i9);
                        i9.H(bundle2, next, objS);
                    }
                }
            }
            c0611t = new C0611t(bundle2);
        }
        this.f2539g = c0611t;
    }

    public final n a(long j8, F0.m mVar) throws C0278b {
        long jF;
        k kVarL = ((F0.m) this.f2537e).l();
        k kVarL2 = mVar.l();
        Object obj = this.f2536d;
        Object obj2 = this.f2538f;
        if (kVarL == null) {
            return new n(j8, mVar, (F0.b) obj2, (P0.i) obj, this.f2535c, kVarL);
        }
        if (!kVarL.g()) {
            return new n(j8, mVar, (F0.b) obj2, (P0.i) obj, this.f2535c, kVarL2);
        }
        long jI = kVarL.i(j8);
        if (jI == 0) {
            return new n(j8, mVar, (F0.b) obj2, (P0.i) obj, this.f2535c, kVarL2);
        }
        H1.j(kVarL2);
        long jH = kVarL.h();
        long jA = kVarL.a(jH);
        long j9 = jI + jH;
        long j10 = j9 - 1;
        long jB = kVarL.b(j10, j8) + kVarL.a(j10);
        long jH2 = kVarL2.h();
        long jA2 = kVarL2.a(jH2);
        long j11 = this.f2535c;
        if (jB == jA2) {
            jF = (j9 - jH2) + j11;
        } else {
            if (jB < jA2) {
                throw new C0278b();
            }
            jF = jA2 < jA ? j11 - (kVarL2.f(jA, j8) - jH) : (kVarL.f(jA2, j8) - jH2) + j11;
        }
        return new n(j8, mVar, (F0.b) obj2, (P0.i) obj, jF, kVarL2);
    }

    public final long b(long j8) {
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.c(this.f2534b, j8) + this.f2535c;
    }

    public final long c(long j8) {
        long jB = b(j8);
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return (kVar.j(this.f2534b, j8) + jB) - 1;
    }

    public final long d() {
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.i(this.f2534b);
    }

    public final long e(long j8) {
        long jF = f(j8);
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.b(j8 - this.f2535c, this.f2534b) + jF;
    }

    public final long f(long j8) {
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.a(j8 - this.f2535c);
    }

    public final F0.j g(long j8) {
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.e(j8 - this.f2535c);
    }

    public final boolean h(long j8, long j9) {
        k kVar = (k) this.f2539g;
        H1.j(kVar);
        return kVar.g() || j9 == -9223372036854775807L || e(j8) <= j9;
    }

    public final n i(C0597l0 c0597l0, long j8) {
        return new n(c0597l0, (String) this.f2538f, (String) this.f2536d, (String) this.f2537e, this.f2534b, j8, (C0611t) this.f2539g);
    }

    public final String toString() {
        switch (this.f2533a) {
            case 1:
                return "Event{appId='" + ((String) this.f2536d) + "', name='" + ((String) this.f2537e) + "', params=" + ((C0611t) this.f2539g).f11369G.toString() + "}";
            default:
                return super.toString();
        }
    }

    public n(C0597l0 c0597l0, String str, String str2, String str3, long j8, long j9, C0611t c0611t) {
        com.bumptech.glide.c.e(str2);
        com.bumptech.glide.c.e(str3);
        com.bumptech.glide.c.h(c0611t);
        this.f2536d = str2;
        this.f2537e = str3;
        this.f2538f = true == TextUtils.isEmpty(str) ? null : str;
        this.f2534b = j8;
        this.f2535c = j9;
        if (j9 != 0 && j9 > j8) {
            T t7 = c0597l0.f11258O;
            C0597l0.k(t7);
            t7.f11042O.c(T.t(str2), T.t(str3), "Event created with reverse previous/current timestamps. appId, name");
        }
        this.f2539g = c0611t;
    }

    public n(long j8, F0.m mVar, F0.b bVar, P0.i iVar, long j9, k kVar) {
        this.f2534b = j8;
        this.f2537e = mVar;
        this.f2538f = bVar;
        this.f2535c = j9;
        this.f2536d = iVar;
        this.f2539g = kVar;
    }
}
