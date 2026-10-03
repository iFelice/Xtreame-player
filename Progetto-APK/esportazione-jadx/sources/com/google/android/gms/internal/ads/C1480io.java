package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import java.util.List;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3097p;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.io, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1480io implements InterfaceC1993sj, InterfaceC1022Zj, InterfaceC0824Lj {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C1895qo f19336G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f19337H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final String f19338I;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public BinderC1630lj f19341L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public C3117z0 f19342M;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public JSONObject f19346Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public JSONObject f19347R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public boolean f19348S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public boolean f19349T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f19350U;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public String f19343N = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public String f19344O = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public String f19345P = HttpUrl.FRAGMENT_ENCODE_SET;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f19339J = 0;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public EnumC1429ho f19340K = EnumC1429ho.f19142G;

    public C1480io(C1895qo c1895qo, Yv yv, String str) {
        this.f19336G = c1895qo;
        this.f19338I = str;
        this.f19337H = yv.f17679f;
    }

    public static JSONObject b(C3117z0 c3117z0) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorDomain", c3117z0.f26631I);
        jSONObject.put("errorCode", c3117z0.f26629G);
        jSONObject.put("errorDescription", c3117z0.f26630H);
        C3117z0 c3117z1 = c3117z0.f26632J;
        jSONObject.put("underlyingError", c3117z1 == null ? null : b(c3117z1));
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        if (this.f19336G.f()) {
            if (!((List) tv.f16755b.f21882H).isEmpty()) {
                this.f19339J = ((Ov) ((List) tv.f16755b.f21882H).get(0)).f15248b;
            }
            if (!TextUtils.isEmpty(((Qv) tv.f16755b.f21883I).f16160l)) {
                this.f19343N = ((Qv) tv.f16755b.f21883I).f16160l;
            }
            if (!TextUtils.isEmpty(((Qv) tv.f16755b.f21883I).f16161m)) {
                this.f19344O = ((Qv) tv.f16755b.f21883I).f16161m;
            }
            if (((Qv) tv.f16755b.f21883I).f16164p.length() > 0) {
                this.f19347R = ((Qv) tv.f16755b.f21883I).f16164p;
            }
            J7 j8 = Q7.B8;
            C3099q c3099q = C3099q.f26624d;
            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                if (this.f19336G.f20639w >= ((Long) c3099q.f26627c.a(Q7.C8)).longValue()) {
                    this.f19350U = true;
                    return;
                }
                if (!TextUtils.isEmpty(((Qv) tv.f16755b.f21883I).f16162n)) {
                    this.f19345P = ((Qv) tv.f16755b.f21883I).f16162n;
                }
                if (((Qv) tv.f16755b.f21883I).f16163o.length() > 0) {
                    this.f19346Q = ((Qv) tv.f16755b.f21883I).f16163o;
                }
                C1895qo c1895qo = this.f19336G;
                JSONObject jSONObject = this.f19346Q;
                int length = jSONObject != null ? jSONObject.toString().length() : 0;
                if (!TextUtils.isEmpty(this.f19345P)) {
                    length += this.f19345P.length();
                }
                long j9 = length;
                synchronized (c1895qo) {
                    c1895qo.f20639w += j9;
                }
            }
        }
    }

    public final JSONObject a() throws JSONException {
        JSONObject jSONObjectC;
        IBinder iBinder;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("state", this.f19340K);
        jSONObject.put("format", Ov.a(this.f19339J));
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.F8)).booleanValue()) {
            jSONObject.put("isOutOfContext", this.f19348S);
            if (this.f19348S) {
                jSONObject.put("shown", this.f19349T);
            }
        }
        BinderC1630lj binderC1630lj = this.f19341L;
        if (binderC1630lj != null) {
            jSONObjectC = c(binderC1630lj);
        } else {
            C3117z0 c3117z0 = this.f19342M;
            JSONObject jSONObjectC2 = null;
            if (c3117z0 != null && (iBinder = c3117z0.f26633K) != null) {
                BinderC1630lj binderC1630lj2 = (BinderC1630lj) iBinder;
                jSONObjectC2 = c(binderC1630lj2);
                if (binderC1630lj2.f19828K.isEmpty()) {
                    JSONArray jSONArray = new JSONArray();
                    jSONArray.put(b(this.f19342M));
                    jSONObjectC2.put("errors", jSONArray);
                }
            }
            jSONObjectC = jSONObjectC2;
        }
        jSONObject.put("responseInfo", jSONObjectC);
        return jSONObject;
    }

    public final JSONObject c(BinderC1630lj binderC1630lj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("winningAdapterClassName", binderC1630lj.f19824G);
        jSONObject.put("responseSecsSinceEpoch", binderC1630lj.f19829L);
        jSONObject.put("responseId", binderC1630lj.f19825H);
        J7 j8 = Q7.y8;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            String str = binderC1630lj.f19830M;
            if (!TextUtils.isEmpty(str)) {
                p120p3.h.b("Bidding data: ".concat(String.valueOf(str)));
                jSONObject.put("biddingData", new JSONObject(str));
            }
        }
        if (!TextUtils.isEmpty(this.f19343N)) {
            jSONObject.put("adRequestUrl", this.f19343N);
        }
        if (!TextUtils.isEmpty(this.f19344O)) {
            jSONObject.put("postBody", this.f19344O);
        }
        if (!TextUtils.isEmpty(this.f19345P)) {
            jSONObject.put("adResponseBody", this.f19345P);
        }
        Object obj = this.f19346Q;
        if (obj != null) {
            jSONObject.put("adResponseHeaders", obj);
        }
        Object obj2 = this.f19347R;
        if (obj2 != null) {
            jSONObject.put("transactionExtras", obj2);
        }
        if (((Boolean) c3099q.f26627c.a(Q7.B8)).booleanValue()) {
            jSONObject.put("hasExceededMemoryLimit", this.f19350U);
        }
        JSONArray jSONArray = new JSONArray();
        for (p090l3.g1 g1Var : binderC1630lj.f19828K) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("adapterClassName", g1Var.f26577G);
            jSONObject2.put("latencyMillis", g1Var.f26578H);
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.z8)).booleanValue()) {
                jSONObject2.put("credentials", C3097p.f26618f.f26619a.h(g1Var.f26580J));
            }
            C3117z0 c3117z0 = g1Var.f26579I;
            jSONObject2.put("error", c3117z0 == null ? null : b(c3117z0));
            jSONArray.put(jSONObject2);
        }
        jSONObject.put("adNetworks", jSONArray);
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0824Lj
    public final void v(AbstractC2252xi abstractC2252xi) {
        C1895qo c1895qo = this.f19336G;
        if (c1895qo.f()) {
            this.f19341L = abstractC2252xi.f21917f;
            this.f19340K = EnumC1429ho.f19143H;
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.F8)).booleanValue()) {
                c1895qo.b(this.f19337H, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        C1895qo c1895qo = this.f19336G;
        if (c1895qo.f()) {
            this.f19340K = EnumC1429ho.f19144I;
            this.f19342M = c3117z0;
            if (((Boolean) C3099q.f26624d.f26627c.a(Q7.F8)).booleanValue()) {
                c1895qo.b(this.f19337H, this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.F8)).booleanValue()) {
            return;
        }
        C1895qo c1895qo = this.f19336G;
        if (c1895qo.f()) {
            c1895qo.b(this.f19337H, this);
        }
    }
}
