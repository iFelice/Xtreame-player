package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2591l implements InterfaceC2603n {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof C2591l;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        throw new IllegalStateException("null has no function ".concat(str));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return InterfaceC2603n.f23214t;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return "null";
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }
}
