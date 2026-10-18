package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.C1093bD;
import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.h2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2570h2 extends C2585k {

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final C1093bD f23152H;

    public C2570h2(C1093bD c1093bD) {
        this.f23152H = c1093bD;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:24:0x0050  */
    @Override // com.google.android.gms.internal.measurement.C2585k, com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        byte b8;
        switch (str) {
            case "getEventName":
                b8 = 0;
                break;
            case "getTimestamp":
                b8 = 3;
                break;
            case "getParamValue":
                b8 = 1;
                break;
            case "getParams":
                b8 = 2;
                break;
            case "setParamValue":
                b8 = 5;
                break;
            case "setEventName":
                b8 = 4;
                break;
            default:
                b8 = -1;
                break;
        }
        C1093bD c1093bD = this.f23152H;
        if (b8 == 0) {
            Cw.O1("getEventName", 0, arrayList);
            return new C2619q(((C2531b) c1093bD.f18026H).f23086a);
        }
        if (b8 == 1) {
            Cw.O1("getParamValue", 1, arrayList);
            String strZzi = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
            HashMap map = ((C2531b) c1093bD.f18026H).f23088c;
            return Cw.C0(map.containsKey(strZzi) ? map.get(strZzi) : null);
        }
        if (b8 == 2) {
            Cw.O1("getParams", 0, arrayList);
            HashMap map2 = ((C2531b) c1093bD.f18026H).f23088c;
            C2585k c2585k = new C2585k();
            for (String str2 : map2.keySet()) {
                c2585k.i(str2, Cw.C0(map2.get(str2)));
            }
            return c2585k;
        }
        if (b8 == 3) {
            Cw.O1("getTimestamp", 0, arrayList);
            return new C2561g(Double.valueOf(((C2531b) c1093bD.f18026H).f23087b));
        }
        if (b8 == 4) {
            Cw.O1("setEventName", 1, arrayList);
            InterfaceC2603n interfaceC2603nT = iVar.t((InterfaceC2603n) arrayList.get(0));
            if (InterfaceC2603n.f23213s.equals(interfaceC2603nT) || InterfaceC2603n.f23214t.equals(interfaceC2603nT)) {
                throw new IllegalArgumentException("Illegal event name");
            }
            ((C2531b) c1093bD.f18026H).f23086a = interfaceC2603nT.zzi();
            return new C2619q(interfaceC2603nT.zzi());
        }
        if (b8 != 5) {
            return super.l(str, iVar, arrayList);
        }
        Cw.O1("setParamValue", 2, arrayList);
        String strZzi2 = iVar.t((InterfaceC2603n) arrayList.get(0)).zzi();
        InterfaceC2603n interfaceC2603nT2 = iVar.t((InterfaceC2603n) arrayList.get(1));
        C2531b c2531b = (C2531b) c1093bD.f18026H;
        Object objF1 = Cw.F1(interfaceC2603nT2);
        HashMap map3 = c2531b.f23088c;
        if (objF1 == null) {
            map3.remove(strZzi2);
        } else {
            map3.put(strZzi2, C2531b.b(map3.get(strZzi2), objF1, strZzi2));
        }
        return interfaceC2603nT2;
    }
}
