package com.google.ads.interactivemedia.v3.internal;

import android.os.Bundle;
import android.os.Parcel;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzmw extends zzlh implements zzmx {
    public zzmw() {
        super("com.google.android.gms.ads.signalsdk.ISignalSdkCallback");
    }

    @Override // com.google.ads.interactivemedia.v3.internal.zzlh
    public final boolean zza(int i8, Parcel parcel, Parcel parcel2, int i9) {
        if (i8 == 1) {
            Bundle bundle = (Bundle) zzli.zza(parcel, Bundle.CREATOR);
            zzli.zzb(parcel);
            zzc(bundle);
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
