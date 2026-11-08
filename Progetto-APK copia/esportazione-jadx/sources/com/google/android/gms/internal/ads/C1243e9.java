package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.e9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1243e9 extends AbstractC2276y5 implements InterfaceC1295f9 {
    public C1243e9(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd", 0);
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final boolean H(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        Parcel parcelN2 = n2(10, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final boolean K(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        Parcel parcelN2 = n2(17, parcelJ0);
        boolean z7 = parcelN2.readInt() != 0;
        parcelN2.recycle();
        return z7;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final R3.a zzh() {
        return com.google.protobuf.U2.f(n2(9, j0()));
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1295f9
    public final String zzi() {
        Parcel parcelN2 = n2(4, j0());
        String string = parcelN2.readString();
        parcelN2.recycle();
        return string;
    }
}
