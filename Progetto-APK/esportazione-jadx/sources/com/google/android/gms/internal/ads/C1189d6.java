package com.google.android.gms.internal.ads;

import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.d6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1189d6 extends AbstractC2276y5 implements InterfaceC1292f6 {
    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void U2(InterfaceC1137c6 interfaceC1137c6) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, interfaceC1137c6);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void b3(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1292f6
    public final void zzb(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(2, parcelJ0);
    }
}
