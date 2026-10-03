package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import p090l3.C3117z0;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.zb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C2349zb extends AbstractC2276y5 implements InterfaceC0651Ab {
    public C2349zb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0651Ab
    public final void c(C3117z0 c3117z0) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3117z0);
        O2(3, parcelJ0);
    }
}
