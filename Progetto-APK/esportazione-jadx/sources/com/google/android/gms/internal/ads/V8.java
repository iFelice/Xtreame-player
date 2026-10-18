package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class V8 extends AbstractC2276y5 implements X8 {
    public V8(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate", 0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void N0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(3, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void Z(R8 r8) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, r8);
        O2(8, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void d1(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(7, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final R3.a m(String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        return com.google.protobuf.U2.f(n2(2, parcelJ0));
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void m3(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void r0(R3.a aVar) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        O2(9, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void u1(R3.a aVar, String str) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeString(str);
        A5.e(parcelJ0, aVar);
        O2(1, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.X8
    public final void v1(R3.a aVar, int i8) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, aVar);
        parcelJ0.writeInt(i8);
        O2(5, parcelJ0);
    }
}
