package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.vd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2143vd extends AbstractC2276y5 implements InterfaceC2247xd {
    public C2143vd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void c(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void d(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(2, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC2247xd
    public final void zzg() {
        O2(1, j0());
    }
}
