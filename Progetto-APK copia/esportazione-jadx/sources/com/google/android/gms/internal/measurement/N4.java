package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public final class N4 extends AbstractC2567h {

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final p032e0.u f22976I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final HashMap f22977J;

    public N4(p032e0.u uVar) {
        super("require");
        this.f22977J = new HashMap();
        this.f22976I = uVar;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2567h
    public final InterfaceC2603n a(p096m2.i iVar, List list) {
        InterfaceC2603n interfaceC2603n;
        Cw.O1("require", 1, list);
        String strZzi = iVar.t((InterfaceC2603n) list.get(0)).zzi();
        HashMap map = this.f22977J;
        if (map.containsKey(strZzi)) {
            return (InterfaceC2603n) map.get(strZzi);
        }
        Map map2 = this.f22976I.f24776a;
        if (map2.containsKey(strZzi)) {
            try {
                interfaceC2603n = (InterfaceC2603n) ((Callable) map2.get(strZzi)).call();
            } catch (Exception unused) {
                throw new IllegalStateException("Failed to create API implementation: ".concat(String.valueOf(strZzi)));
            }
        } else {
            interfaceC2603n = InterfaceC2603n.f23213s;
        }
        if (interfaceC2603n instanceof AbstractC2567h) {
            map.put(strZzi, (AbstractC2567h) interfaceC2603n);
        }
        return interfaceC2603n;
    }
}
