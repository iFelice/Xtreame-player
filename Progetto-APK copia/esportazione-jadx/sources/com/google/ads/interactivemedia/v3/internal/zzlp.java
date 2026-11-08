package com.google.ads.interactivemedia.v3.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public final class zzlp extends zzlg implements IInterface {
    public zzlp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.adshield.internal.IAdShieldCreator");
    }

    public final IBinder zze(R3.a aVar, R3.a aVar2, byte[] bArr) {
        Parcel parcelZza = zza();
        zzli.zzd(parcelZza, aVar);
        zzli.zzd(parcelZza, aVar2);
        parcelZza.writeByteArray(bArr);
        Parcel parcelZzu = zzu(3, parcelZza);
        IBinder strongBinder = parcelZzu.readStrongBinder();
        parcelZzu.recycle();
        return strongBinder;
    }
}
