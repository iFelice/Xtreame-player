package p021c4;

import B0.C0041c;
import E1.I;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import okhttp3.HttpUrl;
import p096m2.o;
import p151t2.c;

/* JADX INFO: loaded from: classes.dex */
public final class Z extends AbstractC0610s0 {

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final Pair f11085g0 = new Pair(HttpUrl.FRAGMENT_ENCODE_SET, 0L);

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public SharedPreferences f11086I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f11087J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public SharedPreferences f11088K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public c f11089L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final I f11090M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final C0041c f11091N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f11092O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public boolean f11093P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public long f11094Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final I f11095R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final Y f11096S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final C0041c f11097T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final o f11098U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final Y f11099V;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public final I f11100W;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public final I f11101X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public boolean f11102Y;

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public final Y f11103Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public final Y f11104a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final I f11105b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final C0041c f11106c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public final C0041c f11107d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final I f11108e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public final o f11109f0;

    public Z(C0597l0 c0597l0) {
        super(c0597l0);
        this.f11087J = new Object();
        this.f11095R = new I(this, "session_timeout", 1800000L);
        this.f11096S = new Y(this, "start_new_session", true);
        this.f11100W = new I(this, "last_pause_time", 0L);
        this.f11101X = new I(this, "session_id", 0L);
        this.f11097T = new C0041c(this, "non_personalized_ads");
        this.f11098U = new o(this, "last_received_uri_timestamps_by_source");
        this.f11099V = new Y(this, "allow_remote_dynamite", false);
        this.f11090M = new I(this, "first_open_time", 0L);
        com.bumptech.glide.c.e("app_install_time");
        this.f11091N = new C0041c(this, "app_instance_id");
        this.f11103Z = new Y(this, "app_backgrounded", false);
        this.f11104a0 = new Y(this, "deep_link_retrieval_complete", false);
        this.f11105b0 = new I(this, "deep_link_retrieval_attempts", 0L);
        this.f11106c0 = new C0041c(this, "firebase_feature_rollouts");
        this.f11107d0 = new C0041c(this, "deferred_attribution_cache");
        this.f11108e0 = new I(this, "deferred_attribution_cache_timestamp", 0L);
        this.f11109f0 = new o(this, "default_event_parameters");
    }

    @Override // p021c4.AbstractC0610s0
    public final boolean n() {
        return true;
    }

    public final SharedPreferences q() {
        m();
        o();
        if (this.f11088K == null) {
            synchronized (this.f11087J) {
                try {
                    if (this.f11088K == null) {
                        C0597l0 c0597l0 = (C0597l0) this.f10616G;
                        String str = c0597l0.f11250G.getPackageName() + "_preferences";
                        T t7 = c0597l0.f11258O;
                        C0597l0.k(t7);
                        t7.f11047T.b(str, "Default prefs file");
                        this.f11088K = c0597l0.f11250G.getSharedPreferences(str, 0);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f11088K;
    }

    public final void r() {
        SharedPreferences sharedPreferences = ((C0597l0) this.f10616G).f11250G.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f11086I = sharedPreferences;
        boolean z7 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f11102Y = z7;
        if (!z7) {
            SharedPreferences.Editor editorEdit = this.f11086I.edit();
            editorEdit.putBoolean("has_been_opened", true);
            editorEdit.apply();
        }
        long jMax = Math.max(0L, ((Long) E.f10773d.a(null)).longValue());
        c cVar = new c();
        cVar.f30272H = this;
        com.bumptech.glide.c.e("health_monitor");
        com.bumptech.glide.c.b(jMax > 0);
        cVar.f30273I = "health_monitor:start";
        cVar.f30274J = "health_monitor:count";
        cVar.f30275K = "health_monitor:value";
        cVar.f30271G = jMax;
        this.f11089L = cVar;
    }

    public final SharedPreferences s() {
        m();
        o();
        com.bumptech.glide.c.h(this.f11086I);
        return this.f11086I;
    }

    public final SparseArray t() {
        Bundle bundleU = this.f11098U.u();
        int[] intArray = bundleU.getIntArray("uriSources");
        long[] longArray = bundleU.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            T t7 = ((C0597l0) this.f10616G).f11258O;
            C0597l0.k(t7);
            t7.f11039L.a("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i8 = 0; i8 < intArray.length; i8++) {
            sparseArray.put(intArray[i8], Long.valueOf(longArray[i8]));
        }
        return sparseArray;
    }

    public final C0620x0 u() {
        m();
        return C0620x0.e(s().getInt("consent_source", 100), s().getString("consent_settings", "G1"));
    }

    public final void w(boolean z7) {
        m();
        T t7 = ((C0597l0) this.f10616G).f11258O;
        C0597l0.k(t7);
        t7.f11047T.b(Boolean.valueOf(z7), "App measurement setting deferred collection");
        SharedPreferences.Editor editorEdit = s().edit();
        editorEdit.putBoolean("deferred_analytics_collection", z7);
        editorEdit.apply();
    }

    public final boolean x(long j8) {
        return j8 - this.f11095R.a() > this.f11100W.a();
    }

    public final boolean y(l1 l1Var) {
        m();
        String string = s().getString("stored_tcf_param", HttpUrl.FRAGMENT_ENCODE_SET);
        String strC = l1Var.c();
        if (strC.equals(string)) {
            return false;
        }
        SharedPreferences.Editor editorEdit = s().edit();
        editorEdit.putString("stored_tcf_param", strC);
        editorEdit.apply();
        return true;
    }
}
