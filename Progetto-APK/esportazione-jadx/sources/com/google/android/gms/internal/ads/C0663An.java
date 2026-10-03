package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.An, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0663An implements InterfaceC1022Zj, InterfaceC0779Ij, InterfaceC1993sj, InterfaceC0925Sk {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final C0693Cn f12032G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C0783In f12033H;

    public C0663An(C0693Cn c0693Cn, C0783In c0783In) {
        this.f12032G = c0693Cn;
        this.f12033H = c0783In;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void C(Tv tv) {
        C0693Cn c0693Cn = this.f12032G;
        c0693Cn.getClass();
        boolean zIsEmpty = ((List) tv.f16755b.f21882H).isEmpty();
        C2246xc c2246xc = tv.f16755b;
        if (!zIsEmpty) {
            Ov ov = (Ov) ((List) c2246xc.f21882H).get(0);
            c0693Cn.a("ad_format", Ov.a(ov.f15248b));
            if (ov.f15248b == 6) {
                c0693Cn.f12691a.put("as", true != c0693Cn.f12692b.f20299g ? "0" : "1");
            }
        }
        c0693Cn.a("gqi", ((Qv) c2246xc.f21883I).f16150b);
    }

    public final void a(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (String str : bundle.keySet()) {
            long j8 = bundle.getLong(str);
            if (j8 >= 0) {
                this.f12032G.a(str, String.valueOf(j8));
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void b(String str) {
        if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15968w6)).booleanValue()) {
            C0693Cn c0693Cn = this.f12032G;
            c0693Cn.f12691a.put("action", "sgf");
            c0693Cn.a("sgf_reason", str);
            this.f12033H.a(c0693Cn.f12691a, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0925Sk
    public final void c(p167v3.r rVar) {
        String str;
        J7 j8 = Q7.f15968w6;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            C0783In c0783In = this.f12033H;
            C0693Cn c0693Cn = this.f12032G;
            if (rVar == null) {
                c0693Cn.f12691a.put("action", "sgs");
                ConcurrentHashMap concurrentHashMap = c0693Cn.f12691a;
                concurrentHashMap.put("request_id", "-1");
                c0783In.a(concurrentHashMap, false);
                return;
            }
            C0973Wc c0973Wc = rVar.f30683c;
            if (c0973Wc != null) {
                d(c0973Wc.f17262S, C0678Bn.f12492d);
            }
            try {
                JSONObject jSONObject = new JSONObject(rVar.f30682b);
                c0693Cn.f12691a.put("action", "sgs");
                ConcurrentHashMap concurrentHashMap2 = c0693Cn.f12691a;
                if (((Boolean) c3099q.f26627c.a(Q7.T8)).booleanValue()) {
                    try {
                        str = jSONObject.getJSONObject("extras").getBoolean("accept_3p_cookie") ? "1" : "0";
                    } catch (JSONException e8) {
                        p120p3.h.e("Error retrieving JSONObject from the requestJson, ", e8);
                        str = "na";
                    }
                } else {
                    str = "na";
                }
                concurrentHashMap2.put("tpc", str);
                if (c0973Wc != null) {
                    c0693Cn.b(c0973Wc.f17250G);
                }
                c0783In.a(concurrentHashMap2, false);
            } catch (JSONException unused) {
                c0693Cn.f12691a.put("action", "sgf");
                ConcurrentHashMap concurrentHashMap3 = c0693Cn.f12691a;
                concurrentHashMap3.put("sgf_reason", "request_invalid");
                c0783In.a(concurrentHashMap3, false);
            }
        }
    }

    public final void d(Bundle bundle, PA pa) {
        if (!((Boolean) C3099q.f26624d.f26627c.a(Q7.f15734U1)).booleanValue() || bundle == null) {
            return;
        }
        p083k3.l.f25980A.f25990j.getClass();
        bundle.putLong("public-api-callback", System.currentTimeMillis());
        String str = true != bundle.getBoolean("ls") ? "0" : "1";
        C0693Cn c0693Cn = this.f12032G;
        c0693Cn.a("ls", str);
        int i8 = pa.f15342J;
        for (int i9 = 0; i9 < i8; i9++) {
            C0678Bn c0678Bn = (C0678Bn) pa.get(i9);
            long j8 = bundle.getLong(AbstractC2090uc.d(c0678Bn.f12495b), -1L);
            long j9 = bundle.getLong(AbstractC2090uc.d(c0678Bn.f12496c), -1L);
            if (j8 > 0 && j9 > 0) {
                c0693Cn.a(c0678Bn.f12494a, String.valueOf(j9 - j8));
            }
        }
        a(bundle.getBundle("client_sig_latency_key"));
        a(bundle.getBundle("gms_sig_latency_key"));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0779Ij
    public final void n() {
        C0693Cn c0693Cn = this.f12032G;
        c0693Cn.f12691a.put("action", "loaded");
        d(c0693Cn.f12693c, C0678Bn.f12493e);
        boolean zBooleanValue = ((Boolean) C3099q.f26624d.f26627c.a(Q7.Rb)).booleanValue();
        ConcurrentHashMap concurrentHashMap = c0693Cn.f12691a;
        if (zBooleanValue) {
            concurrentHashMap.put("mafe", true != com.bumptech.glide.c.o("MUTE_AUDIO") ? "0" : "1");
        }
        this.f12033H.a(concurrentHashMap, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1993sj
    public final void y(C3117z0 c3117z0) {
        C0693Cn c0693Cn = this.f12032G;
        c0693Cn.f12691a.put("action", "ftl");
        c0693Cn.a("ftl", String.valueOf(c3117z0.f26629G));
        c0693Cn.a("ed", c3117z0.f26631I);
        this.f12033H.a(c0693Cn.f12691a, false);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1022Zj
    public final void z(C0973Wc c0973Wc) {
        this.f12032G.b(c0973Wc.f17250G);
    }
}
