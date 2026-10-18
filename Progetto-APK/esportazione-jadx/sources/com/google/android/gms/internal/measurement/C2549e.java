package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.e, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2549e implements InterfaceC2603n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f23115G;

    public C2549e(Boolean bool) {
        this.f23115G = bool == null ? false : bool.booleanValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C2549e) && this.f23115G == ((C2549e) obj).f23115G;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f23115G).hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        boolean zEquals = "toString".equals(str);
        boolean z7 = this.f23115G;
        if (zEquals) {
            return new C2619q(Boolean.toString(z7));
        }
        throw new IllegalArgumentException(A0.O.B(Boolean.toString(z7), ".", str, " is not a function."));
    }

    public final String toString() {
        return String.valueOf(this.f23115G);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return new C2549e(Boolean.valueOf(this.f23115G));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        return Boolean.valueOf(this.f23115G);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        return Double.valueOf(true != this.f23115G ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        return Boolean.toString(this.f23115G);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }
}
