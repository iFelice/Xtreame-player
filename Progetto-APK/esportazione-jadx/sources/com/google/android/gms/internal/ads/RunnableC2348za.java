package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.TimeoutException;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.za, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC2348za implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f22161G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C0770Ia f22162H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ C2244xa f22163I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ ArrayList f22164J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ long f22165K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final /* synthetic */ C0785Ja f22166L;

    public /* synthetic */ RunnableC2348za(C0785Ja c0785Ja, C0770Ia c0770Ia, C2244xa c2244xa, ArrayList arrayList, long j8, int i8) {
        this.f22161G = i8;
        this.f22166L = c0785Ja;
        this.f22162H = c0770Ia;
        this.f22163I = c2244xa;
        this.f22164J = arrayList;
        this.f22165K = j8;
    }

    private final void a() {
        C0785Ja c0785Ja = this.f22166L;
        C0770Ia c0770Ia = this.f22162H;
        C2244xa c2244xa = this.f22163I;
        ArrayList arrayList = this.f22164J;
        long j8 = this.f22165K;
        c0785Ja.getClass();
        p113o3.I.k("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
        synchronized (c0785Ja.f14156a) {
            try {
                p113o3.I.k("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                if (c0770Ia.o() != -1 && c0770Ia.o() != 1) {
                    J7 j9 = Q7.f15785a7;
                    C3099q c3099q = C3099q.f26624d;
                    if (((Boolean) c3099q.f26627c.a(j9)).booleanValue()) {
                        c0770Ia.q("SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener", new TimeoutException("Unable to receive /jsLoaded GMSG."));
                    } else {
                        c0770Ia.p();
                    }
                    C1936re c1936re = AbstractC1988se.f20910e;
                    Objects.requireNonNull(c2244xa);
                    c1936re.execute(new RunnableC0665Ba(c2244xa, 0));
                    String strValueOf = String.valueOf(c3099q.f26627c.a(Q7.f15786b));
                    int iO = c0770Ia.o();
                    int i8 = c0785Ja.f14162g;
                    String strValueOf2 = String.valueOf(arrayList.get(0));
                    p083k3.l.f25980A.f25990j.getClass();
                    p113o3.I.k("Could not receive /jsLoaded in " + strValueOf + " ms. JS engine session reference status(onEngLoadedTimeout) is " + iO + ". Update status(onEngLoadedTimeout) is " + i8 + ". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is " + strValueOf2 + " ms. Total latency(onEngLoadedTimeout) is " + (System.currentTimeMillis() - j8) + " ms. Rejecting.");
                    p113o3.I.k("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                    return;
                }
                p113o3.I.k("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f22161G) {
            case 0:
                a();
                return;
            default:
                p113o3.I.k("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
                synchronized (this.f22166L.f14156a) {
                    try {
                        p113o3.I.k("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
                        if (this.f22162H.o() != -1 && this.f22162H.o() != 1) {
                            J7 j8 = Q7.f15785a7;
                            C3099q c3099q = C3099q.f26624d;
                            if (((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                                this.f22162H.q("SdkJavascriptFactory.loadJavascriptEngine.Runnable", new TimeoutException("Unable to fully load JS engine."));
                            } else {
                                this.f22162H.p();
                            }
                            C1936re c1936re = AbstractC1988se.f20910e;
                            C2244xa c2244xa = this.f22163I;
                            Objects.requireNonNull(c2244xa);
                            c1936re.execute(new RunnableC0665Ba(c2244xa, 1));
                            String strValueOf = String.valueOf(c3099q.f26627c.a(Q7.f15795c));
                            int iO = this.f22162H.o();
                            int i8 = this.f22166L.f14162g;
                            String strConcat = this.f22164J.isEmpty() ? ". Still waiting for the engine to be loaded" : ". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is ".concat(String.valueOf(this.f22164J.get(0)));
                            p083k3.l.f25980A.f25990j.getClass();
                            p113o3.I.k("Could not finish the full JS engine loading in " + strValueOf + " ms. JS engine session reference status(fullLoadTimeout) is " + iO + ". Update status(fullLoadTimeout) is " + i8 + strConcat + " ms. Total latency(fullLoadTimeout) is " + (System.currentTimeMillis() - this.f22165K) + " ms at timeout. Rejecting.");
                            p113o3.I.k("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                            return;
                        }
                        p113o3.I.k("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
                        return;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
        }
    }
}
