package com.google.android.gms.internal.ads;

import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Ca, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0680Ca implements N9 {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ long f12632G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0770Ia f12633H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C2244xa f12634I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ C0785Ja f12635J;

    public C0680Ca(C0785Ja c0785Ja, long j8, C0770Ia c0770Ia, C2244xa c2244xa) {
        this.f12632G = j8;
        this.f12633H = c0770Ia;
        this.f12634I = c2244xa;
        this.f12635J = c0785Ja;
    }

    @Override // com.google.android.gms.internal.ads.N9
    public final void f(Object obj, Map map) {
        p083k3.l.f25980A.f25990j.getClass();
        p113o3.I.k("onGmsg /jsLoaded. JsLoaded latency is " + (System.currentTimeMillis() - this.f12632G) + " ms.");
        p113o3.I.k("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        synchronized (this.f12635J.f14156a) {
            p113o3.I.k("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            if (this.f12633H.o() != -1 && this.f12633H.o() != 1) {
                this.f12635J.f14162g = 0;
                C2244xa c2244xa = this.f12634I;
                c2244xa.C("/log", M9.f14663g);
                c2244xa.C("/result", M9.f14671o);
                ((C2040te) this.f12633H.f24905a).b(this.f12634I);
                this.f12635J.f14161f = this.f12633H;
                p113o3.I.k("Successfully loaded JS Engine.");
                p113o3.I.k("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            p113o3.I.k("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
