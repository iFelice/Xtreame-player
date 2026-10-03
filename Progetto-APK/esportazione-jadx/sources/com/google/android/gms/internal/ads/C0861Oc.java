package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p113o3.C3158p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Oc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0861Oc extends AbstractC2276y5 implements InterfaceC0875Pc {
    public C0861Oc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdsServiceResponseListener", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0875Pc
    public final void F(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, parcelFileDescriptor);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0875Pc
    public final void w(C3158p c3158p) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3158p);
        O2(2, parcelJ0);
    }
}
