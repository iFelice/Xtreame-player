package com.google.ads.interactivemedia.v3.internal;

import android.os.IBinder;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzpk extends zzlg implements zzpm {
    public zzpk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zze(R3.a aVar, String str, String str2) {
        Parcel parcelZza = zza();
        zzli.zzd(parcelZza, aVar);
        parcelZza.writeString(str);
        parcelZza.writeString(null);
        zzv(8, parcelZza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zzf() {
        zzv(3, zza());
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zzg(int i8) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i8);
        zzv(7, parcelZza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zzh(int[] iArr) {
        Parcel parcelZza = zza();
        parcelZza.writeIntArray(null);
        zzv(4, parcelZza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zzi(int i8) {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i8);
        zzv(6, parcelZza);
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzpm
    public final void zzj(byte[] bArr) {
        Parcel parcelZza = zza();
        parcelZza.writeByteArray(bArr);
        zzv(5, parcelZza);
    }
}
