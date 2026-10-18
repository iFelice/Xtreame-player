package p021c4;

import K3.V;
import android.os.Bundle;
import android.os.SystemClock;
import com.bumptech.glide.c;
import com.google.android.gms.internal.ads.PN;
import com.google.android.gms.internal.measurement.W;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.HttpUrl;

/* JADX INFO: loaded from: classes.dex */
public final class V0 extends B {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public volatile S0 f11062I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public volatile S0 f11063J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public S0 f11064K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final ConcurrentHashMap f11065L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public W f11066M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public volatile boolean f11067N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public volatile S0 f11068O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public S0 f11069P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public boolean f11070Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final Object f11071R;

    public V0(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11071R = new Object();
        this.f11065L = new ConcurrentHashMap();
    }

    @Override // p021c4.B
    public final boolean p() {
        return false;
    }

    public final void q(String str, S0 s7, boolean z7) {
        S0 s8;
        S0 s9 = this.f11062I == null ? this.f11063J : this.f11062I;
        if (s7.f11031b == null) {
            s8 = new S0(s7.f11030a, str != null ? u(str) : null, s7.f11032c, s7.f11034e, s7.f11035f);
        } else {
            s8 = s7;
        }
        this.f11063J = this.f11062I;
        this.f11062I = s8;
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        c0597l0.f11263T.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        C0591j0 c0591j0 = c0597l0.f11259P;
        C0597l0.k(c0591j0);
        c0591j0.x(new T0(this, s8, s9, jElapsedRealtime, z7));
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0023  */
    public final void r(S0 s7, S0 s8, long j8, boolean z7, Bundle bundle) {
        boolean z8;
        m();
        boolean z9 = false;
        if (s8 != null) {
            if (s8.f11032c == s7.f11032c && Objects.equals(s8.f11031b, s7.f11031b) && Objects.equals(s8.f11030a, s7.f11030a)) {
                z8 = false;
            } else {
                z8 = true;
            }
        } else {
            z8 = true;
        }
        if (z7 && this.f11064K != null) {
            z9 = true;
        }
        if (z8) {
            Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
            I1.C(s7, bundle2, true);
            if (s8 != null) {
                String str = s8.f11030a;
                if (str != null) {
                    bundle2.putString("_pn", str);
                }
                String str2 = s8.f11031b;
                if (str2 != null) {
                    bundle2.putString("_pc", str2);
                }
                bundle2.putLong("_pi", s8.f11032c);
            }
            if (z9) {
                C0595k1 c0595k1 = ((C0597l0) this.f10616G).f11260Q;
                C0597l0.j(c0595k1);
                PN pn = c0595k1.f11243L;
                long j9 = j8 - pn.f15385b;
                pn.f15385b = j8;
                if (j9 > 0) {
                    I1 i8 = ((C0597l0) this.f10616G).f11261R;
                    C0597l0.i(i8);
                    i8.A(bundle2, j9);
                }
            }
            C0597l0 c0597l0 = (C0597l0) this.f10616G;
            if (!c0597l0.f11256M.C()) {
                bundle2.putLong("_mst", 1L);
            }
            boolean z10 = s7.f11034e;
            String str3 = true != z10 ? "auto" : "app";
            c0597l0.f11263T.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (z10) {
                long j10 = s7.f11035f;
                if (j10 != 0) {
                    jCurrentTimeMillis = j10;
                }
            }
            K0 k8 = ((C0597l0) this.f10616G).f11265V;
            C0597l0.j(k8);
            k8.z(jCurrentTimeMillis, bundle2, str3, "_vs");
        }
        if (z9) {
            s(this.f11064K, true, j8);
        }
        this.f11064K = s7;
        if (s7.f11034e) {
            this.f11069P = s7;
        }
        C0574d1 c0574d1R = ((C0597l0) this.f10616G).r();
        c0574d1R.m();
        c0574d1R.n();
        c0574d1R.E(new V(14, c0574d1R, s7));
    }

    public final void s(S0 s7, boolean z7, long j8) {
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        C0619x c0619x = c0597l0.f11266W;
        C0597l0.h(c0619x);
        c0597l0.f11263T.getClass();
        c0619x.p(SystemClock.elapsedRealtime());
        boolean z8 = s7 != null && s7.f11033d;
        C0595k1 c0595k1 = c0597l0.f11260Q;
        C0597l0.j(c0595k1);
        if (!c0595k1.f11243L.b(j8, z8, z7) || s7 == null) {
            return;
        }
        s7.f11033d = false;
    }

    public final S0 t(boolean z7) {
        n();
        m();
        if (!z7) {
            return this.f11064K;
        }
        S0 s7 = this.f11064K;
        return s7 != null ? s7 : this.f11069P;
    }

    public final String u(String str) {
        if (str == null) {
            return "Activity";
        }
        String[] strArrSplit = str.split("\\.");
        int length = strArrSplit.length;
        String str2 = length > 0 ? strArrSplit[length - 1] : HttpUrl.FRAGMENT_ENCODE_SET;
        C0597l0 c0597l0 = (C0597l0) this.f10616G;
        return str2.length() > c0597l0.f11256M.s(null, false) ? str2.substring(0, c0597l0.f11256M.s(null, false)) : str2;
    }

    public final void w(W w7, Bundle bundle) {
        Bundle bundle2;
        if (!((C0597l0) this.f10616G).f11256M.C() || bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f11065L.put(Integer.valueOf(w7.f23025G), new S0(bundle2.getLong("id"), bundle2.getString("name"), bundle2.getString("referrer_name")));
    }

    public final S0 x(W w7) {
        c.h(w7);
        Integer numValueOf = Integer.valueOf(w7.f23025G);
        ConcurrentHashMap concurrentHashMap = this.f11065L;
        S0 s7 = (S0) concurrentHashMap.get(numValueOf);
        if (s7 == null) {
            String strU = u(w7.f23026H);
            I1 i8 = ((C0597l0) this.f10616G).f11261R;
            C0597l0.i(i8);
            S0 s8 = new S0(i8.y0(), null, strU);
            concurrentHashMap.put(numValueOf, s8);
            s7 = s8;
        }
        return this.f11068O != null ? this.f11068O : s7;
    }
}
