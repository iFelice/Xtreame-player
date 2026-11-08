package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import p090l3.AbstractBinderC3111w0;
import p090l3.InterfaceC3113x0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.od, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1780od extends AbstractC2276y5 implements InterfaceC1884qd {
    public C1780od(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void A1(p090l3.b1 b1Var, InterfaceC2247xd interfaceC2247xd) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, interfaceC2247xd);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void T1(p090l3.b1 b1Var, InterfaceC2247xd interfaceC2247xd) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, b1Var);
        A5.e(parcelJ0, interfaceC2247xd);
        O2(14, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void f0(InterfaceC2039td interfaceC2039td) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC2039td);
        O2(2, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final InterfaceC3113x0 zzc() {
        Parcel parcelN2 = n2(12, j0());
        InterfaceC3113x0 interfaceC3113x0Z3 = AbstractBinderC3111w0.z3(parcelN2.readStrongBinder());
        parcelN2.recycle();
        return interfaceC3113x0Z3;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1884qd
    public final void zzm(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(5, parcelJ0);
    }
}
