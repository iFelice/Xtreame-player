package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.j5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class CallableC1497j5 implements Callable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19429a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f19430b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f19431c;

    public /* synthetic */ CallableC1497j5(int i8, Object obj, Object obj2) {
        this.f19429a = i8;
        this.f19430b = obj;
        this.f19431c = obj2;
    }

    private final void a() throws ExecutionException, InterruptedException {
        Future future = ((V4) this.f19430b).f16949k;
        if (future != null) {
            future.get();
        }
        C1496j4 c1496j4 = ((V4) this.f19430b).f16948j;
        if (c1496j4 != null) {
            try {
                synchronized (((V3) this.f19431c)) {
                    try {
                        V3 v5 = (V3) this.f19431c;
                        byte[] bArrD = c1496j4.d();
                        C1509jH c1509jH = C1509jH.f19448b;
                        UH uh = UH.f16822c;
                        v5.a(bArrD, C1509jH.f19449c);
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (AH | NullPointerException unused) {
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0143  */
    @Override // java.util.concurrent.Callable
    public final Object call() throws ExecutionException, InterruptedException {
        C1015Zc c1015ZcA;
        C2040te c2040te;
        int i8 = 1;
        switch (this.f19429a) {
            case 0:
                a();
                return null;
            case 1:
                K4 k8 = (K4) this.f19431c;
                WeakHashMap weakHashMap = (WeakHashMap) k8.f14301H;
                Context context = (Context) this.f19430b;
                C1056ad c1056ad = (C1056ad) weakHashMap.get(context);
                if (c1056ad != null) {
                    long jLongValue = c1056ad.f17894a + ((Long) AbstractC1500j8.f19433a.l()).longValue();
                    p083k3.l.f25980A.f25990j.getClass();
                    if (jLongValue < System.currentTimeMillis()) {
                        c1015ZcA = new C1001Yc(context).a();
                    } else {
                        c1015ZcA = new C1001Yc(context, c1056ad.f17895b).a();
                    }
                } else {
                    c1015ZcA = new C1001Yc(context).a();
                }
                ((WeakHashMap) k8.f14301H).put(context, new C1056ad(c1015ZcA));
                return c1015ZcA;
            case 2:
                return (String) ((C0890Qd) this.f19430b).h((Context) this.f19431c, "getAppInstanceId");
            case 3:
                C1273eo c1273eo = (C1273eo) this.f19430b;
                Ow ow = (Ow) this.f19431c;
                c1273eo.f18591e.b(Boolean.TRUE);
                ow.e(true);
                c1273eo.f18602p.b(ow.zzm());
                return null;
            case 4:
                C0724Eo c0724Eo = (C0724Eo) this.f19430b;
                C0973Wc c0973Wc = (C0973Wc) this.f19431c;
                Qo qo = c0724Eo.f13216c;
                synchronized (qo.f16527b) {
                    try {
                        if (qo.f16528c) {
                            c2040te = qo.f16526a;
                        } else {
                            qo.f16528c = true;
                            qo.f16530e = c0973Wc;
                            qo.f16531f.checkAvailabilityAndConnect();
                            qo.f16526a.a(new RunnableC1026Zn(qo, i8), AbstractC1988se.f20911f);
                            So.b(qo.f16135g, qo.f16526a, qo.f16136h);
                            c2040te = qo.f16526a;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return (C1326fp) c2040te.f21082G.get(((Integer) C3099q.f26624d.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS);
            case 5:
                return ((H4) this.f19430b).f13700b.c((Context) this.f19431c);
            case 6:
                return (C1326fp) ((C2040te) ((C0814Ko) this.f19430b).f14412d.c((C0973Wc) this.f19431c)).f21082G.get(((Integer) C3099q.f26624d.f26627c.a(Q7.f15801c5)).intValue(), TimeUnit.SECONDS);
            default:
                JSONArray jSONArray = new JSONArray();
                for (D4.b bVar : (List) this.f19430b) {
                    if (((JSONObject) bVar.get()) != null) {
                        jSONArray.put(bVar.get());
                    }
                }
                if (jSONArray.length() == 0) {
                    return null;
                }
                return new Zs(2, jSONArray.toString(), (Bundle) this.f19431c);
        }
    }

    public CallableC1497j5(K4 k8, Context context) {
        this.f19429a = 1;
        this.f19430b = context;
        this.f19431c = k8;
    }
}
