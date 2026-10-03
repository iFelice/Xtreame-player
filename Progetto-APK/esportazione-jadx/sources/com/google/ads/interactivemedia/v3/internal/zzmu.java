package com.google.ads.interactivemedia.v3.internal;

import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzmu extends zzlh implements zzmv {
    public zzmu() {
        super("com.google.android.gms.ads.signalsdk.INetworkRequestCallback");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlh
    public final boolean zza(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 == 1) {
            zznd zzndVar = (zznd) zzli.zza(parcel, zznd.CREATOR);
            zzli.zzb(parcel);
            zzc(zzndVar);
        } else {
            if (i8 != 2) {
                return false;
            }
            int i10 = parcel.readInt();
            zzli.zzb(parcel);
            zzb(i10);
        }
        return true;
    }
}
