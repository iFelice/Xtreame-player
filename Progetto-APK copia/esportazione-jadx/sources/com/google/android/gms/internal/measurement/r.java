package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class r implements InterfaceC2603n {
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof r;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        throw new IllegalStateException("Undefined has no function ".concat(str));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return InterfaceC2603n.f23213s;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return "undefined";
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }
}
