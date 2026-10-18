package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import p090l3.C3099q;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.fu, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C1331fu implements QB {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f18831G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ InterfaceC2108uu f18832H;

    public /* synthetic */ C1331fu(InterfaceC2108uu interfaceC2108uu, int i8) {
        this.f18831G = i8;
        this.f18832H = interfaceC2108uu;
    }

    @Override // com.google.android.gms.internal.ads.QB
    public final D4.b zza() {
        Bundle bundle;
        switch (this.f18831G) {
            case 0:
                C1485iu c1485iu = (C1485iu) this.f18832H;
                J7 j8 = Q7.ia;
                C3099q c3099q = C3099q.f26624d;
                String lowerCase = ((Boolean) c3099q.f26627c.a(j8)).booleanValue() ? c1485iu.f19375e.f17679f.toLowerCase(Locale.ROOT) : c1485iu.f19375e.f17679f;
                if (((Boolean) c3099q.f26627c.a(Q7.f15956v1)).booleanValue()) {
                    C1325fo c1325fo = c1485iu.f19378h;
                    synchronized (c1325fo) {
                        bundle = new Bundle(c1325fo.f18806G);
                    }
                } else {
                    bundle = new Bundle();
                }
                Bundle bundle2 = bundle;
                ArrayList arrayList = new ArrayList();
                if (((Boolean) c3099q.f26627c.a(Q7.f15607E1)).booleanValue()) {
                    c1485iu.b(c1485iu.f19373c.a(c1485iu.f19379i, lowerCase), arrayList);
                } else {
                    for (Map.Entry entry : (RA) c1485iu.f19373c.b(c1485iu.f19379i, lowerCase).entrySet()) {
                        String str = (String) entry.getKey();
                        List list = (List) entry.getValue();
                        Bundle bundle3 = c1485iu.f19375e.f17677d.f26529S;
                        arrayList.add(c1485iu.a(str, list, bundle3 != null ? bundle3.getBundle(str) : null, true, true));
                    }
                    c1485iu.b(c1485iu.f19373c.c(), arrayList);
                }
                AbstractC2073uA abstractC2073uAT = AbstractC2073uA.t(arrayList);
                CallableC1497j5 callableC1497j5 = new CallableC1497j5(7, arrayList, bundle2);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC = c1485iu.f19371a;
                WB wb = new WB(abstractC2073uAT, true, false);
                wb.f17176V = new UB(wb, callableC1497j5, interfaceExecutorServiceC1504jC);
                wb.x();
                return wb;
            default:
                C1537ju c1537ju = (C1537ju) this.f18832H;
                C0671Bg c0671Bg = ((C0671Bg) c1537ju.f19525f).f12432c;
                C1217dj c1217dj = new C1217dj();
                c1217dj.f18346a = c1537ju.f19523d;
                Xv xv = new Xv();
                xv.f17532c = "adUnitId";
                xv.f17530a = c1537ju.f19524e.f17677d;
                xv.f17531b = new p090l3.d1();
                xv.f17548s = true;
                c1217dj.f18347b = xv.a();
                C1217dj c1217dj2 = new C1217dj(c1217dj);
                p120p3.e eVar = new p120p3.e(1);
                eVar.f28211H = c1537ju.f19520a;
                p167v3.l lVar = new p167v3.l(eVar);
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                new HashSet();
                AbstractC1040aC abstractC1040aC = (AbstractC1040aC) Cw.e2(AbstractC1040aC.r((D4.b) new C0907Rg(c0671Bg, lVar, c1217dj2).f16297R.zzb()), ((Long) C3099q.f26624d.f26627c.a(Q7.f15588B6)).longValue(), TimeUnit.MILLISECONDS, c1537ju.f19522c);
                C2064u1 c2064u1 = new C2064u1(12);
                InterfaceExecutorServiceC1504jC interfaceExecutorServiceC1504jC2 = c1537ju.f19521b;
                return Cw.w1(Cw.b2(abstractC1040aC, c2064u1, interfaceExecutorServiceC1504jC2), Exception.class, new C2064u1(13), interfaceExecutorServiceC1504jC2);
        }
    }
}
