package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Fb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0726Fb extends AbstractC2276y5 implements InterfaceC0741Gb {
    public C0726Fb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0741Gb
    public final void c(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(4, parcelJ0);
    }
}
