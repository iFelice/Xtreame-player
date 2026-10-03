package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cc, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1158cc extends AbstractC2276y5 implements InterfaceC1210dc {
    public C1158cc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void Q2(String[] strArr, int[] iArr, R3.a aVar) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeStringArray(strArr);
        parcelJ0.writeIntArray(iArr);
        A5.e(parcelJ0, aVar);
        O2(5, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void V(Intent intent) {
        Parcel parcelJ0 = j0();
        A5.c(parcelJ0, intent);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void V1(R3.a aVar, p097m3.a aVar2) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        A5.c(parcelJ0, aVar2);
        O2(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void w3(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(4, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1210dc
    public final void zzh() {
        O2(3, j0());
    }
}
