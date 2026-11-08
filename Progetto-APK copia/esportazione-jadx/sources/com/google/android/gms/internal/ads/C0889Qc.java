package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import p113o3.C3158p;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Qc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0889Qc extends AbstractC2276y5 implements InterfaceC0903Rc {
    public C0889Qc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void F(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, parcelFileDescriptor);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void s1(ParcelFileDescriptor parcelFileDescriptor, C0973Wc c0973Wc) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, parcelFileDescriptor);
        A5.c(parcelJ0, c0973Wc);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC0903Rc
    public final void w(C3158p c3158p) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, c3158p);
        O2(2, parcelJ0);
    }
}
