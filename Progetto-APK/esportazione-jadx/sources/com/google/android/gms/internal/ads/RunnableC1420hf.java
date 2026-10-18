package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.SystemClock;
import java.util.HashMap;
import okhttp3.HttpUrl;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.hf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class RunnableC1420hf implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f19112G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ long f19113H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f19114I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final /* synthetic */ Object f19115J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final /* synthetic */ Object f19116K;

    public /* synthetic */ RunnableC1420hf(C2160vu c2160vu, long j8, InterfaceC2108uu interfaceC2108uu, Bundle bundle) {
        this.f19112G = 1;
        this.f19114I = c2160vu;
        this.f19113H = j8;
        this.f19115J = interfaceC2108uu;
        this.f19116K = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19112G) {
            case 0:
                HashMap map = new HashMap();
                map.put("event", "precacheComplete");
                map.put("src", (String) this.f19114I);
                map.put("cachedSrc", (String) this.f19115J);
                map.put("totalDuration", Long.toString(this.f19113H));
                AbstractC1522jf.k((AbstractC1522jf) this.f19116K, map);
                return;
            case 1:
                C2160vu c2160vu = (C2160vu) this.f19114I;
                long j8 = this.f19113H;
                InterfaceC2108uu interfaceC2108uu = (InterfaceC2108uu) this.f19115J;
                Bundle bundle = (Bundle) this.f19116K;
                c2160vu.getClass();
                p083k3.l lVar = p083k3.l.f25980A;
                lVar.f25990j.getClass();
                long jElapsedRealtime = SystemClock.elapsedRealtime() - j8;
                if (((Boolean) AbstractC2019t8.f21041a.l()).booleanValue()) {
                    String canonicalName = interfaceC2108uu.getClass().getCanonicalName();
                    if (canonicalName == null) {
                        canonicalName = HttpUrl.FRAGMENT_ENCODE_SET;
                    }
                    p113o3.I.k("Signal runtime (ms) : " + canonicalName + " = " + jElapsedRealtime);
                }
                J7 j9 = Q7.f15734U1;
                C3099q c3099q = C3099q.f26624d;
                if (((Boolean) c3099q.f26627c.a(j9)).booleanValue()) {
                    if (((Boolean) c3099q.f26627c.a(Q7.f15765Y1)).booleanValue()) {
                        synchronized (c2160vu) {
                            bundle.putLong("sig" + interfaceC2108uu.zza(), jElapsedRealtime);
                        }
                    }
                    break;
                }
                if (((Boolean) c3099q.f26627c.a(Q7.f15718S1)).booleanValue()) {
                    C0871Om c0871OmA = c2160vu.f21613e.a();
                    c0871OmA.n("action", "lat_ms");
                    c0871OmA.n("lat_grp", "sig_lat_grp");
                    c0871OmA.n("lat_id", String.valueOf(interfaceC2108uu.zza()));
                    c0871OmA.n("clat_ms", String.valueOf(jElapsedRealtime));
                    if (((Boolean) c3099q.f26627c.a(Q7.f15726T1)).booleanValue()) {
                        synchronized (c2160vu) {
                            c2160vu.f21615g++;
                            break;
                        }
                        c0871OmA.n("seq_num", lVar.f25987g.f19807c.f20295c.a());
                        synchronized (c2160vu) {
                            try {
                                if (c2160vu.f21615g == c2160vu.f21610b.size() && c2160vu.f21614f != 0) {
                                    c2160vu.f21615g = 0;
                                    lVar.f25990j.getClass();
                                    String strValueOf = String.valueOf(SystemClock.elapsedRealtime() - c2160vu.f21614f);
                                    if (interfaceC2108uu.zza() <= 39 || interfaceC2108uu.zza() >= 52) {
                                        c0871OmA.n("lat_clsg", strValueOf);
                                    } else {
                                        c0871OmA.n("lat_gmssg", strValueOf);
                                    }
                                }
                            } catch (Throwable th) {
                                throw th;
                            }
                            break;
                        }
                    }
                    ((C0738Fn) c0871OmA.f15196H).f13413b.execute(new RunnableC0723En(c0871OmA, 1));
                    return;
                }
                return;
            default:
                ((Y5.E) this.f19116K).execute((Y5.D) this.f19114I);
                return;
        }
    }

    public final String toString() {
        switch (this.f19112G) {
            case 2:
                StringBuilder sb = new StringBuilder();
                sb.append(((Runnable) this.f19115J).toString());
                sb.append("(scheduled in SynchronizationContext with delay of ");
                return p000a.r.i(sb, this.f19113H, ")");
            default:
                return super.toString();
        }
    }

    public /* synthetic */ RunnableC1420hf(Object obj, Object obj2, Object obj3, long j8, int i8) {
        this.f19112G = i8;
        this.f19114I = obj2;
        this.f19115J = obj3;
        this.f19113H = j8;
        this.f19116K = obj;
    }
}
