package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.Xd, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0988Xd extends AbstractC2276y5 implements InterfaceC1016Zd {
    public C0988Xd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1016Zd
    public final void t1(R3.a aVar, C1212de c1212de, InterfaceC0974Wd interfaceC0974Wd) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, c1212de);
        A5.e(parcelJ0, interfaceC0974Wd);
        O2(1, parcelJ0);
    }
}
