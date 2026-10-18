package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import java.util.Map;
import okhttp3.HttpUrl;
import org.json.JSONException;
import org.json.JSONObject;
import p039f.AbstractC2987b;
import p090l3.C3097p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.xa, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2244xa implements InterfaceC2036ta, InterfaceC0815La {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC0715Ef f21879G;

    public C2244xa(Context context, p120p3.a aVar) throws C0835Mf {
        C2272y1 c2272y1 = p083k3.l.f25980A.f25984d;
        InterfaceC0715Ef interfaceC0715EfE = C2272y1.e(context, new A2.i(0, 0, 0, 5), aVar, null, null, null, new C2173w6(), null, null, null, null, null, HttpUrl.FRAGMENT_ENCODE_SET, false, false);
        this.f21879G = interfaceC0715EfE;
        interfaceC0715EfE.j().setWillNotDraw(true);
    }

    public static final void a(RunnableC2088ua runnableC2088ua) {
        p120p3.d dVar = C3097p.f26618f.f26619a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            p113o3.I.k("runOnUiThread > the UI thread is the main thread, the runnable will be run now");
            runnableC2088ua.run();
        } else {
            p113o3.I.k("runOnUiThread > the UI thread is not the main thread, the runnable will be added to the message queue");
            if (p113o3.O.f27924l.post(runnableC2088ua)) {
                return;
            }
            p120p3.h.g("runOnUiThread > the runnable could not be placed to the message queue");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0815La
    public final void C(String str, N9 n9) {
        this.f21879G.L0(str, new C2192wa(this, n9));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final /* synthetic */ void b(JSONObject jSONObject, String str) {
        AbstractC2987b.r0(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2036ta, com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void c(String str) {
        p113o3.I.k("invokeJavascript on adWebView from js");
        a(new RunnableC2088ua(this, str, 1));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void d(String str, String str2) {
        c(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2296ya
    public final void g(JSONObject jSONObject, String str) {
        d(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1984sa
    public final void w(String str, Map map) {
        try {
            b(C3097p.f26618f.f26619a.i(map), str);
        } catch (JSONException unused) {
            p120p3.h.g("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0815La
    public final void z(String str, N9 n9) {
        this.f21879G.V(str, new K4(n9, 16));
    }
}
