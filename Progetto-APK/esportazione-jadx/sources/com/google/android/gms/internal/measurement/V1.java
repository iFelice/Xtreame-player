package com.google.android.gms.internal.measurement;

import Z3.C0433o;
import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import p021c4.C0579f0;
import p021c4.CallableC0573d0;

/* JADX INFO: loaded from: classes.dex */
public final class V1 extends AbstractC2567h {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ int f23019I = 1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f23020J;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public V1(F.i iVar) {
        super("getValue");
        this.f23020J = iVar;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h
    public final InterfaceC2603n a(p096m2.i iVar, List list) {
        TreeMap treeMap;
        r rVar = InterfaceC2603n.f23213s;
        String str = null;
        int i8 = this.f23019I;
        String str2 = this.f23143G;
        Object obj = this.f23020J;
        switch (i8) {
            case 0:
                Cw.O1(str2, 3, list);
                String strZzi = iVar.t((InterfaceC2603n) list.get(0)).zzi();
                long jR = (long) Cw.r(iVar.t((InterfaceC2603n) list.get(1)).zzh().doubleValue());
                InterfaceC2603n interfaceC2603nT = iVar.t((InterfaceC2603n) list.get(2));
                HashMap mapI1 = interfaceC2603nT instanceof C2585k ? Cw.I1((C2585k) interfaceC2603nT) : new HashMap();
                C1093bD c1093bD = (C1093bD) obj;
                c1093bD.getClass();
                HashMap map = new HashMap();
                for (String str3 : mapI1.keySet()) {
                    HashMap map2 = ((C2531b) c1093bD.f18028J).f23088c;
                    map.put(str3, C2531b.b(map2.containsKey(str3) ? map2.get(str3) : null, mapI1.get(str3), str3));
                }
                ((List) c1093bD.f18027I).add(new C2531b(strZzi, jR, map));
                return rVar;
            case 1:
                Cw.O1("getValue", 2, list);
                InterfaceC2603n interfaceC2603nT2 = iVar.t((InterfaceC2603n) list.get(0));
                InterfaceC2603n interfaceC2603nT3 = iVar.t((InterfaceC2603n) list.get(1));
                String strZzi2 = interfaceC2603nT2.zzi();
                F.i iVar2 = (F.i) obj;
                Map map3 = (Map) ((C0579f0) iVar2.f2978I).f11171J.get((String) iVar2.f2977H);
                if (map3 != null && map3.containsKey(strZzi2)) {
                    str = (String) map3.get(strZzi2);
                }
                return str != null ? new C2619q(str) : interfaceC2603nT3;
            case 2:
                return rVar;
            case 3:
                try {
                    return Cw.C0(((Callable) obj).call());
                } catch (Exception unused) {
                    return rVar;
                }
            default:
                Cw.O1(str2, 3, list);
                iVar.t((InterfaceC2603n) list.get(0)).zzi();
                InterfaceC2603n interfaceC2603nT4 = iVar.t((InterfaceC2603n) list.get(1));
                if (!(interfaceC2603nT4 instanceof C2597m)) {
                    throw new IllegalArgumentException("Invalid callback type");
                }
                InterfaceC2603n interfaceC2603nT5 = iVar.t((InterfaceC2603n) list.get(2));
                if (!(interfaceC2603nT5 instanceof C2585k)) {
                    throw new IllegalArgumentException("Invalid callback params");
                }
                C2585k c2585k = (C2585k) interfaceC2603nT5;
                if (!c2585k.f23173G.containsKey("type")) {
                    throw new IllegalArgumentException("Undefined rule type");
                }
                String strZzi3 = c2585k.b("type").zzi();
                int iV0 = c2585k.f23173G.containsKey("priority") ? Cw.v0(c2585k.b("priority").zzh().doubleValue()) : 1000;
                com.google.android.gms.internal.atv_ads_framework.x0 x0Var = (com.google.android.gms.internal.atv_ads_framework.x0) obj;
                C2597m c2597m = (C2597m) interfaceC2603nT4;
                x0Var.getClass();
                if ("create".equals(strZzi3)) {
                    treeMap = (TreeMap) x0Var.f22391I;
                } else {
                    if (!"edit".equals(strZzi3)) {
                        throw new IllegalStateException("Unknown callback type: ".concat(String.valueOf(strZzi3)));
                    }
                    treeMap = (TreeMap) x0Var.f22390H;
                }
                if (treeMap.containsKey(Integer.valueOf(iV0))) {
                    iV0 = ((Integer) treeMap.lastKey()).intValue() + 1;
                }
                treeMap.put(Integer.valueOf(iV0), c2597m);
                return rVar;
        }
    }

    public V1(C0433o c0433o) {
        super("internal.logger");
        this.f23020J = c0433o;
        HashMap map = this.f23144H;
        map.put("log", new M4(this, false, true));
        map.put("silent", new K2(1));
        ((AbstractC2567h) map.get("silent")).i("log", new M4(this, true, true));
        map.put("unmonitored", new K2(2));
        ((AbstractC2567h) map.get("unmonitored")).i("log", new M4(this, false, false));
    }

    public V1(CallableC0573d0 callableC0573d0) {
        super("internal.appMetadata");
        this.f23020J = callableC0573d0;
    }

    public V1(C1093bD c1093bD) {
        super("internal.eventLogger");
        this.f23020J = c1093bD;
    }

    public V1(com.google.android.gms.internal.atv_ads_framework.x0 x0Var) {
        super("internal.registerCallback");
        this.f23020J = x0Var;
    }
}
