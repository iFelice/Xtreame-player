package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.AbstractBinderC3111w0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.b6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1086b6 extends AbstractC2276y5 implements InterfaceC1137c6 {
    @Override // com.google.android.gms.internal.ads.InterfaceC1137c6
    public final void X(R3.a aVar, InterfaceC1396h6 interfaceC1396h6) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.e(parcelJ0, interfaceC1396h6);
        O2(4, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1137c6
    public final InterfaceC3113x0 zzf() {
        Parcel parcelN2 = n2(5, j0());
        InterfaceC3113x0 interfaceC3113x0Z3 = AbstractBinderC3111w0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return interfaceC3113x0Z3;
    }
}
