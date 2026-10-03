package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.h, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC2567h implements InterfaceC2603n, InterfaceC2579j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f23143G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final HashMap f23144H = new HashMap();

    public AbstractC2567h(String str) {
        this.f23143G = str;
    }

    public abstract InterfaceC2603n a(p096m2.i iVar, List list);

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final InterfaceC2603n b(String str) {
        HashMap map = this.f23144H;
        return map.containsKey(str) ? (InterfaceC2603n) map.get(str) : InterfaceC2603n.f23213s;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final boolean c(String str) {
        return this.f23144H.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AbstractC2567h)) {
            return false;
        }
        AbstractC2567h abstractC2567h = (AbstractC2567h) obj;
        String str = this.f23143G;
        if (str != null) {
            return str.equals(abstractC2567h.f23143G);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f23143G;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final void i(String str, InterfaceC2603n interfaceC2603n) {
        HashMap map = this.f23144H;
        if (interfaceC2603n == null) {
            map.remove(str);
        } else {
            map.put(str, interfaceC2603n);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        return "toString".equals(str) ? new C2619q(this.f23143G) : Cw.D(this, new C2619q(str), iVar, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public InterfaceC2603n zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return this.f23143G;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return new C2573i(this.f23144H.keySet().iterator());
    }
}
