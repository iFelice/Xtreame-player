package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.rr, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1949rr implements RB {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Kw f20782a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C1941rj f20783b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C1438hx f20784c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C1488ix f20785d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f20786e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ScheduledExecutorService f20787f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final InterfaceC2356zi f20788g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1690mr f20789h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final C2104uq f20790i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Context f20791j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Tw f20792k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C1122br f20793l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final C0693Cn f20794m;

    public C1949rr(Context context, Kw kw, C1690mr c1690mr, C1941rj c1941rj, C1438hx c1438hx, C1488ix c1488ix, InterfaceC2356zi interfaceC2356zi, C1936re c1936re, ScheduledExecutorService scheduledExecutorService, C2104uq c2104uq, Tw tw, C1122br c1122br, C0693Cn c0693Cn) {
        this.f20791j = context;
        this.f20782a = kw;
        this.f20789h = c1690mr;
        this.f20783b = c1941rj;
        this.f20784c = c1438hx;
        this.f20785d = c1488ix;
        this.f20788g = interfaceC2356zi;
        this.f20786e = c1936re;
        this.f20787f = scheduledExecutorService;
        this.f20790i = c2104uq;
        this.f20792k = tw;
        this.f20793l = c1122br;
        this.f20794m = c0693Cn;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x004c  */
    public static String a(Tv tv) {
        J7 j8 = Q7.f15783a5;
        C3099q c3099q = C3099q.f26624d;
        String strF = "No fill.";
        String str = true != ((Boolean) c3099q.f26627c.a(j8)).booleanValue() ? "No ad config." : "No fill.";
        int i8 = ((Qv) tv.f16755b.f21883I).f16154f;
        if (i8 == 0) {
            strF = str;
        } else if (i8 < 200 || i8 >= 300) {
            strF = (i8 < 300 || i8 >= 400) ? p000a.r.f("Received error HTTP response code: ", i8) : "No location header to follow redirect or too many redirects.";
        } else {
            if (((Boolean) c3099q.f26627c.a(Q7.Z4)).booleanValue()) {
                strF = str;
            }
        }
        J j9 = ((Qv) tv.f16755b.f21883I).f16158j;
        return j9 != null ? j9.f14099H : strF;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:49:0x0105  */
    /* JADX WARN: Code duplicated, block: B:52:0x0123  */
    /* JADX WARN: Code duplicated, block: B:89:0x013a A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.RB
    public final D4.b zza(Object obj) {
        Iterator it;
        InterfaceC1845pq interfaceC1845pqA;
        int i8;
        C0973Wc c0973Wc;
        Bundle bundle;
        Tv tv = (Tv) obj;
        J7 j8 = Q7.f15734U1;
        C3099q c3099q = C3099q.f26624d;
        if (((Boolean) c3099q.f26627c.a(j8)).booleanValue() && (c0973Wc = (C0973Wc) tv.f16755b.f21885K) != null && (bundle = c0973Wc.f17262S) != null) {
            this.f20794m.f12693c.putAll(bundle);
        }
        if (((Boolean) c3099q.f26627c.a(Q7.f15741V1)).booleanValue()) {
            p148t.a.g(p083k3.l.f25980A.f25990j, this.f20794m.f12693c, "rendering-start");
        }
        String strA = a(tv);
        this.f20790i.f21393d = (Qv) tv.f16755b.f21883I;
        if (((Boolean) c3099q.f26627c.a(Q7.E7)).booleanValue() && (i8 = ((Qv) tv.f16755b.f21883I).f16154f) != 0 && (i8 < 200 || i8 >= 300)) {
            return Cw.H1(new C1898qr(3, strA));
        }
        Qv qv = (Qv) tv.f16755b.f21883I;
        if (!((Boolean) c3099q.f26627c.a(Q7.f15903o3)).booleanValue()) {
            for (Ov ov : (List) tv.f16755b.f21882H) {
                C2104uq c2104uq = this.f20790i;
                c2104uq.c(ov, c2104uq.f21390a.size());
                it = ov.f15246a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        this.f20790i.d(ov, 0L, p113o3.r.H(1, null, null), false);
                        break;
                        break;
                    }
                    interfaceC1845pqA = this.f20788g.a(ov.f15248b, (String) it.next());
                    if (interfaceC1845pqA == null) {
                    }
                }
            }
        } else {
            String str = qv.f16165q;
            if (TextUtils.isEmpty(str)) {
                while (r0.hasNext()) {
                    C2104uq c2104uq2 = this.f20790i;
                    c2104uq2.c(ov, c2104uq2.f21390a.size());
                    it = ov.f15246a.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            this.f20790i.d(ov, 0L, p113o3.r.H(1, null, null), false);
                            break;
                        }
                        interfaceC1845pqA = this.f20788g.a(ov.f15248b, (String) it.next());
                        if (interfaceC1845pqA == null && interfaceC1845pqA.b(tv, ov)) {
                            break;
                        }
                    }
                }
            } else {
                C2104uq c2104uq3 = this.f20790i;
                List list = (List) tv.f16755b.f21882H;
                synchronized (c2104uq3) {
                    try {
                        if (c2104uq3.f21391b.containsKey(str)) {
                            int iIndexOf = c2104uq3.f21390a.indexOf((p090l3.g1) c2104uq3.f21391b.get(str));
                            try {
                                c2104uq3.f21390a.remove(iIndexOf);
                            } catch (IndexOutOfBoundsException e8) {
                                p083k3.l.f25980A.f25987g.i("AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry", e8);
                            }
                            c2104uq3.f21391b.remove(str);
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                c2104uq3.c((Ov) it2.next(), iIndexOf);
                                iIndexOf++;
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
        this.f20783b.Y0(new C1888qh(tv, this.f20785d, this.f20784c), this.f20786e);
        if (((Qv) tv.f16755b.f21883I).f16166r > 1) {
            return this.f20793l.a(tv);
        }
        Fw fwC = new C1950rs(this.f20782a, Iw.RENDER_CONFIG_INIT, null, Gw.f13664d, Collections.emptyList(), Cw.H1(new C1898qr(3, a(tv)))).c();
        this.f20789h.f();
        int i9 = 0;
        for (Ov ov2 : (List) tv.f16755b.f21882H) {
            for (String str2 : ov2.f15246a) {
                InterfaceC1845pq interfaceC1845pqA2 = this.f20788g.a(ov2.f15248b, str2);
                if (interfaceC1845pqA2 != null && interfaceC1845pqA2.b(tv, ov2)) {
                    C1950rs c1950rsB = this.f20782a.b(fwC, Iw.RENDER_CONFIG_WATERFALL);
                    D4.b bVar = (D4.b) c1950rsB.f20795G;
                    List list2 = (List) c1950rsB.f20798J;
                    D4.b bVar2 = (D4.b) c1950rsB.f20799K;
                    Gw gw = (Gw) c1950rsB.f20800L;
                    fwC = new C1950rs(gw, c1950rsB.f20796H, "render-config-" + i9 + "-" + str2, bVar, list2, Cw.D1(bVar2, Throwable.class, new C0915Sa(this, ov2, tv, interfaceC1845pqA2, 6), gw.f13665a)).c();
                    break;
                }
            }
            i9++;
        }
        C1690mr c1690mr = this.f20789h;
        Objects.requireNonNull(c1690mr);
        fwC.a(new RunnableC1026Zn(c1690mr, 5), this.f20786e);
        return fwC;
    }
}
