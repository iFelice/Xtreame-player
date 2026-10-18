package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.o, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2609o implements InterfaceC2603n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final String f23223G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final ArrayList f23224H;

    public C2609o(String str, ArrayList arrayList) {
        this.f23223G = str;
        ArrayList arrayList2 = new ArrayList();
        this.f23224H = arrayList2;
        arrayList2.addAll(arrayList);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2609o)) {
            return false;
        }
        C2609o c2609o = (C2609o) obj;
        String str = this.f23223G;
        if (str == null ? c2609o.f23223G == null : str.equals(c2609o.f23223G)) {
            return this.f23224H.equals(c2609o.f23224H);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f23223G;
        return this.f23224H.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }
}
