package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.ads.Cw;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public class C2585k implements InterfaceC2603n, InterfaceC2579j {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final HashMap f23173G = new HashMap();

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final InterfaceC2603n b(String str) {
        HashMap map = this.f23173G;
        return map.containsKey(str) ? (InterfaceC2603n) map.get(str) : InterfaceC2603n.f23213s;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final boolean c(String str) {
        return this.f23173G.containsKey(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C2585k) {
            return this.f23173G.equals(((C2585k) obj).f23173G);
        }
        return false;
    }

    public final int hashCode() {
        return this.f23173G.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2579j
    public final void i(String str, InterfaceC2603n interfaceC2603n) {
        HashMap map = this.f23173G;
        if (interfaceC2603n == null) {
            map.remove(str);
        } else {
            map.put(str, interfaceC2603n);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        return "toString".equals(str) ? new C2619q(toString()) : Cw.D(this, new C2619q(str), iVar, arrayList);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap map = this.f23173G;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        C2585k c2585k = new C2585k();
        for (Map.Entry entry : this.f23173G.entrySet()) {
            boolean z7 = entry.getValue() instanceof InterfaceC2579j;
            HashMap map = c2585k.f23173G;
            if (z7) {
                map.put((String) entry.getKey(), (InterfaceC2603n) entry.getValue());
            } else {
                map.put((String) entry.getKey(), ((InterfaceC2603n) entry.getValue()).zzd());
            }
        }
        return c2585k;
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
        return "[object Object]";
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return new C2573i(this.f23173G.keySet().iterator());
    }
}
