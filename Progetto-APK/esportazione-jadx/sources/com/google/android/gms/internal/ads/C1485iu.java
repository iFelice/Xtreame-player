package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.iu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1485iu implements InterfaceC2108uu {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceExecutorServiceC1504jC f19371a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ScheduledExecutorService f19372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Yr f19373c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f19374d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Yv f19375e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Wr f19376f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final C1894qn f19377g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final C1325fo f19378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f19379i;

    public C1485iu(C1936re c1936re, ScheduledExecutorService scheduledExecutorService, String str, Yr yr, Context context, Yv yv, Wr wr, C1894qn c1894qn, C1325fo c1325fo) {
        this.f19371a = c1936re;
        this.f19372b = scheduledExecutorService;
        this.f19379i = str;
        this.f19373c = yr;
        this.f19374d = context;
        this.f19375e = yv;
        this.f19376f = wr;
        this.f19377g = c1894qn;
        this.f19378h = c1325fo;
    }

    public final AbstractC1040aC a(final String str, final List list, final Bundle bundle, final boolean z7, final boolean z8) {
        QB qb = new QB() { // from class: com.google.android.gms.internal.ads.hu
            /* JADX WARN: Code duplicated, block: B:48:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // com.google.android.gms.internal.ads.QB
            public final D4.b zza() {
                InterfaceC0771Ib interfaceC0771Ib;
                InterfaceC0771Ib interfaceC0771IbA;
                final C1485iu c1485iu = this.f19175G;
                String str2 = str;
                final List list2 = list;
                final Bundle bundle2 = bundle;
                boolean z9 = z7;
                boolean z10 = z8;
                c1485iu.getClass();
                final C2040te c2040te = new C2040te();
                if (z10) {
                    if (((Boolean) C3099q.f26624d.f26627c.a(Q7.f15963w1)).booleanValue()) {
                        try {
                            interfaceC0771IbA = c1485iu.f19377g.a(str2);
                        } catch (RemoteException e8) {
                            p113o3.I.l("Couldn't create RTB adapter : ", e8);
                            interfaceC0771Ib = null;
                        }
                    } else {
                        Wr wr = c1485iu.f19376f;
                        wr.getClass();
                        try {
                            wr.f17330a.put(str2, wr.f17331b.a(str2));
                        } catch (RemoteException e9) {
                            p113o3.I.l("Couldn't create RTB adapter : ", e9);
                        }
                        ConcurrentHashMap concurrentHashMap = c1485iu.f19376f.f17330a;
                        interfaceC0771IbA = concurrentHashMap.containsKey(str2) ? (InterfaceC0771Ib) concurrentHashMap.get(str2) : null;
                    }
                    interfaceC0771Ib = interfaceC0771IbA;
                } else {
                    interfaceC0771IbA = c1485iu.f19377g.a(str2);
                    interfaceC0771Ib = interfaceC0771IbA;
                }
                if (interfaceC0771Ib == null) {
                    J7 j8 = Q7.f15885m1;
                    C3099q c3099q = C3099q.f26624d;
                    if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
                        throw null;
                    }
                    int i8 = BinderC1071as.f17977K;
                    synchronized (BinderC1071as.class) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("name", str2);
                                jSONObject.put("signal_error", "Adapter failed to instantiate");
                                if (((Boolean) c3099q.f26627c.a(Q7.f15932s1)).booleanValue()) {
                                    jSONObject.put("signal_error_code", 1);
                                }
                                c2040te.b(jSONObject);
                            } catch (JSONException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } else {
                    p083k3.l.f25980A.f25990j.getClass();
                    final BinderC1071as binderC1071as = new BinderC1071as(str2, interfaceC0771Ib, c2040te, SystemClock.elapsedRealtime());
                    J7 j9 = Q7.f15924r1;
                    C3099q c3099q2 = C3099q.f26624d;
                    if (((Boolean) c3099q2.f26627c.a(j9)).booleanValue()) {
                        c1485iu.f19372b.schedule(new RunnableC1026Zn(binderC1071as, 8), ((Long) c3099q2.f26627c.a(Q7.f15868k1)).longValue(), TimeUnit.MILLISECONDS);
                    }
                    if (!z9) {
                        binderC1071as.zzd();
                        return c2040te;
                    }
                    if (!((Boolean) c3099q2.f26627c.a(Q7.f15979y1)).booleanValue()) {
                        interfaceC0771Ib.v2(new R3.b(c1485iu.f19374d), c1485iu.f19379i, bundle2, (Bundle) list2.get(0), c1485iu.f19375e.f17678e, binderC1071as);
                        return c2040te;
                    }
                    final InterfaceC0771Ib interfaceC0771Ib2 = interfaceC0771Ib;
                    ((IB) c1485iu.f19371a).a(new Runnable() { // from class: com.google.android.gms.internal.ads.gu
                        @Override // java.lang.Runnable
                        public final void run() {
                            InterfaceC0771Ib interfaceC0771Ib3 = interfaceC0771Ib2;
                            Bundle bundle3 = bundle2;
                            List list3 = list2;
                            BinderC1071as binderC1071as2 = binderC1071as;
                            C1485iu c1485iu2 = c1485iu;
                            c1485iu2.getClass();
                            try {
                                interfaceC0771Ib3.v2(new R3.b(c1485iu2.f19374d), c1485iu2.f19379i, bundle3, (Bundle) list3.get(0), c1485iu2.f19375e.f17678e, binderC1071as2);
                            } catch (RemoteException e10) {
                                c2040te.c(e10);
                            }
                        }
                    });
                }
                return c2040te;
            }
        };
        InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = this.f19371a;
        AbstractC1040aC abstractC1040aCR = AbstractC1040aC.r(Cw.W1(qb, interfaceExecutorServiceC1504jC));
        J7 j8 = Q7.f15924r1;
        C3099q c3099q = C3099q.f26624d;
        if (!((Boolean) c3099q.f26627c.a(j8)).booleanValue()) {
            abstractC1040aCR = (AbstractC1040aC) Cw.e2(abstractC1040aCR, ((Long) c3099q.f26627c.a(Q7.f15868k1)).longValue(), TimeUnit.MILLISECONDS, this.f19372b);
        }
        return Cw.w1(abstractC1040aCR, Throwable.class, new I9(str, 3), interfaceExecutorServiceC1504jC);
    }

    public final void b(Map map, ArrayList arrayList) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            C1123bs c1123bs = (C1123bs) ((Map.Entry) it.next()).getValue();
            String str = c1123bs.f18112a;
            Bundle bundle = this.f19375e.f17677d.f26529S;
            arrayList.add(a(str, Collections.singletonList(c1123bs.f18116e), bundle != null ? bundle.getBundle(str) : null, c1123bs.f18113b, c1123bs.f18114c));
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final int zza() {
        return 32;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2108uu
    public final D4.b zzb() {
        Yv yv = this.f19375e;
        if (yv.f17691r) {
            if (!Arrays.asList(((String) C3099q.f26624d.f26627c.a(Q7.f15971x1)).split(",")).contains(U2.m.j(U2.m.k(yv.f17677d)))) {
                return Cw.N1(new Zs(2, new JSONArray().toString(), new Bundle()));
            }
        }
        return Cw.W1(new C1331fu(this, 0), this.f19371a);
    }
}
