package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class Hy extends AbstractC2276y5 implements Iy {
    @Override // com.google.android.gms.internal.ads.Iy
    public final void G(R3.b bVar, String str) {
        Parcel parcelJ0 = j0();
        A5.e(parcelJ0, bVar);
        parcelJ0.writeString(str);
        parcelJ0.writeString(null);
        O2(8, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void a() {
        O2(3, j0());
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzg(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(7, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzh(int[] iArr) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeIntArray(null);
        O2(4, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzi(int i8) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeInt(i8);
        O2(6, parcelJ0);
    }

    @Override // com.google.android.gms.internal.ads.Iy
    public final void zzj(byte[] bArr) {
        Parcel parcelJ0 = j0();
        parcelJ0.writeByteArray(bArr);
        O2(5, parcelJ0);
    }
}
