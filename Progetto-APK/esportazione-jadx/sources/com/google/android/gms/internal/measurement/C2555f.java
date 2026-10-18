package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: com.google.android.gms.internal.measurement.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2555f implements InterfaceC2603n {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InterfaceC2603n f23121G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final String f23122H;

    public C2555f(String str) {
        this.f23121G = InterfaceC2603n.f23213s;
        this.f23122H = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2555f)) {
            return false;
        }
        C2555f c2555f = (C2555f) obj;
        return this.f23122H.equals(c2555f.f23122H) && this.f23121G.equals(c2555f.f23121G);
    }

    public final int hashCode() {
        return this.f23121G.hashCode() + (this.f23122H.hashCode() * 31);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n l(String str, p096m2.i iVar, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final InterfaceC2603n zzd() {
        return new C2555f(this.f23122H, this.f23121G.zzd());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Boolean zzg() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Double zzh() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final String zzi() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC2603n
    public final Iterator zzl() {
        return null;
    }

    public C2555f(String str, InterfaceC2603n interfaceC2603n) {
        this.f23121G = interfaceC2603n;
        this.f23122H = str;
    }
}
